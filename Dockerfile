FROM python:3-buster
COPY files /tmp/files/
RUN mv /tmp/files/flag.sh / && \
    mv /tmp/files/start.sh / && \
    chmod +x /flag.sh /start.sh && \
    rm -rf /tmp/files && \
    useradd app && \
    mkdir /app && \
    chown -R root:root /app && \
    chmod -R 755 /app && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
WORKDIR /app
CMD /start.sh
