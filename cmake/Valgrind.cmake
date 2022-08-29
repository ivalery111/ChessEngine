function(valgrind_memcheck target)
    find_program(VALGRIND_PATH valgrind REQUIRED)

    set(VALGRIND_OPTS --leak-check=yes)
    add_custom_target(valgrind-memcheck
        COMMAND ${VALGRIND_PATH} ${VALGRIND_OPTS}
                $<TARGET_FILE:${target}>
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )
endfunction()

function(valgrind_callgrind target)
    find_program(VALGRIND_PATH valgrind REQUIRED)
    
    set(VALGRIND_OPTS --tool=callgrind
                      --dump-instr=yes
    )
    add_custom_target(valgrind-callgrind
      COMMAND ${VALGRIND_PATH} ${VALGRIND_OPTS}
              $<TARGET_FILE:${target}>
      WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )
endfunction()
