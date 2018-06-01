@echo off
echo[
echo[
echo[
ECHO Welcome To Cmakeezer configuration
echo[
echo[


ECHO CMake generators:
ECHO Windows Platform: 
ECHO    Ninja
ECHO    MinGW Makefiles
ECHO    NMake Makefiles JOM
ECHO    NMake Makefiles
ECHO    Visual Studio 15 2017
ECHO    Visual Studio 15 2017 Win64
ECHO Linux Platform: (not tested yet)
ECHO    Ninja
ECHO    Unix Makefiles
ECHO Input Your generator. 
echo[
set /p UserGenerator=

SET UserGenerator2=%UserGenerator%

SET UserGeneratorSubstring=%UserGenerator2: =%
set "CmakeezerBuild=%UserGeneratorSubstring%Build"

echo[
echo[
ECHO Windows Platform: 
ECHO  C:/repo
ECHO Linux Platform: (not tested yet)
ECHO  /usr/home/repo
set /p repositoryDir=Set Your repository.
set "InstallationPrefix=%repositoryDir%/%UserGeneratorSubstring%Build"






echo[
echo[
SET mypath=%~dp0
echo @@@@@@@@@ %mypath:~0,-1% @@@@@@@@@
echo[
echo[


SET Cmakeezer_Options=-DCMAKE_INSTALL_PREFIX=%InstallationPrefix% -DCMAKE_MODULE_PATH=%InstallationPrefix% -DCMAKE_PREFIX_PATH=%InstallationPrefix% -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON

ECHO ==========================================================================================
ECHO ==========================================================================================
echo[
ECHO Generator: %UserGenerator2%
ECHO Build folder: %CmakeezerBuild%
ECHO Installation Prefix: %InstallationPrefix%
ECHO Cmakeezer_Options : %Cmakeezer_Options%
echo[
ECHO ==========================================================================================
ECHO ==========================================================================================


cd googletest
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build . --config Release
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd clue
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DBUILD_TESTS=OFF ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd asyncplusplus
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[



cd Catch2
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DCATCH_ENABLE_WERROR=OFF -DNO_SELFTEST=YES ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd GSL
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd rapidjson
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DRAPIDJSON_BUILD_TESTS=OFF -DRAPIDJSON_BUILD_DOC=OFF ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[



cd libzmq
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DWITH_DOC=OFF -DBUILD_TESTS=OFF ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd CppMicroServices
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd cmcstl2
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build . 
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd hof
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd FakeIt
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd immer
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd hana
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd function2
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options%  ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd continuable
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DCTI_CONTINUABLE_WITH_EXAMPLES=OFF -DCTI_CONTINUABLE_WITH_TESTS=OFF ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[

cd benchmark
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DBENCHMARK_ENABLE_TESTING=OFF ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd backward-cpp
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd curl
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% -DBUILD_TESTING=OFF ..
cmake --build .
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[


cd YourProjectStartHere
mkdir "%CmakeezerBuild%"
cd "%CmakeezerBuild%"
cmake -G"%UserGenerator%"  %Cmakeezer_Options% ..
cmake --build .
cmake --build . --target test
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@
echo[
echo[



ECHO ============================================================
ECHO ============================================================
ECHO ===============  IMPORTANT NOTE ============================
ECHO ============================================================
ECHO ============================================================
ECHO === Use this inside your favourite C++ IDE
echo %Cmakeezer_Options%

ECHO ============================================================
ECHO ============================================================
ECHO ==============   TODO:
ECHO ==============   - User should have possibility to change library type
ECHO ==============   -Add optional generator option,
ECHO ==============   -Add precompiled header support
ECHO ==============   -Add code coverage 
ECHO ==============   -Add option to enable/disable Unit tests

Exit /B 5
PAUSE