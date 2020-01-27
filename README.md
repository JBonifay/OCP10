<a href="https://openclassrooms.com/fr/projects/124/assignment"><img src="https://wiki.froce.fr/images/8/83/Banni%C3%A8re_Lucas_Lhardi.png" title="lesamisdelescalade" alt="Bibliotheque"></a>

# Les amis de l'escalade
Développez le nouveau système d’information de la bibliothèque d’une grande ville.

Openclassrooms Developpeur d'application Java Projet 7

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
/docker

Et lancer la commande
docker-compose up -d
``` 
Docker compose va créer la bdd MySql et jouer les scripts d’insertion de données

#### Lancer l'application
Se placer à la racine du projet et lancer les microservices dans l'ordre suivant:
```text
mvn spring-boot:run edgeservice-eureka/
mvn spring-boot:run edgeservice-zuul/
mvn spring-boot:run microservice-ouvrage/
mvn spring-boot:run microservice-reservation/
mvn spring-boot:run microservice-utilisateur/
mvn spring-boot:run microservice-web/
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

## FAQ
          