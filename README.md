# 🐳 Docker pour les débutants – Guide pratique


## 🎯 Objectifs du tutoriel
Nous verrons dans ce tutoriel, comment:
- Installer Docker
- Exécuter des conteneurs
- Créer des images Docker
- Gérer le stockage persistant
- Déployer des applications multi-conteneurs
- Comprendre la mise en réseau


## 💻 Installation de Docker
### Windows
- Docker Desktop
- WSL 2 activé
- Vérification : 
```bash
docker --version

### macOS
- Docker Desktop
- Lancer depuis Applications
- Vérification : docker --version

### Linux (Ubuntu)
- apt update
- installation docker-ce
- Vérification : docker --version

## 🧩 Concepts de base
### 📦 Images Docker
- Modèles immuables
- Contiennent OS + code + dépendances
- Créées avec Dockerfile
- Stockées sur Docker Hub
- Commandes
  - docker pull
  - docker images
  - docker rmi

### ▶️ Conteneurs Docker
- Instance d’une image
- Environnement isolé
- Cycle de vie
  - create
  - start
  - stop
  - restart
  - rm
- Commandes
  - docker run
  - docker ps -a

### 🌐 Docker Hub
- Registre cloud
- Images officielles et communautaires
- Partage public ou privé
- Commandes
  - docker login
  - docker push
  - docker search

## 🚀 Premier conteneur
### Test installation
- docker run hello-world

### Serveur Nginx
- docker run -d -p 8080:80 nginx
- Accès navigateur
  - http://localhost:8080

## 🛠 Création d’images Docker
### Dockerfile
- FROM : image de base
- WORKDIR : dossier de travail
- COPY : copie des fichiers
- RUN : installation dépendances
- CMD : commande de démarrage

### Build et Run
- docker build -t my-app .
- docker run -d -p 5000:5000 my-app

## 💾 Volumes Docker
- Données éphémères par défaut
- Volumes = persistance des données
- Création
  - docker volume create my-volume
- Utilisation
  - -v my-volume:/app/data

## 🔗 Docker Compose
### Pourquoi ?
- Applications multi-conteneurs
- Gestion simplifiée
- Une seule commande

### docker-compose.yml
- version
- services
  - web
  - database
- volumes
  - persistance des données

### Commandes
- docker-compose up -d
- docker-compose down

## 🌐 Réseaux Docker
### Objectif
- Communication entre conteneurs
- Isolation et sécurité

### Types de réseaux
- Bridge (par défaut)
- Host
- Overlay
- Macvlan

### Réseau personnalisé
- docker network create my-network
- docker run --network my-network

### Bonnes pratiques réseau
- Réseaux personnalisés
- DNS via noms de conteneurs
- Limiter l’exposition externe
- Surveiller le trafic

## ✅ Bonnes pratiques Docker
- Images officielles
- Images légères (slim)
- Builds multi-étapes
- Tags versionnés
- Scan de vulnérabilités
- Gestion sécurisée des secrets
- Utilisation de .dockerignore
- Logs et monitoring

## 🚧 Prochaines étapes
- Docker Swarm
- Kubernetes
- Sécurité des conteneurs
- CI/CD avec Docker
- Déploiement cloud
- Stratégies de stockage avancées

## 🏁 Conclusion
- Docker = outil clé du développement moderne
- Facilite le déploiement
- Améliore la portabilité
- Base solide pour DevOps et Cloud

## ❓ FAQ
### Docker vs Machine Virtuelle
- Docker : léger, rapide
- VM : OS complet, plus lourde

### Sécurité Docker
- Images fiables
- Scans de sécurité
- Secrets bien gérés
