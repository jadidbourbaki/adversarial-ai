# 🔒 Instructor Manual

This repository uses **git-crypt** to encrypt solution files while keeping the public assignments accessible to students. Students can access all original assignments. All `*_solved.ipynb` files are encrypted and only accessible to instructors. Instructors need the `instructor-key.key` file to decrypt solutions.

## 🔑 Setting Up Access

### Option 1: Get Key via GitHub Action (Recommended for Collaborators)

If you have been added as a collaborator to this repository:

1. **Get the instructor key**
   - Go to the repository on GitHub
   - Click **Actions** tab
   - Select **Get Instructor Key** workflow
   - Click **Run workflow**
   - Enter a reason (e.g., "Setting up for teaching")
   - Click **Run workflow** button
   - Wait for the workflow to complete and check the logs for the base64 key

2. **Install git-crypt**
   ```bash
   # macOS
   brew install git-crypt
   
   # Ubuntu/Debian  
   sudo apt-get install git-crypt
   
   # Windows: Download from https://github.com/AGWA/git-crypt/releases
   ```

3. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/adversarial-ai.git
   cd adversarial-ai
   ```

4. **Run the setup script**
   ```bash
   ./instructor-setup.sh
   ```

5. **When prompted, paste the base64 key from the GitHub Action**

### Option 2: Request Key via Email

If you don't have collaborator access:
- Email us or create an issue with your institutional email address
- We will either add you as a collaborator or email you the private key directly 

### Verify Access

```bash
# Check encryption status
git-crypt status

# You should see solved files marked as "encrypted" but accessible
```

## 📖 Using the System

### For Students (Public Access)

Students should use:
- `assignment1.ipynb` (default assignment version without solutions)
- `assignment2.ipynb` 
- `assignment3.ipynb`
- `recitation1.ipynb` (tutorials - complete content visible)
- etc.

The assignment files contain:
- Complete problem statements
- Setup code
- Empty solution cells with `# TODO: Implement your solution here`
- No solution code or answers

### For Instructors (With Key)

After unlocking with the key, you can access:
- `assignment1_solved.ipynb` - Complete assignment solutions with explanations
- `recitation1.ipynb` - Tutorial content (always public, no encryption needed)

## 🔄 Updating Assignments

The current structure is:
- `assignment1.ipynb` - Student version (public)
- `assignment1_solved.ipynb` - Instructor version (encrypted)

To update assignments:

1. **Edit the student version**: Make changes to `assignment1.ipynb` 
2. **Update the solved version**: Copy and add solutions to `assignment1_solved.ipynb`
3. **Commit changes**:
   ```bash
   git add .
   git-crypt status -f  # Re-encrypt solved versions if needed
   git commit -m "Update assignments"
   ```


To verify encryption status:
   ```bash
   git-crypt status
   ```

To lock repository when not needed*:
   ```bash
   git-crypt lock
   ```

## 🔧 Troubleshooting

### "Command not found: git-crypt"
Install git-crypt using your package manager (see Method 1, Step 1).

### "Cannot unlock - wrong key"
Ensure you have the correct `instructor-key.key` file. Feel free to email us with the issue.

### Setup script fails
1. Make sure you're in the repository root directory
2. Check that git-crypt is installed
3. Verify the base64 key is complete (no line breaks)
4. Try running with `bash instructor-setup.sh` if execution fails

### "File is not encrypted"
Check if the file pattern matches `.gitattributes`:
```bash
cat .gitattributes
```

### "Staged/committed version is NOT ENCRYPTED"
Run:
```bash
git-crypt status -f
git commit -m "Re-encrypt files"
```

## 📞 Support

For technical issues with the encryption system, contact:
- Repository maintainer
- Course technical support
- Check git-crypt documentation: https://github.com/AGWA/git-crypt

**⚠️ Important**: Never share the instructor key with students or commit it to the repository! 