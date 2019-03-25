FROM ubuntu:18.04
MAINTAINER inabaakira

RUN apt-get update
RUN apt-get install -y zsh git sudo
RUN useradd -m -s /bin/zsh inaba
RUN gpasswd -a inaba sudo
RUN echo 'inaba:password' | chpasswd
RUN mkdir -p /books

COPY --chown=inaba:inaba dotfiles /home/inaba/dotfiles

# docker build -t inabaakira/the_rails_way .
# docker run -it -p 3000:3000 --name The_Rails_Way -v /Users/inaba/books:/books inabaakira/the_rails_way:latest /bin/bash
