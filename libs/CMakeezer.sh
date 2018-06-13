
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
#read UserGenerator
UserGenerator=Ninja

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
#read repositoryDir
repositoryDir=/home/user/repo
InstallationPrefix=${repositoryDir}/${UserGeneratorSubstring}Build
echo $InstallationPrefix

echo -e
echo -e

mypath=$PWD
echo  $mypath 
echo -e
echo -e

Cmakeezer_Options="-DCMAKE_INSTALL_PREFIX=${InstallationPrefix} -DCMAKE_MODULE_PATH=$InstallationPrefix;${mypath}/cmake-findgmock -DCMAKE_PREFIX_PATH=$InstallationPrefix -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON"

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

generateDefaultOptions=

if [ "$UserGenerator" == "Ninja" ] ; then
	generateDefaultOptions="-- -v"
elif [ "$UserGenerator" == "Unix Makefiles" ] ;then
	generateDefaultOptions="-- -j4"
else
	echo "Unknown Generator"
fi


addDependency () {
	echo Inside function $1 $2
	cd $mypath
	cd $1
	mkdir $CmakeezerBuild
	cd $CmakeezerBuild
	cmake -G"$UserGenerator"  $Cmakeezer_Options $2 ..
	cmake --build . $generateDefaultOptions
	#cmake --build . --target memcheck
	cmake --build . --target install
	cd $mypaths
	echo @@@@@@@@@ $mypath @@@@@@@@@
	echo -e
	echo -e
}

# TODO: FINISH ME
#addDependency "czmq" "-DENABLE_DRAFTS=OFF -DCZMQ_BUILD_STATIC=ON -DCZMQ_BUILD_SHARED=OFF"
#addDependency "immutable-cpp"
#addDependency "ui"
#addDependency "eraserface"
#addDependency "smartref"
#addDependency "nanogui"
#addDependency "impala"
#addDependency "CompilerExplorer"
#addDependency "futures_cpp" "-DENABLE_TEST=OFF -DENABLE_EXAMPLES=OFF"
#addDependency "openthread"
#addDependency "easycond"
#addDependency "vireo"
#addDependency "petra"
#addDependency "virtual-concepts"
#addDependency "coroutine_monad"
#addDependency "qpid-cpp"
#addDependency "copperspice"
#addDependency "cpp-dependencies"
#addDependency "Kvasir"
#addDependency "easyLambda"
#addDependency "envoy"
#addDependency "crow" #require boost
#addDependency "Synca" #require boost
#addDependency "taichi"
#addDependency "yue"
#addDependency "dpl"
#addDependency "eos" ##require Eigen
#addDependency "libraries" #require boost
#addDependency "boringssl" #require go
#addDependency "themis"  #require boring-ssl
#addDependency "libtins" #require PCAP
#addDependency "redox"  #require hiredis
#addDependency "ctti" "-DCTTI_BUILD_TESTS=ON -DCTTI_BUILD_EXAMPLES=ON" #build error
#addDependency "treefrog-framework" #does not appear to contain CMakeLists.txt
#addDependency "metaverse" #require miniupnpc
#addDependency "libsolace" #require cppunit fmt
#addDependency "Fido" #does not appear to contain CMakeLists.txt
#addDependency "lambda" "-DENABLE_TESTS=OFF -DENABLE_BENCHMARK=OFF" # fix INTERFACE_INCLUDE_DIRECTORIES issue
#addDependency "hippomocks" #?
#addDependency "boson"  #require fmt and other 3rd paty libs
#addDependency "SkyPat" #does not appear to contain CMakeLists.txt
#addDependency "jubatus" #does not appear to contain CMakeLists.txt
#addDependency "rr" #?
addDependency "gherkin-c"
addDependency "fmem"
addDependency "gherkin-cpp"
addDependency "GUnit"
#addDependency "rocksdb" "-DWITH_TESTS=OFF -DWITH_TOOLS=OFF -DWITH_JEMALLOC=OFF -DWITH_SNAPPY=OFF -DWITH_LZ4=OFF -DWITH_ZLIB=OFF"
addDependency "googletest"
addDependency "CLUE" "-DBUILD_TESTS=OFF"
addDependency "dynamix" "-DDYNAMIX_BUILD_EXAMPLES=OFF -DDYNAMIX_BUILD_TUTORIALS=OFF -DDYNAMIX_BUILD_UNIT_TESTS=OFF"
#addDependency "json"
addDependency "metal"
cd $mypath
cd YourProjectStartHere
mkdir $CmakeezerBuild
cd $CmakeezerBuild
cmake -G"$UserGenerator"  $Cmakeezer_Options ..
cmake --build . $generateDefaultOptions
cmake --build . --target test
cd $mypath
echo @@@@@@@@@ $mypath @@@@@@@@@
echo -e
echo -e
exit 1
addDependency "syscpp"
addDependency "sqlite_orm"
addDependency "taichi"
addDependency "lager"
addDependency "asyncplusplus"
addDependency "Catch2" "-DCATCH_ENABLE_WERROR=OFF -DNO_SELFTEST=YES"
addDependency "GSL"
addDependency "rapidjson" "-DRAPIDJSON_BUILD_TESTS=OFF -DRAPIDJSON_BUILD_DOC=OFF"
addDependency "libzmq" "-DWITH_DOC=OFF -DBUILD_TESTS=OFF"
addDependency "CppMicroServices"
addDependency "cmcstl2" "-DENABLE_TESTING=FALSE"
addDependency "hof"
addDependency "FakeIt"
addDependency "immer"
addDependency "hana"
addDependency "function2"
addDependency "continuable" "-DCTI_CONTINUABLE_WITH_EXAMPLES=OFF -DCTI_CONTINUABLE_WITH_TESTS=OFF"
addDependency "benchmark" "-DBENCHMARK_ENABLE_TESTING=OFF"
addDependency "backward-cpp" "-DSTACK_WALKING_UNWIND:BOOL=FALSE"
addDependency "curl" "-DBUILD_TESTING=OFF"
addDependency "SFML" "-DSFML_BUILD_DOC=OFF"
addDependency "tiny-dnn"
addDependency "brigand"
addDependency "future"
addDependency "trompeloeil"
addDependency "alloy"
addDependency "valuable"
addDependency "cat"
addDependency "tacopie" "-DBUILD_EXAMPLES=ON -DBUILD_TESTS=ON"
addDependency "cpp_redis" "-DBUILD_EXAMPLES=OFF -DBUILD_TESTS=OFF"
addDependency "callable_traits"
addDependency "dyno"
addDependency "variant"
addDependency "range-v3" "-DRANGE_V3_TESTS=OFF"
addDependency "te" "-DENABLE_SANITIZERS=ON -DENABLE_TESTS=ON"
addDependency "bullet3" "-DBUILD_CPU_DEMOS=ON"



#git submodule update --init --recursive



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



