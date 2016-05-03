FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    git gcc python3=3.4.2-2 python3-dev=3.4.2-2 python3-setuptools=5.5.1-1
RUN easy_install-3.4 pip==7.1.2 wheel==0.26.0

WORKDIR /work

CMD ["pip", "wheel", "-r", "requirements.txt"]
