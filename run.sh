IMAGE="asssaf/eos-voter"

xhost +
docker run --rm -ti -u $(id -u):$(id -g) \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $HOME/.config/eos-voter:/home/user/.config/eos-voter \
	-e "DISPLAY=unix${DISPLAY}" \
	$IMAGE $*
