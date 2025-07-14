# 6_preparing_a_directory_space_for_C++_builds


## Clear Build Directory:

`cd C:\woflang\build`
`del /Q /S /F *`
`rmdir /Q /S .`
`mkdir C:\woflang\build`
`cd C:\woflang\build`

Deletes all files and subdirectories in C:\woflang\build, including CMakeCache.txt, .tlog, and .pdb.


## Clear CMake Global Cache:

CMake stores a global cache in C:\Users\<YourUsername>\AppData\Local\CMake.

`rmdir /Q /S C:\Users\%USERNAME%\AppData\Local\CMake`

Replace %USERNAME% with your Windows username if needed.


## Clear Visual Studio Cache:

If using Visual Studio IDE, clear its cache.

`rmdir /Q /S C:\woflang\.vs`
`rmdir /Q /S "%USERPROFILE%\AppData\Local\Microsoft\VisualStudio\17.0*"`

Deletes .vs folder (hidden in C:\woflang) and VS 2022 temp files.


## Clear Windows Temp Files:

`del /Q /S /F %TEMP%\*`

Clears C:\Users\<YourUsername>\AppData\Local\Temp to remove any stray build files.


## Verify Clean Slate:

`dir C:\woflang\build`
`dir C:\Users\%USERNAME%\AppData\Local\CMake`
`dir C:\woflang\.vs`

Ensure build is empty, and CMake/VS caches are gone.

#######


## clearing /build etc. :

`cd C:\woflang\build`
`del /Q /S /F *`
`rmdir /Q /S .`
`mkdir C:\woflang\build`
`cd C:\woflang\build`
`cmake .. -G "Visual Studio 17 2022" -A x64`
`cmake --build . --config Debug --verbose > build_log_verbose.txt`


#######


