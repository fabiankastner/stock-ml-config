FROM python:3

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./config.py /app/
COPY ./config.yml /app/

CMD python config.py
