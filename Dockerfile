FROM node:20-slim

RUN apt-get update && apt-get install -y python3 python3-pip git curl patch && rm -rf /var/lib/apt/lists/*
RUN pip3 install --break-system-packages pytest pytest-timeout

WORKDIR /app
COPY . /app
RUN npm install
RUN npm install -g ts-node typescript @types/node
