from flask import Flask
import config

# AWS EB needs an app named "application" in the namespace
application = app = Flask(__name__)

from {{cookiecutter.project_slug}} import views  # noqa

app.secret_key = config.secret_key
