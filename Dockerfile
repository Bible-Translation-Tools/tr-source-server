FROM python:3.7-stretch
COPY . /audio/
RUN pip3 install -r /audio/requirements.txt
EXPOSE 80
WORKDIR /audio/app/
CMD ["gunicorn", "--access-logfile", "-", "-b", "0.0.0.0:80", "app"]
