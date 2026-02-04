# 🐳 Tutoriel Docker – Guide pratique pour débutants

Docker est un outil incontournable pour créer, déployer et exécuter des applications de manière rapide, portable et fiable.

---

## Objectifs du tutoriel
Dans ce tutoriel, nous allons effectuer les taches suivantes :
- Installer Docker
- Créer des images Docker
- Exécuter des conteneurs
- Gérer le stockage persistant
- Déployer des applications multi-conteneurs
- La mise en réseau Docker

Nous allons travailler dans un environnement ubuntu
---

## 1 Installation de Docker

### 🐧 Linux (Ubuntu)
Pour installer docker, nous allons utiliser les commandes suivantes:

```bash
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
```

Vérification de l'installation effective de Docker:

```bash
docker --version
```
![Description de l'image](images/img1.png)


Pour utiliser Docker sans `sudo` (optionnel), il faut utiliser la commande suivante :

```bash
sudo usermod -aG docker $USER
newgrp docker
```
![Description de l'image](images/img1.png)

---

## 2 Concepts de base
Au cœur de Docker se trouvent les imagesqui servent de modèles pour les conteneurs ; les conteneursqui sont les instances en cours d'exécution de ces images ; et le Docker Hubun référentiel centralisé pour le partage et la gestion des images.
### 📦 Images Docker
La commande suivante permet de telecharger une image
```bash
docker pull nginx
```
![Description de l'image](images/img3.png)

La commande suivante permet de voir la liste des images dans notre docker
```bash
docker images
```
![Description de l'image](images/img4.png)

Cette commande permet de supprimer une image
```bash
docker rmi nginx
```

---

### ▶️ Conteneurs Docker
```bash
docker run nginx
docker ps
docker ps -a
docker stop <container_id>
docker rm <container_id>
```

---

### 🌐 Docker Hub
```bash
docker login
docker search redis
docker pull redis
docker push username/my-image
```

---

## 🚀 Premier conteneur

### Test installation
```bash
docker run hello-world
```

### Serveur Nginx
```bash
docker run -d -p 8080:80 nginx
```

Accès : http://localhost:8080

---

## 🛠 Création d’images Docker

### Dockerfile
```dockerfile
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
```

### Build et Run
```bash
docker build -t my-app .
docker run -d -p 5000:5000 my-app
```

---

## 💾 Volumes Docker
```bash
docker volume create my-volume
docker run -v my-volume:/app/data my-app
```

---

## 🔗 Docker Compose

### docker-compose.yml
```yaml
version: "3.9"
services:
  web:
    image: nginx
    ports:
      - "8080:80"
```

### Commandes
```bash
docker-compose up -d
docker-compose down
```

---

## 🌐 Réseaux Docker
```bash
docker network create my-network
docker run --network my-network nginx
```

---

## ✅ Bonnes pratiques Docker
- Images officielles
- Images légères
- Versionner
- .dockerignore
- Sécurité
- Logs

---

## 🚧 Prochaines étapes
- Docker Swarm
- Kubernetes
- CI/CD
- Cloud

---

## 🏁 Conclusion
Docker facilite le déploiement et constitue une base solide pour le DevOps moderne.