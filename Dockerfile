#image with python 3.8
FROM python:3.8

#Copy -- je dois exclure le dossier /migration de app, j'ai mis en place un fichier .dockerignore contenant les repertoir a exclure
COPY app /app
COPY requirements.txt /requirements.txt

#RUN
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#Emplacement de d'application
WORKDIR app/

#Migration
ENV FLASK_APP=app.py
ENV DATABASE_URL=sqlite:///db.sqlite
EXPOSE 5000
CMD flask db init && flask db migrate -m "initialize migration" && flask db upgrade && flask run -h 0.0.0.0 --port 5000

