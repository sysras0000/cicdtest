FROM tiangolo/uwsgi-nginx-flask:python3.6
MAINTAINER Sunil "skshet@west.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["usecase.py"]
