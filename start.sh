#!/bin/bash
docker run --detach -v $(pwd)/volumes/emacs:/home/emacs -v $(pwd)/volumes/frontend:/opt/frontend --name emacs chrisriess/emacs
docker run --detach -v $(pwd)/volumes/frontend:/var/www --name frontend chrisriess/php
docker run --detach --publish 80:80 --link emacs:emacs --link frontend:frontend --name proxy chrisriess/proxy
