#!/bin/bash
# Instructor Setup Script
# This script helps instructors unlock the encrypted solutions using the GitHub secret

set -e

echo "🔑 Instructor Setup for Adversarial AI Course"
echo "=============================================="

# Check if git-crypt is installed
if ! command -v git-crypt &> /dev/null; then
    echo "❌ git-crypt is not installed!"
    echo ""
    echo "Please install git-crypt first:"
    echo "  macOS:    brew install git-crypt"
    echo "  Ubuntu:   sudo apt-get install git-crypt"
    echo "  Windows:  Download from https://github.com/AGWA/git-crypt/releases"
    exit 1
fi

echo "✅ git-crypt is installed"

# Check if we're in the right repository
if [[ ! -f ".gitattributes" ]] || ! grep -q "git-crypt" .gitattributes; then
    echo "❌ This doesn't appear to be the adversarial-ai repository with git-crypt setup"
    echo "Please run this script from the root of the adversarial-ai repository"
    exit 1
fi

echo "✅ Found adversarial-ai repository with git-crypt configuration"

# Method 1: Use provided base64 key
echo ""
echo "🔐 Decoding instructor key..."
echo "If you have the base64-encoded key from GitHub Action, paste it below:"
echo "You can paste multiple lines - press Ctrl+D when done (or Enter twice for empty input)"
echo ""

# Read multi-line input
BASE64_KEY=""
echo "Paste the key (including all lines between BEGIN/END markers):"
while IFS= read -r line; do
    if [[ -z "$line" && -z "$BASE64_KEY" ]]; then
        break  # Empty input, skip
    fi
    # Skip marker lines
    if [[ "$line" == *"BEGIN INSTRUCTOR KEY"* ]] || [[ "$line" == *"END INSTRUCTOR KEY"* ]]; then
        continue
    fi
    BASE64_KEY="${BASE64_KEY}${line}"
done

if [[ -n "$BASE64_KEY" ]]; then
    echo "$BASE64_KEY" | base64 -d > instructor-key.key 2>/dev/null
    if [[ $? -eq 0 ]]; then
        echo "✅ Key decoded and saved as instructor-key.key"
    else
        echo "❌ Failed to decode key. Please check the format."
        exit 1
    fi
fi

# Check if key file exists
if [[ ! -f "instructor-key.key" ]]; then
    echo "❌ No instructor-key.key file found"
    echo ""
    echo "Please either:"
    echo "1. Paste the base64 key when prompted above, or"
    echo "2. Place the instructor-key.key file in this directory"
    exit 1
fi

echo "✅ Found instructor key file"

# Unlock the repository
echo ""
echo "🔓 Unlocking encrypted solutions..."
if git-crypt unlock instructor-key.key; then
    echo "✅ Repository unlocked successfully!"
    echo ""
    echo "🎉 You now have access to:"
    echo "   • assignment1_solved.ipynb"
    echo "   • assignment2_solved.ipynb" 
    echo "   • assignment3_solved.ipynb"
    echo ""
    echo "📚 Students should use:"
    echo "   • assignment1.ipynb (default versions)"
    echo "   • recitation1.ipynb (tutorials)"
    echo ""
    echo "🔒 To lock the repository again: git-crypt lock"
else
    echo "❌ Failed to unlock repository"
    echo "Please check that you have the correct instructor key"
    exit 1
fi 