FROM python:3.7-slim-buster

RUN apt-get update \
    && pip install pylint \
    && pip install --upgrade --pre pylint-odoo \
    && pip uninstall pip -y

WORKDIR /code

ADD https://raw.githubusercontent.com/OCA/maintainer-quality-tools/master/travis/cfg/travis_run_pylint_beta.cfg

ENTRYPOINT ["pylint", "--load-plugins=pylint_odoo", "--rcfile=../travis_run_pylint_beta.cfg"]

CMD ["--help"]
