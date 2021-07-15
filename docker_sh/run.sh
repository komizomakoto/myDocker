docker run --gpus all --rm -it --privileged \
             --env="DISPLAY=$DISPLAY" \
             --env="QT_X11_NO_MITSHM=1" \
             --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --volume="$HOME/mydir/volume-test/:/root/" \
             xserver-test:latest /bin/bash