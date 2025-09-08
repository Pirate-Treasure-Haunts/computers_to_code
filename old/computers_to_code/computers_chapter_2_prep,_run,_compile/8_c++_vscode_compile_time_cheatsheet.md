
# c++_vscode_compile_time_cheatsheet


basic idea is compile command to run from as near to actual root as pos - [usually project root therefore]:

## are minimum compile command from scratch:

`mkdir build`
`cd build`
`cmake ..`
`cmake --build .`


## adv. compile command to run fom root:

`mkdir build`
`cd build`
`cmake -G "Visual Studio 17 2022" ..`
`cmake --build . --config Release`


alternative to `--build .` is simply `make` but this assumes/specifies use of [CMake] rather than `--build .` beeing flexible enough to accommodate a whole range of [x] and identify what is necessary. 


## extra fancy versions:

`cmake --build . --config Release	   [release squish]`

`cmake --build . --config debug --VERBASE-1 [debug verbose]`



## others:

`cmake --build . --target clean	  [clean the build]`

`cmake --build . --target install  [install - if set up target]`



[set up target means to have a properly set up `CMakeLists.txt` file]

