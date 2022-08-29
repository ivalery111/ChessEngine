add_library(catch INTERFACE)
target_include_directories(catch INTERFACE .)

add_executable(test_sum test_sum.cpp)
target_link_libraries(test_sum sum catch)
add_test(
  NAME test_sum
  COMMAND $<TARGET_FILE:test_sum> --success
)

include(Valgrind)
valgrind_memcheck(test_sum)
valgrind_callgrind(test_sum)
