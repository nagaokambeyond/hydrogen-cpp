FROM amd64/ubuntu:22.04

# パッケージの一覧更新
RUN apt-get update

# タイムゾーンの設定
RUN apt install -y tzdata
ENV TZ=Asia/Tokyo

# 開発環境のシステムインストール
RUN apt install -y wget \
    g++ \
    cmake \
    clang-format \
    git \
    gdb \
    cppcheck \
    binutils \
    nasm \
    build-essential \
    clang
