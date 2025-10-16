FROM python:3.11-slim

RUN apt-get update && apt-get install -y curl nodejs npm

WORKDIR /workspace

COPY requirements.txt /workspace/

RUN pip install --upgrade pip && pip install -r requirements.txt
