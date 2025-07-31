#!/bin/bash

# Convenience script to activate the CellPose environment and launch Jupyter
echo "🔬 Activating CellPose GPU Environment..."

# Navigate to project directory
cd "/Users/usamasarwar/My Drive/TESTS/LifeAnalytics Assesment"

# Activate virtual environment
source .venv/bin/activate

# Show environment info
echo "✅ Environment activated!"
echo "📍 Python path: $(which python)"
echo "🧮 PyTorch version: $(python -c 'import torch; print(torch.__version__)')"
echo "🚀 MPS available: $(python -c 'import torch; print(torch.backends.mps.is_available())')"
echo "🔬 Cellpose version: $(python -c 'import cellpose; print(cellpose.version)')"

echo ""
echo "To launch Jupyter Lab with GPU/MPS support:"
echo "jupyter lab"
echo ""
echo "Or to start Jupyter Notebook:"
echo "jupyter notebook"
echo ""
echo "The CellPose GPU Environment kernel is now available in Jupyter!"
