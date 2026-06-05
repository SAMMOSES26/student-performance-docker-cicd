FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y awscli ffmpeg libsm6 libxext6 unzip && \
    pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
