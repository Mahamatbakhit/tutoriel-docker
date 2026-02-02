# 🐳 Tutoriel Docker : Créer et lancer une application conteneurisée

Ce projet reprend les étapes clés du tutoriel Docker pour débutants. Il permet d'apprendre à créer une image et à lancer un conteneur pour une application Python.

## 📋 Prérequis
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) installé et lancé.
* Git installé.

## 🚀 Étapes d'exécution

### 1. Préparation de l'application
Le projet contient un fichier `app.py` simple et un fichier `requirements.txt`.

### 2. Création de l'image Docker
Ouvrez un terminal dans le dossier du projet et lancez la commande suivante pour construire l'image :

```bash
docker build -t ma-premiere-app .
