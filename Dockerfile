# FROM python:3.7-slim-buster
#for mysql connection ,need full python
FROM python:3.7 

ENV PYTHONUNBUFFERED=1
WORKDIR /django_dir
COPY requirements.txt requirements.txt
RUN pip uninstall django
RUN pip install -r requirements.txt
#COPY . .
# EXPOSE 8000  
# CMD [ "python3" ,"manage.py","runserver","0.0.0.0:8000"]