cmake_minimum_required (VERSION 3.10)
project (Projecto)
include(FeatureSummary)
set(CMAKE_CXX_STANDARD 14)

find_package(Threads REQUIRED)  			#Threads::Threads
find_package(benchmark REQUIRED) 			#benchmark::benchmark
find_package(SFML 2.4.2 REQUIRED network audio graphics window system)

find_package(function2 REQUIRED)
find_package(FakeIt REQUIRED) 				#FakeIt::FakeIt
find_package(immer REQUIRED) 				#immer
#find_package(OpenCv 3.3.0 REQUIRED)
find_package(hana REQUIRED) 				#hana
find_package(GTest 1.8.0 REQUIRED) 			#GTest::GTest GTest::Main
#find_package(GMock 1.8.0 REQUIRED)			# TODO: We have to add FindGMock.cmake
#find_package(cpr REQUIRED) 				#cpr::cpr
#find_package(log4cplus REQUIRED) 			#log4cplus::log4cplus
find_package(continuable REQUIRED) 			#continuable::continuable-base continuable::continuable
find_package(clue 1.0 REQUIRED) 			#clue::clue
find_package(Catch2 2.2.2 REQUIRED) 		#Catch2::Catch2
find_package(rapidjson 1.1.0 REQUIRED)
find_package(ZeroMQ 4.3.1 REQUIRED)  		#libzmq libzmq-static
find_package(Backward)  			#Backward::Backward
find_package(curl 7.61.0)

if(MSVC)
    set(CMAKE_CXX_FLAGS_RELEASE "/MT /O2 /Ob2 /DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG "/MTd /Zi /Ob0 /Od /RTC1")
endif()
message(INFO "SFML_LIBRARIES=${SFML_LIBRARIES}")
message(INFO "SFML_DEPENDENCIES=${SFML_DEPENDENCIES}")


add_executable(msvc sample.cpp)
target_link_libraries(msvc PUBLIC
        function2::function2
        hana
        continuable::continuable-base
        continuable::continuable
        CLUE::clue
        libzmq
        #Backward::Backward
        immer
        #CURL::libcurl
        sfml-main
        sfml-audio
        sfml-graphics
        sfml-window
        sfml-system
        )
target_include_directories(msvc PRIVATE ${RapidJSON_INCLUDE_DIRS})

enable_testing()
add_executable(tester fakeit_gtest_ut.cc)
add_test(tester tester)
target_link_libraries(tester PRIVATE  GTest::GTest GTest::Main FakeIt::FakeIt)
#target_include_directories(tester PRIVATE  ${GMOCK_INCLUDE_DIR} )

#add_executable(catch_ut catch_ut.cpp)
#add_test(catch_ut catch_ut)
#target_link_libraries(catch_ut PRIVATE Catch2::Catch)

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)