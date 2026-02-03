# 🐳 Tutoriel Docker – Guide pratique pour débutants

Docker est un outil incontournable pour créer, déployer et exécuter des applications de manière rapide, portable et fiable.

---

## 🎯 Objectifs du tutoriel
À la fin de ce guide, vous saurez :
- Installer Docker
- Exécuter des conteneurs
- Créer des images Docker
- Gérer le stockage persistant
- Déployer des applications multi-conteneurs
- Comprendre la mise en réseau Docker

---

## 💻 Installation de Docker

### 🪟 Windows
**Prérequis**
- Windows 10/11
- WSL 2 activé

**Étapes**
1. Télécharger Docker Desktop : https://www.docker.com/products/docker-desktop/
2. Installer et redémarrer
3. Vérifier l’installation :

```bash
docker --version
```

---

### 🍎 macOS
1. Télécharger Docker Desktop
2. Lancer Docker depuis Applications
3. Vérifier :

```bash
docker --version
```

---

### 🐧 Linux (Ubuntu)

```bash
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
```

Vérification :

```bash
docker --version
```

Utiliser Docker sans `sudo` (optionnel) :

```bash
sudo usermod -aG docker $USER
newgrp docker
```

---

## 🧩 Concepts de base

### 📦 Images Docker
```bash
docker pull nginx
docker images
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