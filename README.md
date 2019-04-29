
# Backend Docker File for Run Studio compile service


Front-End [WebAssemblyStudio](https://github.com/coschain/WebAssemblyStudio)


This Dockerfile only contains 
[BackEnd HttpServer](https://github.com/coschain/https://github.com/coschain/clang-heroku-slug)
and
[BackEnd Compile Commond Line Tool](https://github.com/coschain/wasm-compiler)


The depend [yykingking/baseenv] DockerFile [source](https://github.com/coschain/wasm-compiler/blob/master/Dockerfile_env)


# Build Docker Image
		docker build -t studio-backend .  



# Start Docker Image
		docker run -p 0.0.0.0:8083:8083 -e "COSCC=/usr/local/bin/cosiocc" --privileged=true studio-backend
