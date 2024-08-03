# Superbuild example with Qt6

This example demonstrates how to use CMake to build a superbuild project that includes a Qt6 application. Since Qt6 is not trivial to build, this example works best on linux or by using the supplied docker container.

## Building for Windows 

As Qt6 only supports Ninja for building on Windows, you will need to install Ninja and use it as the generator for CMake.
In order to build the project with Ninja and the MSVC compiler, you will need to run the `vcvarsall.bat` script to set up the environment for the MSVC compiler.:

```bash
C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat x64
cmake -S . -B build -G Ninja -DCH10_EX03_SUPERBUILD=ON
cmake --build ./build 
```

