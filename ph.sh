    xhost +SI:localuser:root
    docker run -e DISPLAY=$DISPLAY \
	   -e SSH_AUTH_SOCK=/ssh-agent \
           -v $(pwd)/pharo:/data \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $SSH_AUTH_SOCK:/ssh-agent \
	   -p 8080:8080 \
	   --add-host "phabricator.osoco.es:10.3.0.51" \
           --rm -it docker-pharo /bin/run-pharo.sh


