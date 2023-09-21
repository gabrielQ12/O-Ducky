# User Story :

   ## Rappel MVP :  

 Inscription / Connection / Filtrage des articles de A à Z  / Achat / Panier / Commentaires

| En tant que |          Je souhaite              |                Afin de                       |
|-------------|-----------------------------------|----------------------------------------------|
| visiteur    | Créer un compte                   | M'inscrire                                   |
| visiteur    | Voir les articles                 | Savoir si un canard me plait                 |
| visiteur    | Filtrer les articles              | Chercher un article                          |
| Visiteur    | Lire les commentaires             | Consulter les avis                           |
| Admin       | Modifier un article               | Gerer les articles                           |
| Admin       | Supprimer un article              | Gerer les articles                           |
| Admin       | Créer un article                  | Gerer les articles                           |
| Utilisateur | Se connecter                      | Utiliser le site                             |
| Utilisateur | Accéder au panier                 | Mettre à jour le panier                      |
| Utilisateur | Commenter un article              | Donner un avis sur le produit                |
| Utilisateur | Modifier le panier                | Gérer mes achats                             |
| Utilisateur | Ouvrir la page d'un article       | Voir les détails de l'article                |         


# Arborescence : 

```
|
|-----/home
|
|-----/articles
|         |
|         |------------/article:id
|                           |---------Commentaire 
|           
|
|--------------/signup
|
|
|--------------/login
                  |
                  |
                  |--------/basket
                                 
                                                      

```


# Liste des routes / CRUD (Create / Read / Update / Delete): 


|URL                              | HTTP   | Description               | Données attendues        | Autorisation             |
|---------------------------------|--------|---------------------------|--------------------------|--------------------------|
|/admin                           | GET    | Recupèrer un article      | Article  id              | GET one article          |
|                                 | POST   | Créer un article          | Article  id              | POST one article         |
|                                 | PATCH  | Modifier un article       | Article  id              | PATCH one article        |
|                                 | DELETE | Supprimer un article      | Article  id              | DELETE one article       |
|/user                            | POST   | Créer l'utilisateur       | Email/password/name      | POST user                |
|/login                           | POST   | Connecter l'user          | Email/password/name      | POST user / verify       | 
|/user/:id                        | GET    | Recupérer un utilisateur  | name/password            | GET user                 | 
|                                 | PATCH  | Modifier un utilisateur   | name/password            | PATCH name/password      | 
|                                 | DELETE | Supprimer l'utilisateur   | name/password            | DELETE account           |
|/articles                        | GET    | Récupèrer les articles    | Tous les articles        | GET all articles         |
|/articles                        | GET    | Trier de A à Z            | Tous les articles        | ORDER by                 |
|/articles/:articlesid            | GET    | Récupèrer 1 article       | Un article id            | GET one article          |
|/articles/:articleid/comment     | GET    | Récupèrer les commentaires| Des commentaires         | GET all com from article |
|                                 | POST   | Mettre des commentaires   | Commentaire id           | POST one comment         |
|                                 | PATCH  | Modifier son commentaire  | Commentaire id           | PATCH one comment        |
|                                 | DELETE | Supprimer son commentaire | Commentaire id           | DELETE one comment       |
|/user/cart                       | GET    | Récupérer les articles    | Articles                 | GET all articles         |
|                                 | PATCH  | Modifier le nb d'articles | Nombres                  | PATCH nb article         |
|                                 | DELETE | Supprimer un article      | Article id               | DELETE article           |

# MCD
FAIT , voir PNG dans le repo

<p align="center">
  <img src="./MCD.png">
</p>


# MLD

Entité USER: 
   - user_identifier, name, mail, password

Entité ARTICLE:
   - article_identifier, title, content, pic, price

Entité ORDER:
   - order_identifier, status, #user_identifier

Tables de liaison : 

Entité COMMENTS:
   - #user_identifier, #article_identifier, content
  
Entité CONTAINS: 
   - #article_identifier, #order_identifier, quantity

# Dictionnaire de données

Table USER :

| Champ           | Type       | Spécificités                                   | Description                             |
|-----------------|------------|------------------------------------------------|-----------------------------------------|
| user_identifier | INTEGER    | INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY   | Identification unique généré auto en BDD|
| name            | TEXT       | NOT NULL                                       | Nom de l'utilisateur                    |
| mail            | TEXT       | NOT NULL UNIQUE (penser aux REGEX pour les @..)| Adresse mail de l'utilisateur           |
| password        | TEXT       | NOT NULL (60)                                  | 60 caract pour stocker un hachage Bcrypt|


Table ARTICLE:

| Champ              | Type       | Spécificités                                   | Description                             |
|--------------------|------------|------------------------------------------------|-----------------------------------------|
| article_identifier | INTEGER    | INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY   | Identification unique généré auto en BDD|
| title              | TEXT       | NOT NULL UNIQUE                                | Nom de l'article                        |
| content            | TEXT       | NOT NULL                                       | Description de l'article                |
| pic                | BYTEA      | NOT NULL UNIQUE                                | Image de l'article stocker en binaire   |
| price              | INTEGER    | NOT NULL                                       | Prix de l'article                       |



Table ORDER:

| Champ              | Type       | Spécificités                                   | Description                             |
|--------------------|------------|------------------------------------------------|-----------------------------------------|
| order_identifier   | INTEGER    | INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY   | Identification unique généré auto en BDD|
| status             | BOOLEAN    | CHECK (status IS TRUE)                         | Si le statut est TRUE larticle est dans le panier,  si le statut est FALSE l'article sort du panier
| #user_identifier   | INTEGER    | INT REFERENCES user (id)                       | Clé étrangère                           |

Tables de liaison : 

Table COMMENTS:

| Champ              | Type       | Spécificités                                   | Description                             |
|--------------------|------------|------------------------------------------------|-----------------------------------------|
| #user_identifier   | INTEGER    | INT REFERENCES user (id)                       | Clé étrangère                           |
| #article_identifier| INTEGER    | INT REFERENCES article (id)                    | Clé étrangère                           |
| content            | TEXT       | NOT NULL                                       | Contenu du commentaire                  |


Table CONTAINS: 

| Champ              | Type       | Spécificités                                   | Description                             |
|--------------------|------------|------------------------------------------------|-----------------------------------------|
| #article_identifier| INTEGER    | INT REFERENCES user (id)                       | Clé étrangère                           |
| #order_identifier  | INTEGER    | INT REFERENCES user (id)                       | Clé étrangère                           | 
| quantity           | INTEGER    | NOT NULL                                       | Quantité darticles                      |


