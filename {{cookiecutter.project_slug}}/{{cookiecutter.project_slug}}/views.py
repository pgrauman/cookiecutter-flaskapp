#!/usr/bin/python

'''
This file contains the app views
'''

from {{cookiecutter.project_slug}} import app
from flask import render_template

app.config.from_object('config')

@app.route('/', methods=['GET', 'POST'])
def index():
	return render_template('index.html')
