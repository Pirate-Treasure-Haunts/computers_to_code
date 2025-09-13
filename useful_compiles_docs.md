





Example: macOS (both)

ua\_rng-1.7/

&nbsp; include/ua/\*.h

&nbsp; lib/libua\_rng.1.7.dylib

&nbsp; lib/libua\_rng.dylib      # symlink to versioned

&nbsp; lib/libua\_rng.a







Where to grab the files from your builds



After running our scripts:



MSYS2/MinGW build (your current one):



Headers: dist/include/ua/\*.h



Static: dist/lib/libua\_rng.a



Shared: dist/bin/libua\_rng.dll and dist/lib/libua\_rng.dll.a



MSVC build (Visual Studio generator):



Headers: dist-msvc/include/ua/\*.h



Static: dist-msvc/lib/ua\_rng.lib



Shared: dist-msvc/bin/ua\_rng.dll + dist-msvc/lib/ua\_rng.lib (import lib)



Linux/macOS builds (when you do them):



Headers: dist/include/ua/\*.h



Static: dist/lib/libua\_rng.a



Shared: dist/lib/libua\_rng.so\[.\*] (Linux) or dist/lib/libua\_rng\*.dylib (macOS)



Optional: dist/lib/pkgconfig/ua\_rng.pc



Copy those into your clean ua\_rng-1.7/ bundle as shown.



Minimal sets (if you want the absolute smallest)



Static-only distribution (no runtime DLL/so to ship):



include/ua/\*.h



lib/libua\_rng.a (Linux/macOS/MinGW) or lib/ua\_rng.lib (MSVC)



Shared-only distribution:



include/ua/\*.h



Windows: bin/ua\_rng.dll + lib/ua\_rng.lib



Linux: lib/libua\_rng.so (prefer versioned + symlink)



macOS: lib/libua\_rng.dylib (prefer versioned + symlink)



10-second sanity checks users can run



Windows/MSVC (shared):



Ensure ua\_rng.dll is on PATH or next to the exe.



Link against ua\_rng.lib (the import lib).



Linux (shared):



ldd your\_app | grep ua\_rng should resolve to your .so



Or set LD\_LIBRARY\_PATH=/path/to/ua\_rng-1.7/lib



macOS (shared):



otool -L your\_app shows @rpath/libua\_rng.dylib



Adjust rpath or use install\_name\_tool if needed.

