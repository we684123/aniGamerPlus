FROM python:3.6 as builder
MAINTAINER we684123
# for aniGamerPlus

WORKDIR /app
COPY . .
ENV 
RUN python -m pip install --upgrade pip \
    && pip install -r requirements.txt \
    && apt install ffmpeg

FROM builder
WORKDIR /app
CMD ["python","aniGamerPlus.py"]
