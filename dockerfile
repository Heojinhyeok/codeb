FROM python:3.8-slim

EXPOSE 80

WORKDIR /app 

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

CMD ["python3", "lastproject/manage.py", "runserver", "0.0.0.0:80"]
