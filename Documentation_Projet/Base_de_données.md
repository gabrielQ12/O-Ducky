# User Story :

   ## Rappel MVP :  

Inscription / connection  / Achat / Menu cliquable / Panier / Chaque page prévue est accessible

| En tant que |          Je souhaite              |                Afin de                       |
|-------------|-----------------------------------|----------------------------------------------| 
| visiteur    | Créer un compte                   | M'inscrire                                   |
| visiteur    | Voir les articles                 | Savoir si un canard me plais                 |
| Visiteur    | Lire les commentaires             | Consulter les avis                           |
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

| URL | GET | POST | PATCH| DELETE |
|-----|-----|------|------|--------|
| /admin                               | recupére article | créer article | modifier article|suprime article|
| user                                 |/| Créer l'utilisateur   |/|/|
| login/                               |/| se connecter en recupérant l'user en BDD  |/|/| 
| articles                             | recupère les articles dans BDD |/|/|/|
| articles/article:id                  | recupère l'article |/|/|/|
| articles/article:id/commentaire      | recupère les com deja presents | il met un com |il modifi son com | il suprime son com|
| user/basket                          | recupere les articles qu'il a mis dans le panier |/| modifier le nombre darticle | suprimer article

|---------------------------------|

|URL        | HTTP   | Description             | données attendues     | Authorisation|
|-----------|--------|-------------------------|-----------------------|--------------|
|/admin     | GET    | recupère les articles   |  get all articles     | full acces   |
|           | POST   | créer les articles      |  post one article     | full acces   |
|           | PATCH  | modifier les articles   | patch one article     | full acces   |
|           | DELETE | supprimer les articles  | delete one article    | full acces   |
|           |        |                         |                       |              |
|/user      | POST   | Crer l'utilisateur      | email/password/pseudo | requete post |
|           |        |                         |                       |              |
|/login     | POST   | Connexion de l'user     | email/password/pseudo | requete post |
|           |        |                         |                       |              |
|/user/:id  | GET    | recupérer un utilisateur| pseudo/password       | requete get
|           | PATCH  | modifier un utilisateur | pseudo/password       | requete patch
|           | DELETE | suprimer l'utilisateur  | pseudo/password       | requete delete













- home/
- home/articles
- home/articles/article:id
- home/articles/article:id/commentaire

- login/

- user/signup
- user/basket



# MCD

# MLD

# Dictionnaire de données : 