FROM python:3.7.3-stretch

RUN pip install Flask==1.0.2 uWSGI==2.0.18 

WORKDIR /app
COPY app /app

#CMD ["python", "identidoc.py"]
CMD ["uwsgi", "--http", "0.0.0.0:9090", "--wsgi-file", "/app/identidoc.py", "--callable", "app", "--stats", "0.0.0.0:9191"]
