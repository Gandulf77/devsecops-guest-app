#image with python 3.8
FROM python:3.8

#Copy -- je dois exclure le dossier /migration de app
COPY app /app
COPY requirements.txt /requirements.txt