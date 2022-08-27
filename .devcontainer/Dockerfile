ARG VARIANT="ubuntu-22.04"
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT}

RUN apt-get update                                                      \
    && export DEBIAN_FRONTEND=noninteractive                            \
    && apt-get update                                                   \
    && apt-get -y install --no-install-recommends                       \
        sudo                                                            \
        vim                                                             \
        make                                                            \
        cmake                                                           \
        doxygen                                                         \
        build-essential                                                 \
        gcc                                                             \
        clang                                                           \
        clangd                                                          \
        clang-format                                                    \
        clang-tidy                                                      \
        cppcheck                                                        \
        bear                                                            \
        cscope                                                          \
        python3-pip                                                     \
        valgrind                                                        \
        kcachegrind                                                     \
        catch                                                           \
        doxygen                                                         \
        graphviz                                                        \
    && rm -rf /var/lib/apt/lists/*
