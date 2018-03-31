# dockerized-python-flask

Made this to get back into using docker again. I wanted a image to get started with flask.
This image provides 2 scripts. One that starts flask in debug mode. The other uses apache2 to serve the app.

### Example usage
Edit the `requirements.txt`, `app.wsgi` and/or `app.conf` if they don't fulfill your needs.
Then build the image like any other docker image.

```` docker build -t flask . ````

This takes a while to set up cause of the apache installation.
To run the image in "dev" mode execute the following command.

```` docker run --name flask-dev -v /$PWD/app/:/var/www/flask/app -p 8000:8000 -d flask ````

Now you kan edit the code under app and should see the result under <a href="http://localhost:8000" target="_blank">localhost:8000</a>.  
When your app is done and you want to use apache to serve it use run the container with the following command.

```` docker run --name flask-prod -p 80:80 -d flask ./prod ````
