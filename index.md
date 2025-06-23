---
layout: page
title: "Hands-On Adversarial AI"
---

[![Sponsor](https://img.shields.io/badge/Sponsor-❤️-pink.svg)](https://github.com/sponsors/jadidbourbaki)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue.svg)](https://github.com/jadidbourbaki/adversarial-ai)

Designed to be used either as a stand-alone and self-contained course, or as a practical component of a more detailed university-level course on adversarial AI / machine learning and related topics.

[📚 Instructor Manual]({{ site.baseurl }}/instructor_manual/) • [🤝 Contributing Guide]({{ site.baseurl }}/contributing/) • [👥 Acknowledgements]({{ site.baseurl }}/authors/)

## 📋 Prerequisites

- Python 3.7+ experience
- Basic understanding of data structures and algorithms
- Calculus 1 and Introductory Probability

Note: no prior experience with machine learning or deep learning is required, we want to make these materials as self contained as possible.

## 🎓 Components

1. **[Part 1: Classical Adversarial Thinking]({{ site.baseurl }}/part1/)** - Hash function vulnerabilities and collision attacks
2. **[Part 2: Neural Network Fundamentals]({{ site.baseurl }}/part2/)** - Building CNNs with PyTorch  
3. **[Part 3: Adversarial Examples and Attacks]({{ site.baseurl }}/part3/)** - FGSM, PGD, and fooling deep learning models

## 🚀 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/jadidbourbaki/adversarial-ai.git
   cd adversarial-ai
   ```

2. **Choose your starting point**:
   - New to adversarial AI? Start with [Part 1]({{ site.baseurl }}/part1/)
   - Have ML background? Jump to [Part 3]({{ site.baseurl }}/part3/)
   - Instructor? Check the [Instructor Manual]({{ site.baseurl }}/instructors/)

3. **Set up your environment**:
   ```bash
   cd part1  # or part2, part3
   pip install -r requirements.txt
   jupyter notebook
   ```

## 📝 Citation

If you use these materials in your research or teaching, please cite:

```bibtex
@misc{hands-on-adversarial-ai,
  title={Hands-On Adversarial AI: Educational Materials},
  author={Maryam Tirmazi and Hayder Tirmazi},
  year={2025},
  publisher={GitHub},
  url={https://github.com/jadidbourbaki/adversarial-ai},
  note={Educational course materials for adversarial machine learning}
}
```

## ⚠️ Disclaimer

These materials are for educational purposes only. The goal is for students to understand and defend against security vulnerabilities in machine learning.

<style>
.course-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.course-part {
  border: 1px solid #e1e4e8;
  border-radius: 8px;
  padding: 1.5rem;
  background: #f8f9fa;
}

.course-part h3 {
  margin-top: 0;
  color: #0366d6;
}

.btn {
  display: inline-block;
  padding: 8px 16px;
  background: #0366d6;
  color: white;
  text-decoration: none;
  border-radius: 4px;
  margin-top: 1rem;
}

.btn:hover {
  background: #0256cc;
  color: white;
  text-decoration: none;
}
</style> 