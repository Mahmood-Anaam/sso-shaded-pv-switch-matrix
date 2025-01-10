# SSO-Shaded-PV-Switch-Matrix

This repository contains the implementation of a Salp Swarm Optimizer (SSO) to optimize the switching matrix for shaded photovoltaic (PV) arrays, improving power output and efficiency.

## Project Structure
- **`main.m`**: Main script to run the optimization and analyze results.
- **`getInfo.m`**: Retrieves and calculates key metrics like power and current differences.
- **`SSA.m`**: Implementation of the Salp Swarm Algorithm (SSA).
- **`objective_function.m`**: Defines the fitness function for optimization.
- **`randomize_matrix_vertically.m`**: Function to randomize matrix rows for initial setup.
- **`initialization.m`**: Initializes parameters and data for the simulation.
- **`DisplayResultsDiaryFile.txt`**: Log file to store detailed outputs from the simulation.

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/sso-shaded-pv-switch-matrix.git
   ```
2. Open MATLAB and navigate to the project directory.
3. Run the main script:
   ```matlab
   main
   ```

## Output
- **Optimized PV Array Configuration**: Displays the rearranged PV array for maximum power.
- **Power Enhancement Percentage**: Quantifies the improvement in power output.
- **Convergence Curve**: Visualization of the optimization progress over iterations.



