FROM chrisriess/ubuntu
RUN apt-get install -y emacs24-nox shellinabox
RUN apt-get install -y sudo
RUN useradd emacs && passwd -d emacs && adduser emacs sudo
ADD style.css /etc/shellinabox/style.css
VOLUME [ "/home/emacs", "/opt/frontend" ]
CMD [ "dumb-init", "shellinaboxd", "-ts", "/:emacs:emacs:/home/emacs:/bin/bash", "--css", "/etc/shellinabox/style.css" ]