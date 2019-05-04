FROM python:3.7.3-stretch

RUN pip install Flask==1.0.2 

WORKDIR /app
COPY app /app

CMD ["python", "identidoc.py"]
