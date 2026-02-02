# Utiliser Python comme base
FROM python:3.9-slim

# Définir le dossier de travail
WORKDIR /app

# Copier les fichiers et installer Flask
COPY . .
RUN pip install -r requirements.txt

# Exposer le port 80
EXPOSE 80

# Lancer l'app
CMD ["python", "app.py"]
