FROM yykingking/baseenv


RUN cd / && \
    git clone https://github.com/coschain/wasm-compiler.git && \
    cd wasm-compiler/ && \
    git submodule update --init && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j2 install 

RUN cd / && \
    git clone https://github.com/coschain/clang-heroku-slug.git

# rpc service:
EXPOSE 8083

CMD node /clang-heroku-slug/app/