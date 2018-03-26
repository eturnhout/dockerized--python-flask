# coding=utf-8

from app import app

@app.route('/')
def index():
	return "Hello Docker!"

@app.route('/hello')
@app.route('/hello/<name>')
def flask(name="World"):
    return "Hello " + name
