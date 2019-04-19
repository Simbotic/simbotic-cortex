## Docker Setup

GPU-based docker build.
You will need [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).
```
./docker_build.sh
./docker_run.sh
```

## Advanced Docker Setup

### GPU-based image
You will need [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).
```
cd simbotic-cortex # into this repo clone
docker build --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) -t simbotic-cortex .
docker run --runtime=nvidia -ti -v $(pwd):/sim --network=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --cap-add=SYS_PTRACE simbotic-cortex
```

