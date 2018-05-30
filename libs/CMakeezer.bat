@echo off
SET VAR=Welcome To Cmakeezer configuration
ECHO %VAR%
SET VAR=Input Your generator. Samples: -GNinja, -G"MinGW Makefiles", -G"NMake Makefiles JOM", -G"Visual Studio 15 2017 Win64".
ECHO %VAR%
set /p UserGenerator=
ECHO Generator: %UserGenerator%

set /p repositoryDir=Set Your repository.
ECHO Repository: %repositoryDir%

SET Cmakeezer_Options=-DCMAKE_INSTALL_PREFIX=%repositoryDir% -DCMAKE_MODULE_PATH=%repositoryDir% -DCMAKE_PREFIX_PATH=%repositoryDir%

SET mypath=%~dp0
echo @@@@@@@@@ %mypath:~0,-1% @@@@@@@@@

cd googletest
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@


cd asyncplusplus
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd Catch2
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% -DCATCH_ENABLE_WERROR=OFF -DNO_SELFTEST=YES ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd function2
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd GSL
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd rapidjson
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd libzmq
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd CppMicroServices
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

cd cmcstl2
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@


cd hof
mkdir CmakeezerBuild
cd CmakeezerBuild
cmake %UserGenerator%  %Cmakeezer_Options% ..
cmake --build . -- -v
cmake --build . --target install
cd %mypath%
echo @@@@@@@@@ %mypath% @@@@@@@@@

PAUSE