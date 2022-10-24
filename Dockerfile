FROM python:latest

WORKDIR /app

COPY . /app

CMD ["python3", "rng.py"]