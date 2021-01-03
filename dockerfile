FROM python:3

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./stock-ml-config-master /app/

CMD python config-master.py
