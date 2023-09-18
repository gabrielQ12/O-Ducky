# User Story :

   ## Rappel MVP :  

Inscription / connection  / Achat / Menu cliquable / Panier / Chaque page prévue est accessible

| En tant que |          Je souhaite              |                Afin de                       |
|-------------|-----------------------------------|----------------------------------------------|
| visiteur    | Créer un compte                   | M'inscrire                                   |
| visiteur    | Voir les articles                 | Savoir si un canard me plais                 |
| Visiteur    | Lire les commentaires             | Consulter les avis                           |
| Admin       | modifier un article               | gerer les articles                           |
| Admin       | suprimer un article               | gerer les articles                           |
| Admin       | créer un article                  | gerer les articles                           |
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


|URL                              | HTTP   | Description              | données attendues         | Authorisation             |
|---------------------------------|--------|--------------------------|---------------------------|---------------------------|
|/admin                           | GET    | recupère un article      |  article  id              | get one article           |
|                                 | POST   | créer un article         |  article  id              | post one article          |
|                                 | PATCH  | modifier un article      |  article  id              | patch one article         |
|                                 | DELETE | supprimer un   article   |  article  id              | delete one article        |
|/user                            | POST   | Créer l'utilisateur      | email/password/pseudo     |  post user                |
|/login                           | POST   | Connexion de l'user      | email/password/pseudo     |  post user  / verify      | 
|/user/:id                        | GET    | recupérer un utilisateur | pseudo/password           |  get user                 | 
|                                 | PATCH  | modifier un utilisateur  | pseudo/password           |  patch pseudo/password    | 
|                                 | DELETE | supprimer l'utilisateur  | pseudo/password           |  delete account           |
|/articles                        | GET    | récupère les articles    | tous les articles         |  get all articles         |
|/articles/articles:id            | GET    | récupère 1 article       |  un article id            |  Get one article          |
|/articles/article:id/commentaire | GET    | récupère les commentaires| des commentaires          |  Get all com from article |
|                                 | POST   | Mettre des commentaires  |  commentaire id           |  Post one commentaire     |
|                                 | PATCH  | modifier son commentaire |  commentaire id           |  Patch one commentaire    |
|                                 | DELETE | supprimer son commentaire|  commentaire id           |  delete one commentaire   |
|/user/basket                     | GET    | récupéré les articles    | articles                  |  Get all articles         |
|                                 | PATCH  | Modifier le nb d'articles| nombres                   |  Patch nb article         |
|                                 | DELETE | Supprimer un article     | article id                |  delete article           |

# MCD

# MLD

# Dictionnaire de données : 