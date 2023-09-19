## Présentation :

Le projet O'Ducky est un site marchand qui vend des canards en plastique.

Le canard en plastique : Est une icône depuis les années 40, ce petit canard jaune est collectionné à travers le monde, certains en possèdent plus de 1000 exemplaires différents.

Le Rubber Duck Debugging : Cette technique est une méthode utilisée par les développeurs afin de debugger leur code sans géner leurs collègues. De cette manière ils peuvent parler à haute voix à cette petite mascotte mignonne. 

Notre site vendra des canards à destination des passionnés et des developpeurs.


## Définition des besoins : 

Aider les développeurs à débugger leur code par le biais de canards en plastique, ou bien pour les passionnés de canards.
Age cible : 9 ans a 99 ans. 


## Objectifs : 

Créer un site marchand qui permettra aux clients de se logger, d'avoir un panier, reprendre un achat plus tard, laisser un commentaire,  valider un achat et payer.


## Solutions : 

- Réaliser une base de données complète avec les routes et requêtes associées. 
- Mise en place de securité.
- Gestion des cookies et de la session du panier notamment. 
- Un front accessible et esthétique. 



## Fonctionnalités :

- Inscription
- Login
- Panier (nombre d'articles dans le panier): 
- Espace commentaires
- Pop-up pour accepter les cookies
- Reprendre un achat
- Valider un achat
- Un compte admin


## Navigateur compatible : 

- Chrome 
- Firefox 
- Edge 


## MVP : 

- Inscription
- Connection
- Filtrage des articles de A à Z 
- Achat
- Panier
- Commentaires


## Evolutions potentielles : 

- Mettre des articles en favoris
- Une chèvre en body qui danse / qui réagit à la souris de l'user
- Panier dynamique : déroule au hover
- Pastille avec le nombre d'articles dans le panier
- Bot qui répond aux questions (codable via POE) 
- Front qui se modifie en fonction des saisons 
- Une page de paiement fictive
- Espace client (Commandes passées, favoris, historiques des commentaires, informations personnelles )

## Liste des roles : 

```
Product owner      ==> Constance (Fork Master)
Scrum master       ==> Gabriel   (DataBase Daddy)
Lead dev front     ==> Anais     (Fourchette en second)
Lead dev back      ==> Gabriel
Git master         ==> Lea       (hell segnora del Git)
Référent technique ==> Anais (React)
Référent technique ==> Constance (PGAdmin / SQL / Tout)
```

##	Technologie utilisées :

GitHub pour la gestion de projet.  

Front : React native + CSS + TypeScript 

Back : PostgreSQL + PGadmin + mocha & jest pour le test + bcrypt + salt

## Fonctionnement de github : 

Deux repo : un front et un back.

Chacun push sur sa branche (feature)

Lea mergera chaque pull request vers la branch develop. et a chaque fin de sprint Lea mergera vers la master.