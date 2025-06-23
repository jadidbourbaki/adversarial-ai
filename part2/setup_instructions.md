# Part 2 Setup Instructions

## Environment Setup for Neural Networks with PyTorch

### Option 1: Using pip (Recommended)

```bash
# Navigate to part2 directory
cd part2

# Create virtual environment
python -m venv part2_env

# Activate environment
# On macOS/Linux:
source part2_env/bin/activate
# On Windows:
part2_env\Scripts\activate

# Install requirements
pip install -r requirements.txt

# Start Jupyter
jupyter notebook
```

### Option 2: Using Conda

```bash
# Navigate to part2 directory
cd part2

# Create conda environment
conda create -n part2_env python=3.9

# Activate environment
conda activate part2_env

# Install PyTorch (with CUDA if available)
# For CPU only:
conda install pytorch torchvision cpuonly -c pytorch
# For CUDA (if you have a GPU):
conda install pytorch torchvision pytorch-cuda=11.8 -c pytorch -c nvidia

# Install other requirements
pip install matplotlib seaborn jupyter ipykernel tqdm

# Start Jupyter
jupyter notebook
```

### Option 3: Google Colab

If you prefer to run in the cloud:

1. Go to [Google Colab](https://colab.research.google.com/)
2. Upload the notebook files
3. PyTorch is pre-installed, but you may need:
```python
!pip install seaborn tqdm
```

## Verifying Installation

Run this test code to verify everything works:

```python
import torch
import torchvision
import matplotlib.pyplot as plt
import numpy as np

print(f"PyTorch version: {torch.__version__}")
print(f"CUDA available: {torch.cuda.is_available()}")

# Test basic tensor operations
x = torch.randn(3, 3)
y = torch.randn(3, 3)
z = x @ y
print(f"Matrix multiplication works: {z.shape}")

# Test MNIST data loading
from torchvision import datasets, transforms
transform = transforms.ToTensor()
mnist = datasets.MNIST('./data', train=True, download=True, transform=transform)
print(f"MNIST dataset loaded: {len(mnist)} samples")
```

## Hardware Requirements

- **Minimum**: Any computer with 4GB RAM
- **Recommended**: 8GB RAM, modern CPU
- **Optional**: NVIDIA GPU for faster training (not required for MNIST)

## Troubleshooting

### Common Issues:

1. **PyTorch Installation Problems**:
   - Try installing CPU-only version first
   - Check Python version compatibility (3.8-3.11 recommended)

2. **CUDA Issues**:
   - For this course, CPU is sufficient for MNIST
   - GPU will speed up training but isn't necessary

3. **Memory Issues**:
   - Reduce batch size if running out of memory
   - Close other applications while training

4. **Jupyter Kernel Issues**:
   ```bash
   python -m ipykernel install --user --name=part2_env
   ```

### Getting Help:

- Check PyTorch documentation: https://pytorch.org/docs/
- Common error solutions in course forum
- Office hours for technical support

## What's Next?

Once setup is complete:
1. Open `recitation2.ipynb` for the tutorial
2. Work through the guided examples
3. Complete `assignment2.ipynb` exercises

The MNIST dataset will download automatically (~10MB) when first used. 