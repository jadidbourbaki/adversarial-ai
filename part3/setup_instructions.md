# Part 3 Setup Instructions

## Environment Setup for Adversarial Examples and Attacks

### Prerequisites

**Important**: You must complete Part 2 first! You'll need:
- A trained CNN model from Part 2
- Understanding of PyTorch gradients and backpropagation
- Basic knowledge of image classification

### Option 1: Using pip (Recommended)

```bash
# Navigate to part3 directory
cd part3

# Create virtual environment
python -m venv part3_env

# Activate environment
# On macOS/Linux:
source part3_env/bin/activate
# On Windows:
part3_env\Scripts\activate

# Install requirements
pip install -r requirements.txt

# Start Jupyter
jupyter notebook
```

### Option 2: Using Conda

```bash
# Navigate to part3 directory
cd part3

# Create conda environment
conda create -n part3_env python=3.9

# Activate environment
conda activate part3_env

# Install PyTorch (with CUDA if available)
# For CPU only:
conda install pytorch torchvision cpuonly -c pytorch
# For CUDA (if you have a GPU):
conda install pytorch torchvision pytorch-cuda=11.8 -c pytorch -c nvidia

# Install other requirements
pip install matplotlib seaborn jupyter ipykernel tqdm scikit-learn
pip install foolbox adversarial-robustness-toolbox

# Start Jupyter
jupyter notebook
```

### Option 3: Google Colab

If you prefer to run in the cloud:

1. Go to [Google Colab](https://colab.research.google.com/)
2. Upload the notebook files
3. Install additional packages:
```python
!pip install foolbox adversarial-robustness-toolbox
```

## Copying Your Part 2 Model

You'll need your trained model from Part 2. Copy it to Part 3:

```bash
# From part3 directory, copy the model file
cp ../part2/best_mnist_model.pth ./
# Or copy the complete model info
cp ../part2/best_mnist_model_complete.pth ./
```

## Verifying Installation

Run this test code to verify everything works:

```python
import torch
import torchvision
import matplotlib.pyplot as plt
import numpy as np

# Test basic adversarial functionality
print(f"PyTorch version: {torch.__version__}")
print(f"CUDA available: {torch.cuda.is_available()}")

# Test gradient computation
x = torch.randn(1, 1, 28, 28, requires_grad=True)
y = x.sum()
y.backward()
print(f"Gradient computation works: {x.grad is not None}")

# Test adversarial libraries
try:
    import foolbox as fb
    print(f"Foolbox version: {fb.__version__}")
except ImportError:
    print("Warning: Foolbox not installed")

try:
    from art.attacks.evasion import FastGradientMethod
    print("✅ Adversarial Robustness Toolbox (ART) working")
except ImportError:
    print("Warning: ART not installed (optional)")

print("\n✅ Basic setup verification complete!")
```

## Hardware Requirements

- **Minimum**: Any computer with 4GB RAM
- **Recommended**: 8GB RAM, modern CPU
- **Optional**: NVIDIA GPU for faster attack generation (not required)

## Troubleshooting

### Common Issues:

1. **Missing Part 2 Model**:
   - Ensure you've completed Part 2 and saved your model
   - Check that the model file exists in part2 directory

2. **Foolbox Installation Issues**:
   - Try: `pip install foolbox==3.3.3`
   - Foolbox requires specific PyTorch versions

3. **ART Installation Issues**:
   - ART is optional for this course
   - You can complete assignments without it

4. **GPU Memory Issues**:
   - Reduce batch sizes for attack generation
   - Use CPU for adversarial example generation if needed

5. **Gradient Computation Errors**:
   ```python
   # Ensure requires_grad=True for input tensors
   x = x.requires_grad_(True)
   ```

### Attack-Specific Issues:

1. **FGSM Not Working**:
   - Check that input tensors have `requires_grad=True`
   - Verify model is in eval mode: `model.eval()`

2. **Perturbations Too Large**:
   - Adjust epsilon (perturbation budget) parameters
   - Use proper normalization for input images

3. **Low Attack Success Rate**:
   - Increase number of attack iterations
   - Try different epsilon values
   - Ensure correct loss function for attacks

### Getting Help:

- Check PyTorch adversarial examples documentation
- Foolbox documentation: https://foolbox.readthedocs.io/
- Course forum for specific issues
- Office hours for technical support

## What's Next?

Once setup is complete:
1. Copy your Part 2 trained model to this directory
2. Open `recitation3.ipynb` for the tutorial
3. Work through adversarial attack demonstrations
4. Complete `assignment3.ipynb` exercises

## Important Notes

⚠️ **Model Compatibility**: Ensure your Part 2 model architecture matches the loading code
🔒 **Ethical Use**: Only use adversarial examples for educational and defensive research
📊 **Performance**: Adversarial example generation can be computationally intensive

Ready to break some neural networks? Let's get started! 🚀 