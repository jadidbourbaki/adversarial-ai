# Contributing to Hands-On Adversarial AI

Thank you for your interest in contributing to the Adversarial AI course materials! This repository contains educational content for learning about adversarial machine learning and security vulnerabilities.

## 🤝 Types of Contributions

We welcome several types of contributions:

### 📚 **Educational Content**
- Improving assignment instructions and clarity
- Adding new exercises or examples
- Enhancing recitation materials
- Creating additional tutorials or explanations

### 🐛 **Bug Fixes**
- Fixing code errors in assignments or recitations
- Correcting typos and formatting issues
- Resolving dependency or setup problems

### 📖 **Documentation**
- Improving setup instructions
- Adding clarifications to existing documentation
- Creating new guides or FAQs

### 🔧 **Infrastructure**
- Improving the git-crypt encryption system
- Enhancing CI/CD workflows
- Adding new tools or automation

### 🎓 **New Course Content**
- Proposing new parts or modules
- Adding advanced topics
- Creating supplementary materials

## 🚀 Getting Started

### Prerequisites

- Python 3.7+ with Jupyter notebook support
- Git and basic Git knowledge
- Familiarity with machine learning concepts
- For instructors: git-crypt access (see [INSTRUCTOR_MANUAL.md](INSTRUCTOR_MANUAL.md))

### Initial Setup

1. **Fork the repository**
   ```bash
   # Fork on GitHub, then clone your fork
   git clone https://github.com/YOUR_USERNAME/adversarial-ai.git
   cd adversarial-ai
   ```

2. **Set up the upstream remote**
   ```bash
   git remote add upstream https://github.com/ORIGINAL_OWNER/adversarial-ai.git
   ```

3. **Install dependencies**
   ```bash
   # For each part you're working on
   cd part1  # or part2, part3
   pip install -r requirements.txt
   ```

## 🛠️ Development Setup

### Working with Jupyter Notebooks

1. **Start Jupyter**
   ```bash
   jupyter notebook
   ```

2. **Test your changes**
   - Run all cells to ensure they execute without errors
   - Verify that outputs are appropriate for students
   - Check that solutions work correctly (if you have access)

### Environment Setup

We recommend using virtual environments:

```bash
# Create virtual environment
python -m venv adversarial_ai_env
source adversarial_ai_env/bin/activate  # On Windows: adversarial_ai_env\Scripts\activate

# Install dependencies
pip install -r part1/requirements.txt
pip install -r part2/requirements.txt
pip install -r part3/requirements.txt
```

## 📝 Contribution Guidelines

When creating or modifying assignments:

1. **Student Version (`assignment*.ipynb`)**
   - Include complete problem statements
   - Provide setup code and imports
   - Add TODO comments where students should implement solutions
   - Remove all solution code
   - Include expected output examples where helpful

2. **Instructor Version (`assignment*_solved.ipynb`)**
   - Include complete solutions with explanations
   - Add comments explaining the approach
   - Include common mistakes students might make
   - Provide grading rubrics or key points

3. **Recitations (`recitation*.ipynb`)**
   - Complete working examples
   - Step-by-step explanations
   - Interactive demonstrations
   - No solutions to hide (always public)

## 🔒 Working with Encrypted Solutions

### For Contributors Without Instructor Access

If you don't have access to encrypted solutions:

1. **Focus on public content**
   - Improve student-facing assignments
   - Enhance recitation materials
   - Update documentation

2. **Propose changes clearly**
   - Describe what you think the solution should be
   - Explain your reasoning
   - Let instructors verify and implement

### For Contributors With Instructor Access

If you have git-crypt access:

1. **Unlock the repository**
   ```bash
   # Use the GitHub Action or direct key
   ./instructor-setup.sh
   ```

2. **Make changes to both versions**
   - Update student version: `assignment1.ipynb`
   - Update solved version: `assignment1_solved.ipynb`
   - Keep them in sync

3. **Test both versions**
   - Verify student version has no solutions
   - Confirm solved version works correctly

4. **Lock when done**
   ```bash
   git-crypt lock
   ```

## 📤 Submitting Changes

### Pull Request Process

1. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**
   - Follow the guidelines above
   - Test thoroughly
   - Update documentation if needed

3. **Commit with clear messages**
   ```bash
   git add .
   git commit -m "Add: Clear description of what you added/changed"
   ```

4. **Push and create PR**
   ```bash
   git push origin feature/your-feature-name
   ```
   Then create a pull request on GitHub.

### PR Guidelines

#### **Title Format**
- `Add: [description]` for new features
- `Fix: [description]` for bug fixes
- `Update: [description]` for improvements
- `Docs: [description]` for documentation

#### **Description Should Include**
- What changes you made and why
- How to test the changes
- Any breaking changes
- Screenshots if relevant

#### **Before Submitting**
- [ ] Code runs without errors
- [ ] All notebooks execute cleanly
- [ ] Documentation is updated
- [ ] No sensitive information is exposed
- [ ] Both student and instructor versions are updated (if applicable)

Thank you for helping make adversarial AI education better for everyone! 🚀 