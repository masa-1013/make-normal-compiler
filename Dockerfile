# ベースイメージとして公式のDebianを使用
FROM debian:latest

# 必要なパッケージをインストール
RUN apt-get update && \
    apt-get install -y openjdk-17-jre && \
    apt-get clean;

# 作業ディレクトリを設定
WORKDIR /app