FROM golang:latest

WORKDIR /app

ADD . /app

RUN apt-get update -yq && apt-get upgrade -yq && \
    apt-get install -yq sudo libssl-dev git curl make nano aptitude && \
    aptitude install -yq calibre

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

RUN apt-get install -yq nodejs

RUN make install && make build

EXPOSE 4000

CMD ["make","watch"]
