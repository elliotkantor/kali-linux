FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

RUN apt-get update -y && apt-get clean all
RUN apt-get install -y software-properties-common && apt-get update -y && apt-get clean all
RUN apt-get install -y git colordiff colortail unzip vim tmux xterm zsh curl && apt-get clean all
RUN apt-get install -y kali-tools-top10 && apt-get clean all

RUN chsh -s $(which zsh)
RUN rm -f ${HOME}/.profile
RUN su -s /bin/zsh -c '. ~/.zshrc' root

CMD ["/bin/zsh"]
