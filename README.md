# Build
```bash
cmake -B build
cmake --build build
```

# Testing
* Build with testing enabled:
```bash
cmake -DCMAKE_BUILD_TYPE=Debug -DENABLE_TESTING=ON -B build
cmake --build build
```
* Run tests:
```bash
ctest --test-dir build
```

* Run tests with Valgrind:
```bash
ulimit -n 4096
cmake --build build -t valgrind-memcheck
```
* Run tests with Callgrind:
```bash
ulimit -n 4096
cmake --build build -t valgrind-callgrind
```  
