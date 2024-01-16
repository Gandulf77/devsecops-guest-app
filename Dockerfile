#image with python 3.8
FROM python:3.8

#Copy -- je dois exclure le dossier /migration de app, j'ai mis en place un fichier .dockerignore contenant les repertoir a exclure
COPY app /app
COPY requirements.txt /requirements.txt

#RUN
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

