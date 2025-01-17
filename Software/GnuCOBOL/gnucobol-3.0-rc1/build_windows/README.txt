The following was written for using the Microsoft Visual C++ compiler in the
rare circumstances where a GCC build (for example via MSYS/MinGW) cannot be used.

Most of this applies to other C compilers for Microsoft Windows, too - please
report any issues and working solutions with other compilers.

GnuCOBOL needs support for either `long long` (for WIN32 `__int64` is used),
very old compilers may lack support for this (like Visual C++ 2003 and older).

How to build in native Windows environments:

* get/build necessary prerequisites and place them in build_windows
  Note: for convinience you can get them (MPIR, pdcurses, VBISAM, BDB) from 
  https://sourceforge.net/projects/open-cobol/files/win_prerequisites/
  For a manual approach:
  * headers        --> build_windows
  * link libraries --> build_windows or build_windows\$(Platform)\$(Configuration)
  * runtime dlls   --> build_windows\$(Platform)\$(Configuration)
* copy build_windows\config.h.in to build_windows\config.h and modify if needed:
  * if you don't want to build with VBISAM change CONFIGURED_ISAM
  * if you don't want to build with screenio (PDCurses) change CONFIGURED_CURSES
  * you may want to change the PATCHLEVEL, too
* copy build_windows\defaults.h.in to build_windows\defaults.h,
  change COB_MAIN_DIR according to your local path and/or set MAKE_DIST
* you may want to change version information in build_windows\version_*.rc
* if you compile from a development snapshot or changed these files you need
  to (re-)generate the bison and flex sources, the easiest way:
  https://sourceforge.net/projects/winflexbison/files/win_flex_bison-latest.zip
    set PATH=X:\path\to\winflexbison;%PATH%
    X:\path\to\gnucobol\build_windows\makebisonflex.bat
* compile with your environment, for example via IDE by opening the solution
  and click "build" or by starting the VS/WinSDK command prompt and doing
    pushd X:\path\to\gnucobol\build_windows\vsYYYY
    MSBuild "GnuCOBOL.sln" /p:Platform=x64 /p:Configuration=Release
  replace YYYY with the Visual Studio version you've used and with using the
  platform/configuration you want to build

How to create the dist package:

* set up the above
* compile the *release version* you want (x86/Win32 and/or x64)
* sign the binaries if needed
* if you want a 7z and have a non-standard installation: change "makedist.bat"
* call "makedist.bat" (uses the last build from Win32\release and x64\release)

How to use the dist package:

* unzip wherever you want
* call "set_env_vs.bat" for use with Visual Studio and Win32 
* call "set_env_vs64.bat" for use with Visual Studio and x64
* use cobc/cobcrun

How to test the native builds:

* currently you will need a GNU/Linux-like environment for running the
  testsuite (normally Cygwin or MinGW with MSYS)
* if you want to run the NIST testsuite you need a perl binary installed and
  in PATH (a Cygwin/MSYS version is needed, a normal Windows binary won't work!)
* if you've set MAKE_DIST in defaults.h copy the dist package to the place
  cobc --info says (for example to C:\GnuCOBOL_2.3)
* start the VS command prompt that matches the version you want to test
* start the GNU/Linux-like environment from within the VS command prompt
  (for example by dropping its shortcut on the cmd window and pressing ENTER)
* do the following commands:
  cd $yourfolder
  ./configure # add --without-db --without-curses if the binaries to test are not
              # configured for ISAM/screenio
              # this will create the necessary Makefiles for you
* rename tests/atlocal to tests/atlocal_gnu
* rename tests/atlocal_win to tests/atlocal
* do the following commands:
  cd extras
  make -e
  cd ../tests
  make -j2 -e checkall # or make -j2 -e check if you don't want to run the NIST
                       # testsuite; instead of -j2 you may set -j7, depending on
                       # how many logical processors you have
