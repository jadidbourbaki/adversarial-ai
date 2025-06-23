# Assignment 1: Hash Collision Attacks - Setup Instructions

## Prerequisites

- Python 3.7 or higher
- pip (Python package manager)

## Setup Options

### Option 1: Using pip (Recommended)

1. **Clone/Download the assignment files**
   ```bash
   # If you have the files locally, navigate to the directory
   cd adversarial-ai-assignments
   ```

2. **Create a virtual environment (recommended)**
   ```bash
   # Create virtual environment
   python -m venv part1_env
   
   # Activate it
   # On macOS/Linux:
   source part1_env/bin/activate
   # On Windows:
   part1_env\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Start Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

5. **Open the assignment**
   - In your browser, navigate to the notebooks (the files ending with .ipynb)
   - Click to open it

### Option 2: Using Anaconda/Miniconda

1. **Install Anaconda** (if not already installed)
   - Download from: https://www.anaconda.com/products/distribution

2. **Create a new environment**
   ```bash
   conda create -n hash_assignment python=3.9
   conda activate hash_assignment
   ```

3. **Install dependencies**
   ```bash
   conda install jupyter matplotlib numpy
   ```

4. **Start Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

### Option 3: Using Google Colab (No local setup required)

1. **Upload the notebook**
   - Go to https://colab.research.google.com/
   - Click "Upload" and select `assignment1_hash_collisions.ipynb`

2. **Run the first cell**
   - The notebook will automatically install required packages
   - All dependencies are pre-installed in Colab

## Verifying Your Setup

Run this test code in a Python environment to verify everything works:

```python
import hashlib
import time
import matplotlib.pyplot as plt
import numpy as np
from collections import defaultdict
import random
import string

print("✅ All required packages imported successfully!")
print("🚀 You're ready to start the assignment!")
```

## Troubleshooting

### Common Issues

1. **Module not found errors**
   ```bash
   # Make sure you activated your virtual environment
   # Then reinstall packages
   pip install -r requirements.txt
   ```

2. **Jupyter not starting**
   ```bash
   # Try installing jupyter explicitly
   pip install jupyter notebook
   ```

3. **Matplotlib plots not showing**
   - In Jupyter: Add `%matplotlib inline` at the top of your notebook
   - Or run: `plt.ion()` before plotting

4. **Permission errors on Windows**
   - Run command prompt as Administrator
   - Or use PowerShell

### Getting Help

If you encounter issues:
1. Check that Python 3.7+ is installed: `python --version`
2. Ensure pip is updated: `pip install --upgrade pip`
3. Try creating a fresh virtual environment
4. Ask for help with specific error messages

Good luck with your assignment! 🎯 