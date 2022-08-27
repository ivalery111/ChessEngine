include(ClangTidy)
include(Format)

add_library(sum sum.cpp)
target_include_directories(sum PUBLIC .)
DoClangTidy(sum)
DoFormat(sum .)
