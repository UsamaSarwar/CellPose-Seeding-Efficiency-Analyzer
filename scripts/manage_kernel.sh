#!/bin/bash

# Kernel Management Script for CellPose GPU Environment

echo "🔧 CellPose Kernel Management"
echo "============================"

# Function to install/reinstall kernel
install_kernel() {
    echo "📦 Installing CellPose GPU Environment kernel..."
    cd "/Users/usamasarwar/My Drive/TESTS/LifeAnalytics Assesment"
    source .venv/bin/activate
    python -m ipykernel install --user --name=.venv --display-name="CellPose GPU Environment"
    echo "✅ Kernel installed successfully!"
}

# Function to list available kernels
list_kernels() {
    echo "📋 Available Jupyter kernels:"
    cd "/Users/usamasarwar/My Drive/TESTS/LifeAnalytics Assesment"
    source .venv/bin/activate
    jupyter kernelspec list
}

# Function to start Jupyter Lab
start_jupyter() {
    echo "🚀 Starting Jupyter Lab with CellPose environment..."
    cd "/Users/usamasarwar/My Drive/TESTS/LifeAnalytics Assesment"
    source .venv/bin/activate
    jupyter lab
}

# Function to test environment
test_environment() {
    echo "🧪 Testing CellPose environment..."
    cd "/Users/usamasarwar/My Drive/TESTS/LifeAnalytics Assesment"
    source .venv/bin/activate
    python test_gpu_setup.py
}

# Main menu
echo ""
echo "Choose an option:"
echo "1) Install/Reinstall kernel"
echo "2) List available kernels"
echo "3) Start Jupyter Lab"
echo "4) Test environment"
echo "5) Exit"
echo ""

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        install_kernel
        ;;
    2)
        list_kernels
        ;;
    3)
        start_jupyter
        ;;
    4)
        test_environment
        ;;
    5)
        echo "👋 Goodbye!"
        exit 0
        ;;
    *)
        echo "❌ Invalid option. Please choose 1-5."
        ;;
esac
