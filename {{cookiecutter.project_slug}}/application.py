#!flask/bin/python

from {{cookiecutter.project_slug}} import application
import config

if __name__ == '__main__':
    application.run(debug=config.debug)
