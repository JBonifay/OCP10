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

#### I.Base de données
La base de données utilisé est MySQL.

Afin de générer la base de donnée avec ses données:

##### Docker 
```docker
Simplement se placer avec le terminal dans le dossier suivant:
docker/

Et lancer la commande
docker-compose up -d
``` 
Docker compose va créer la bdd MySql et jouer les scripts d’insertion de données

#### II.Lancer l'application
Se placer à la racine du projet et lancer les microservices dans l'ordre suivant:
```text
Il faut utiliser la commande 'mvn spring-boot:run' dans le folder des projets suivant cet ordre:

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


    UserId 1:
    bbeeble0@instagram.com
    user

    UserId 4:
    sblanket3@columbia.edu
    user
    

### Email

- Afin de vérifier l'envoi des mails depuis fait depuis le site la connection à l'adresse mail peut se faire grâce aux
 identifiants suivant
 
    
    bibliothequemunicipale250@gmail.com
    rootbibliotheque

    Code de secours pour dévérouiller la double authentification:
    1793 6802	
    9975 0390


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

# Test des issues Github

#### Ticket 1

##### I. La liste de réservation ne peut comporter qu’un maximum de personnes correspondant à 2x le nombre d’exemplaires de l’ouvrage.

* Se connecter avec l'utilisateur id = 4    
 `UserId 100`  
 `TestUser@test.au`  
 `user`

* Selectionner l'ouvrage `Acid House, The`
* Clicker sur `Liste d'attente`
* L'erreur suivante va s'afficher en haut de l'ecran en rouge: `La liste d'attente est pleine.`
    
    
##### II. Il n’est pas possible pour un usager de réserver un ouvrage qu’il a déjà en cours d’emprunt
    
* Se connecter avec l'utilisateur id = 4
     `UserId 100`  
     `TestUser@test.au`  
     `user`

* Selectionner l'ouvrage `Crocodile Dundee II`
* Clicker sur `Reserver cet ouvrage`
* L'erreur suivante va s'afficher en haut de l'ecran en rouge: `La réservation est déjà présente dans la liste de reservations de l'utilisateur.`
    
    
##### III. Quand un usager emprunte le livre réservé ou si le délai de 48h après la notification est dépassé, sa réservation est supprimée de la liste et le processus recommence pour l’usage suivant dans la liste

* Le code se trouve dans la classe [ListeAttenteBatch](microservice-reservation/src/main/java/com/openclassrooms/bibliotheque/reservation/batch/ListeAttenteBatch.java)
    
* Pour tester ceci, il va falloir créer une ligne de la base de données, par example ajouter une ligne a la table, liste attente pour l'`utilisateurId 100`, `ouvrageId 10`, `notificationSent true`, pour le timestamp, mettre 49h avant la date actuelle.
* Le batch est un cron de `*/10 * * * * ?`, aprés une 10ene de seconde, la ligne devrait avoir été éffacé. 



##### IV. Lors de la recherche d’ouvrage, pour ceux indisponibles, il doit y avoir la date de retour prévue la plus proche et le nombre de personnes ayant réservé l’ouvrage. Si la liste d’attente de l’ouvrage n’est pas complète, il doit pouvoir demander une réservation. Il sera alors ajouté à la liste d’attente. L’usager doit pouvoir avoir une liste des réservations qu’il a en cours avec pour chaque ouvrage la prochaine date de retour prévue et sa position dans la liste d’attente

* Se connecter avec l'utilisateur id = 4
     `UserId 100`  
     `TestUser@test.au`  
     `user`

* Selectionner l'ouvrage `Prelude to a Kiss`
* Clicker sur `Liste d'attente`
* Une redirection vers les reservations se fait, on peut clicker sur l'onglet `EN ATTENTE`
* On pourra voir l'ouvrage en liste d'attente
    
  
##### V. L’usager doit pouvoir annuler une réservation
* Se connecter avec l'utilisateur id = 4
     `UserId 100`  
     `TestUser@test.au`  
     `user`

* Selectionner la page reservation
* Clicker sur l'onglet `EN ATTENTE`
* Clicker sur `ANNULER`
