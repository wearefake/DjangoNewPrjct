FROM python

ENV PYTONUNBUFFERED 1

WORKDIR /app

ADD ./app

RUN pip install -r requirements.txt