
echo -e
echo -e
echo -e
echo Welcome To Cmakeezer configuration
echo -e
echo -e


echo Input Your generator.
echo Linux Platform:
echo    Ninja
echo    Unix Makefiles

echo -e
read UserGenerator

echo $UserGenerator
UserGenerator2=$"${UserGenerator// /_}"
echo $UserGenerator2
UserGeneratorSubstring=$UserGenerator2
CmakeezerBuild=${UserGeneratorSubstring}Build
echo $CmakeezerBuild
echo -e
echo -e
echo Set Your repository. Linux Platform:
echo  /home/user/repo
read repositoryDir

InstallationPrefix=${repositoryDir}/${UserGeneratorSubstring}Build
echo $InstallationPrefix

echo -e
echo -e

mypath=$PWD
echo  $mypath 
echo -e
echo -e

Module_Path=$InstallationPrefix
Cmakeezer_Options="-DCMAKE_INSTALL_PREFIX=${InstallationPrefix} -DCMAKE_MODULE_PATH=$Module_Path -DCMAKE_PREFIX_PATH=$Module_Path -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON"

echo ==========================================================================================
echo ==========================================================================================
echo -e
echo Generator: $UserGenerator2
echo Build folder: $CmakeezerBuild
echo Installation Prefix: $InstallationPrefix
echo Cmakeezer_Options : $Cmakeezer_Options
echo -e
echo ==========================================================================================
echo ==========================================================================================

generaotrDefaultOpton=

if [ "$UserGenerator" == "Ninja" ] ; then
	echo "???????? Ninja"
	generaotrDefaultOpton="-- -v"
elif [ "$UserGenerator" == "Unix Makefiles" ] ;then
	echo "???????? Unix Makefiles"
	generaotrDefaultOpton="-- -j4"
else
	echo "Unknown Generator"
fi


cd googletest
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build . "$generaotrDefaultOpton"
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e
exit 1

echo current: $PWD

cd CLUE
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DBUILD_TESTS=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd asyncplusplus
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e



cd Catch2
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DCATCH_ENABLE_WERROR=OFF -DNO_SELFTEST=YES ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd GSL
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd rapidjson
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DRAPIDJSON_BUILD_TESTS=OFF -DRAPIDJSON_BUILD_DOC=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e



cd libzmq
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DWITH_DOC=OFF -DBUILD_TESTS=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd CppMicroServices
mkdir $CmakeezerBuild$
cd $CmakeezerBuild$
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd cmcstl2
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build . 
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd hof
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd FakeIt
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd immer
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd hana
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd function2
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options  ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd continuable
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DCTI_CONTINUABLE_WITH_EXAMPLES=OFF -DCTI_CONTINUABLE_WITH_TESTS=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e

cd benchmark
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DBENCHMARK_ENABLE_TESTING=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd backward-cpp
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DSTACK_WALKING_UNWIND:BOOL=FALSE ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e



cd curl
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DBUILD_TESTING=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd SFML
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options -DSFML_BUILD_DOC=OFF ..
cmake --build .
cmake --build . --target install
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e


cd YourProjectStartHere
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build .
cmake --build . --target test
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e




echo ============================================================
echo ============================================================
echo ===============  IMPORTANT NOTE ============================
echo ============================================================
echo ============================================================
echo === Use this inside your favourite C++ IDE
echo $Cmakeezer_Options

echo ============================================================
echo ============================================================
echo ==============   TODO:
echo ==============   - User should have possibility to change library type
echo ==============   -Add optional generator option,
echo ==============   -Add precompiled header support
echo ==============   -Add code coverage 
echo ==============   -Add option to enable/disable Unit tests


PAUSE
