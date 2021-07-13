# usage
# step1. docker build -t `image name` .
# step2. docker run --rm -it `image name` /bin/bash

# 仮想化するベースOS
FROM nvidia/cuda:11.4.0-devel-ubuntu20.04
# 誰が作ったかは入れておきましょう
MAINTAINER ubuntu

RUN apt-get update && apt-get install -y curl gnupg2 lsb-release git build-essential

RUN apt-get install -y vim
RUN apt-get update && apt-get -y upgrade
RUN apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 wget -y
RUN apt-get install libsm6 libxrender1 libxext-dev -y
RUN wget -P /opt https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
RUN bash /opt/Anaconda3-2020.02-Linux-x86_64.sh -b -p /opt/anaconda3 && \
     rm /opt/Anaconda3-2020.02-Linux-x86_64.sh && \
     echo "export PATH=/opt/anaconda3/bin:$PATH" >> ~/.bashrc && \
     . ~/.bashrc && \
     conda init


ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo 


RUN apt install -y dbus dbus-x11 xorg xserver-xorg-legacy xinit xterm

RUN sed -i "s/allowed_users=console/allowed_users=anybody/;$ a needs_root_rights=yes" /etc/X11/Xwrapper.config
ARG user=user
ARG uid=1000
# RUN useradd ${user} -u $uid -m -G adm,dialout,cdrom,sudo,audio,dip,video,plugdev,netdev -s /bin/bash

CMD [ "/usr/bin/startx", "--", "vt7" ]
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


# export PATH=$PATH:/usr/local/cuda/bin
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64
