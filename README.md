<a href="https://openclassrooms.com/fr/projects/124/assignment"><img src="https://wiki.froce.fr/images/8/83/Banni%C3%A8re_Lucas_Lhardi.png" title="Bibliotheque" alt="Bibliotheque"></a>

[![Build Status](https://travis-ci.com/JBonifay/OCP10.svg?token=5Q2eji3pFfb7CkjWDaKM&branch=master)](https://travis-ci.com/JBonifay/OCP10)

# Bibliotheque
Développez le nouveau système d’information de la bibliothèque d’une grande ville.

Openclassrooms Developpeur d'application Java Projet 10

## Installation
#### Prérequis
- Java 8
- Maven CLI
- Docker

#### Git Clone

- Lien du projet [`https://github.com/JBonifay/bibliotheque`](https://github.com/JBonifay/bibliotheque)

#### BDD
La base de donnée utilisée est MySQL.

Afin de générer la base de donnée avec ses données:

##### Docker 
```docker
Simplement se placer avec le terminal dans le dossier suivant:
docker/

Et lancer la commande
docker-compose up -d
``` 
Docker compose va créer la bdd MySql et jouer les scripts d’insertion de données

#### Lancer l'application
Se placer à la racine du projet et lancer les microservices dans l'ordre suivant:
```text
mvn clean package

Utiliser la commande 'mvn spring-boot:run' dans les projets :
edgeservice-eureka/
edgeservice-zuul/
microservice-ouvrage/
microservice-reservation/
microservice-utilisateur/
microservice-web/
```

L'interface web est maintenant accessible sur **localhost:8080**

## IDENTIFIANTS DE TEST
### Site web

- Utilisateur


    sblanket3@columbia.edu
    user
    
    pdufrayx@stanford.edu
    user

### Email

- Afin de vérifier l'envoi des mails depuis fait depuis le site la connection à l'adresse mail peut se faire grâce aux
 identifiants suivant
 
    
    bibliothequemunicipale250@gmail.com
    rootbibliotheque

### Postman
Toute les requetes utilisées sont disponible sur postman à l'adresse suivante:
https://documenter.getpostman.com/view/7613584/SWTEbFr6?version=latest

## Sonarqube

Docker image
```
$ docker run -d --name sonarqube -p 9000:9000 sonarqube:latest
```

Command
```
$ mvn clean verify sonar:sonar
```

## FAQ
          
