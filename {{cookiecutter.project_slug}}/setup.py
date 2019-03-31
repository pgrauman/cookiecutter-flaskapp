from setuptools import setup

setup(
    name='{{cookiecutter.project_slug}}',
    version='{{cookiecutter.version}}',
    packages=['{{cookiecutter.project_slug}}', ],
    license='{{cookiecutter.open_source_license}}',
    long_description=open('README.md').read(),
)
