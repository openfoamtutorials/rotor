# rotor

This utilizes the OpenFOAM rotorDisk model, which is a simple BEM on cells arranged in a disk.

To get proper power and thrust output, the source requires a little bit of modification. Change and compile via:
sudo cp src/new.C $FOAM_SRC/fvOptions/sources/derived/rotorDiskSource/rotorDiskSourceTemplates.C
sudo -s
cd $FOAM_SRC/fvOptions
wmake
exit

You can see the difference between the new and old source via:
diff src/new.C src/original.C

Mesh and run the simulation via:
./run.sh

You can start over the simulation by deleting generated files via:
./clean.py

