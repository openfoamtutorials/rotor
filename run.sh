#!/bin/sh

# Quit script if any step has error:
set -e

# Make the mesh:
gmsh mesh/main.geo -3 -format msh2 -o main.msh
# Convert the mesh to OpenFOAM format:
gmshToFoam main.msh -case case
# Adjust polyMesh/boundary:
changeDictionary -case case
# Finally, run the simulation:
simpleFoam -case case

