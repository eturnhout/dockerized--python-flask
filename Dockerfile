FROM python:3.4
RUN apt-get update &&\
	apt-get install -y apache2 libapache2-mod-wsgi-py3

COPY ./app.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/flask
COPY [ "./requirements.txt", "./app.wsgi", "./scripts/prod", "./scripts/dev", "./"]
RUN pip install --no-cache -r requirements.txt
COPY ./app ./app

CMD [ "./dev", "./prod" ]
