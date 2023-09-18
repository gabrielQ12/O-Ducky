## User Story :


| En tant que |          Je souhaite              |                Afin de                       |
|-------------|-----------------------------------|----------------------------------------------| 
| Admin       | Voir les utilisateurs             | Voir les commandes en cours de l'utilisateur |
| Admin       | Gérer les utilisateurs            | Supprimer certains utilisateurs              |
| Admin       | Mettre à jour les articles        | Ajouter / Supprimer / Modifier un article    |
| Utilisateur | Créer un compte                   | M'inscrire                                   |
| Utilisateur | Se connecter                      | Utiliser le site                             |
| Utilisateur | Accéder au panier                 | Mettre à jour le panier                      |
| Utilisateur | Sélectionner un article           | Mettre en favori / panier                    |
| Utilisateur | Commenter un article              | Donner un avis sur le produit                |
| Utilisateur | Lire les commentaires             | Consulter les avis                           |
| Utilisateur | Modifier le panier et les favoris | Gérer mes achats et préférences              |
| Utilisateur | Ouvrir la page d'un article       | Voir les détails de l'article                |         


## MCD

## MLD

## Arborescence : 

```
|
|-----/home
       |--------------/home/articles
       |                 |
       |                 |------------/article
       |
       |
       |
       |--------------/signup
       |
       |
       |--------------/login
                         |
                         |--------/admin
                         |         |
                         |         |------------------/users_list
                         |         |                      |--------/user:id
                         |         |                      
                         |         |
                         |         |------------------/articles_list
                         |                                |--------/article:id
                         |
                         |
                         |
                         |
                         |--------/user
                                   |------------------/wishlist
                                   |------------------/basket
                                                        |
                                                        |--------/payment

```




## Liste des routes / CRUD (Create / Read / Update / Delete): 

GET
POST
PATCH
DELETE

- home/
- home/articles

- login/
- login/admin
- login/user

Admin : 

- admin/users_list
- admin/users_list/user:id
- admin/articles_list
- admin/articles_list/article:id

User : 

- user/signup
- user/wishlist
- user/basket
- user/basket/payment



## Dictionnaire de données : 