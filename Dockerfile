FROM python:3.11.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 45803

CMD ["python", "manage.py", "runserver",  "0.0.0.0:45803"]

#CMD ["python", "manage.py", "runserver", "0.0.0.0:45803", "--trusted-host", "127.0.0.1"]