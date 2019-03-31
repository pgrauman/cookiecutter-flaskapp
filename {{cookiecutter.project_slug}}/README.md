# {{cookiecutter.project_slug}}

{{cookiecutter.project_short_description}}

## Prerequisites
* python3
* virtualenv

## Getting Started
Download the repo and setup the environment:
```bash
git clone https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.project_slug}}.git
cd {{cookiecutter.project_slug}}

# Make and activate environment
make develop
source .venv/bin/activate
```

Copy `dummy_config.py` to `config.py`. Then fill in your own information (API credentials, app secret key). Don't worry `config.py` is already in `.gitignore`

```bash
cp dummy_config.py config.py
vim config.py
```

Once it's all setup you can launch with the Makefile and visit on your localhost (address displayed on launch)

```bash
$ make launch-app
```

## Built with
* [Flask](http://flask.pocoo.org) - Python microframework for Apps

## Ackowledgments
