# usage
# step1. docker build -t `image name` .
# step2. docker run --rm -it `image name` /bin/bash

# 仮想化するベースOS
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
RUN touch /etc/apt/apt.conf
RUN echo "Acquire::http::proxy "http://in-proxy-o.denso.co.jp:8080";" >> /etc/apt/apt.conf
RUN echo "Acquire::https::proxy "http://in-proxy-o.denso.co.jp:8080";" >> /etc/apt/apt.conf

# RUN apt update
# RUN apt install -y curl gnupg2 lsb-release git build-essential

# RUN apt install -y vim
# RUN apt update && apt-get -y upgrade
# RUN apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 wget -y
# RUN apt install libsm6 libxrender1 libxext-dev
# RUN wget -P /opt https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
# RUN bash /opt/Anaconda3-2020.02-Linux-x86_64.sh -b -p /opt/anaconda3 && \
#      rm /opt/Anaconda3-2020.02-Linux-x86_64.sh && \
#      echo "export PATH=/opt/anaconda3/bin:$PATH" >> ~/.bashrc && \
#      . ~/.bashrc && \
#      conda init
# # 各環境変数を設定
# ENV USER ubuntu
# ENV HOME /home/${USER}
# ENV SHELL /bin/bash

# # 一般ユーザーアカウントを追加
# RUN useradd -m ${USER}
# # 一般ユーザーにsudo権限を付与
# RUN gpasswd -a ${USER} sudo
# # 一般ユーザーのパスワード設定
# RUN echo "${USER}:ubuntu" | chpasswd
# # ログインシェルを指定
# RUN sed -i.bak "s#${HOME}:#${HOME}:${SHELL}#" /etc/passwd

# # 以降のRUN/CMDを実行するユーザー
# USER ${USER}
# # 以降の作業ディレクトリを指定
# WORKDIR ${HOME}


