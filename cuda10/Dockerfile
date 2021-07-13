# usage
# step1. docker build -t `image name` .
# step2. docker run --rm -it `image name` /bin/bash

# 仮想化するベースOS
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
# 誰が作ったかは入れておきましょう
MAINTAINER ubuntu

# 各環境変数を設定
ENV USER ubuntu
ENV HOME /home/${USER}
ENV SHELL /bin/bash

# 一般ユーザーアカウントを追加
RUN useradd -m ${USER}
# 一般ユーザーにsudo権限を付与
RUN gpasswd -a ${USER} sudo
# 一般ユーザーのパスワード設定
RUN echo "${USER}:ubuntu" | chpasswd
# ログインシェルを指定
RUN sed -i.bak "s#${HOME}:#${HOME}:${SHELL}#" /etc/passwd

# 以降のRUN/CMDを実行するユーザー
USER ${USER}
# 以降の作業ディレクトリを指定
WORKDIR ${HOME}


