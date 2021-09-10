FROM python:3.6-stretch

WORKDIR /loci

RUN pip3 install Flask \
  FLASK_TABLE \
  coloredlogs \
  requests \
  python-dateutil \
  pytz

COPY . /loci

EXPOSE 5000

CMD ["python3", "main.py"]