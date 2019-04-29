FROM yykingking:baseenv


RUN cd / && \
    git clone https://github.com/coschain/wasm-compiler.git && \
    cd wasm-compiler/ && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j4 install

RUN cd / && \
    git clone https://github.com/coschain/clang-heroku-slug.git && \
    cd clang-heroku-slug && \
    cd app && \
    node .


# rpc service:
EXPOSE 8083

CMD ["/bin/bash"]	