# CPS-Project
Course project for Autonomous Cyber-Physical Systems (CS659A) - Group 14   

This project aims to provide a platform for design, control, and analysis of autonomous drone swarms. It takes a problem environment and task as inputs, calculates the path for each drone in the swarm, and performs optimal multi-agent task assignment. It allows 3-D visualization of the mission in Simulink 3-D animation. Currently, there are separate programs for each component but we plan we integrate everything into a single MATLAB app.   


1. Download or clone this repository.
2. Generate an image (single colour) of the problem environment or use the image 'Surrounding2.png' in the Path Planning folder
3. Go to Path Planning folder and open `prmcalc.m`
4. Set the grid resolution for the image and the location of the origin. Define the start array (starting position of each drone - one per row) and goal locations for individual goals. Define variables for each drone to source path.
    > If using the default problem defined in 'Surrounding2.png', just run `prmcalc.m`
    > The path of drone `i` to sources N, S, E, W are saved as `pathNi`, `pathSi`, etc.
6. This will save the path for each drone to each source in the defined variables.
7. Now take the mean path length (steps to goal) for each source and create an array of source travel times, say `run_times`
8. Define an array (`packages`) for the number of packcages at each source
9. Go to planning algorithm and call the 'Assign' function defined in `Assign.m` with the following arguments:
  * `m` - Number of sources
  * `run_times` - travel time to each source
  * `packages` - Number of packages at each source
  * `int_time` - inter-source travel time
  * `n` - Number of drones
10. This will return an array `assignment` having `n` columns where each column holds the source number assigned to the corresponding drone in the i<sup>th</sup> iteration
 
