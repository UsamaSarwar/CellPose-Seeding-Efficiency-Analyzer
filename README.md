# Cell Seeding Efficiency Analysis

A comprehensive analysis pipeline for cell seeding efficiency using advanced computer vision and machine learning techniques.

## Overview

This project performs automated cell segmentation, classification, and measurement of cell seeding efficiency using Cellpose for cell detection and custom algorithms for cell type classification. The analysis pipeline processes time-lapse video data to track cell behavior over time.

## Features

- **GPU-Accelerated Processing**: Supports Apple Silicon MPS and CUDA GPU acceleration
- **Real-time Progress Tracking**: Live progress bars with time estimation
- **Automated Cell Classification**: Classifies cells into 4 categories:
  - Seed Cells (circular cells in initial frames)
  - Fixed Cells (adherent cells around midpoint)
  - Dead Cells (circular dead cells after fixation)
  - Debris (small fragments and non-cellular objects)
- **Comprehensive Output**: Generates videos, overlays, reports, and quantitative data
- **Statistical Analysis**: Automated plotting and data visualization

## Project Structure

```
├── cell_seeding_efficiency_analysis.ipynb  # Main analysis notebook
├── data/                                    # Input data
│   └── hela_cell_seeding_timelapse.avi     # Sample time-lapse video
├── results/                                 # Generated analysis results
│   ├── hela_cell_analysis_masks.avi        # Segmentation masks video
│   ├── hela_cell_analysis_overlay.avi      # Overlay visualization
│   ├── hela_cell_analysis_report.mp4       # Analysis report video
│   ├── hela_cell_analysis_measurements.csv # Quantitative data
│   └── hela_cell_analysis_measurements_analysis_plots.png # Statistical plots
├── scripts/                                 # Utility scripts
│   ├── activate_env.sh                     # Environment activation
│   └── manage_kernel.sh                    # Jupyter kernel management
├── docs/                                    # Documentation
│   └── ENVIRONMENT_SETUP.md               # Environment setup guide
└── README.md                               # This file
```

## Quick Start

### Prerequisites

- Python 3.8+
- CUDA-compatible GPU (optional but recommended) or Apple Silicon Mac
- Virtual environment with required packages

### Installation

1. **Clone the repository**:

   ```bash
   git clone <repository-url>
   cd cell-seeding-analysis
   ```

2. **Set up the environment**:

   ```bash
   chmod +x scripts/activate_env.sh
   ./scripts/activate_env.sh
   ```

3. **Install Jupyter kernel**:
   ```bash
   chmod +x scripts/manage_kernel.sh
   ./scripts/manage_kernel.sh
   ```

### Usage

1. **Open the analysis notebook**:

   ```bash
   jupyter lab cell_seeding_efficiency_analysis.ipynb
   ```

2. **Select the correct kernel**: Choose "CellPose GPU Environment" from the kernel selector

3. **Run the analysis**: Execute all cells in sequence

## Output Files

The analysis generates several types of output files:

- **Videos**:

  - `*_masks.avi`: Colored segmentation masks
  - `*_overlay.avi`: Original video with colored overlays
  - `*_report.mp4`: Side-by-side comparison video

- **Data**:
  - `*_measurements.csv`: Quantitative measurements for each frame
  - `*_analysis_plots.png`: Statistical visualization plots

## Performance

- **GPU Acceleration**: 10-50x faster processing with GPU support
- **Real-time Tracking**: Live progress updates with time estimation
- **Optimized Pipeline**: Efficient processing of large video files

## Technical Details

### Cell Classification Algorithm

The pipeline uses a scoring system based on multiple morphological features:

- **Circularity**: Shape roundness measurement
- **Aspect Ratio**: Width-to-height ratio
- **Solidity**: Ratio of object area to convex hull area
- **Intensity**: Mean pixel brightness
- **Temporal Context**: Frame position in sequence

### Hardware Requirements

- **Minimum**: CPU-only processing (slower)
- **Recommended**:
  - Apple Silicon Mac with 16GB+ RAM
  - Or NVIDIA GPU with 8GB+ VRAM
  - 50GB+ free disk space

## Troubleshooting

See `docs/ENVIRONMENT_SETUP.md` for detailed troubleshooting guide.

## License

This project is licensed under the MIT License.

## Citation

If you use this code in your research, please cite:

```bibtex
@software{cell_seeding_analysis,
  title={CellPose Seeding Efficiency Analyzer},
  author={Usama Sarwar},
  year={2025},
  url={https://github.com/UsamaSarwar/CellPose-Seeding-Efficiency-Analyzer}
}
```
