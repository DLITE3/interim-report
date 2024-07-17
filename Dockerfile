FROM ubuntu:22.04
LABEL dlite3 imaruoka

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe && \
    apt-get -y update && \
    apt-get install -y \
        make \
        texlive-lang-cjk \
        xdvik-ja \
        texlive-fonts-recommended \
        texlive-fonts-extra && \
    apt autoremove -y && \
    apt-get clean

RUN mkdir /texsrc
WORKDIR /texsrc

VOLUME /texsrc

CMD ["/bin/bash"]
