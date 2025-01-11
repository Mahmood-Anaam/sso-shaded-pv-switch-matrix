# SSO-Shaded-PV-Switch-Matrix

This repository implements the **Salp Swarm Optimizer (SSA)** to optimize the switching matrix of shaded photovoltaic (PV) arrays, enhancing power output and efficiency under partial shading conditions.

## Features
- **Optimization Algorithm**: Implements the SSA for dynamic reconfiguration of PV arrays.
- **Performance Metrics**: Calculates power enhancement and analyzes configurations.
- **Visualization**: Convergence curves and matrix arrangement comparisons.

## Directory Structure
```
Mahmood-Anaam-sso-shaded-pv-switch-matrix/
├── README.md                # Project documentation
└── src/                     # Source code files
    ├── DisplayResultsDiaryFile.txt  # Logs simulation results
    ├── SSA.m                # Salp Swarm Algorithm implementation
    ├── getInfo.m            # Retrieves power metrics and configurations
    ├── initialization.m     # Initializes search agents
    ├── main.m               # Main script to run the simulation
    ├── objective_function.m # Defines the fitness function
    └── randomize_matrix_vertically.m # Randomizes matrix rows
```

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/Mahmood-Anaam/sso-shaded-pv-switch-matrix.git
   ```
2. Open MATLAB and navigate to the `src/` directory.
3. Run the main script:
   ```matlab
   main.m
   ```

## Outputs
- **Optimized PV Array Configuration**: Displays the rearranged PV matrix.
- **Power Enhancement Percentage**: Quantifies the improvement in power output.
- **Convergence Curve**: Tracks the optimization progress.
- **Visualization**: Provides a comparison of original and optimized configurations.


