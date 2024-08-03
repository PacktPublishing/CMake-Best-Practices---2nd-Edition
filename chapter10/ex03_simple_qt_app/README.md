# Superbuild example with Qt6

This example demonstrates how to use CMake to build a superbuild project that includes a Qt6 application. Since Qt6 is not trivial to build, this example works best on linux or by using the supplied docker container.

## Building on Windows 

As Qt6 only supports Ninja for building on Windows, you will need to install Ninja and use it as the generator for CMake.
In order to build the project with Ninja and the MSVC compiler, you will need to run the `vcvarsall.bat` script to set up the environment for the MSVC compiler.:

```bash
C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat x64
cmake -S . -B build -G Ninja -DCH10_EX03_USE_SUPERBUILD=ON
cmake --build ./build 
```

(Be sure to replace the path to `vcvarsall.bat` with the correct path for your system.)

### Running the example on Windows

If the example is built on Windows, you will need to set the `PATH` environment variable to include the Qt6 DLLs. You can do this by running the following command:

```powershell
set PATH=%PATH%;<buildFolder>/_deps/qt6-build/bin;<buildFolder>/_deps/qt6-build/qtbase/bin
```
