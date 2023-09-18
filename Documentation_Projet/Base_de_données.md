# User Story :

   ## Rappel MVP :  

Inscription / connection  / Achat / Menu cliquable / Panier / Chaque page prévue est accessible

| En tant que |          Je souhaite              |                Afin de                       |
|-------------|-----------------------------------|----------------------------------------------| 
| Utilisateur | Créer un compte                   | M'inscrire                                   |
| Utilisateur | Se connecter                      | Utiliser le site                             |
| Utilisateur | Accéder au panier                 | Mettre à jour le panier                      |
| Utilisateur | Commenter un article              | Donner un avis sur le produit                |
| Utilisateur | Lire les commentaires             | Consulter les avis                           |
| Utilisateur | Modifier le panier                | Gérer mes achats                             |
| Utilisateur | Ouvrir la page d'un article       | Voir les détails de l'article                |         


# Arborescence : 

```
|
|-----/home
       |--------------/home/articles
       |                 |
       |                 |------------/article:id
       |                                  |---------Commentaire 
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
| user/signup                          |  /   | Créer l'utilisateur   |  /   |  /  |
| login/                               | / | se connecter en recupérant l'user en BDD  |/  |/  | 
| home/                                | recupère les articles pour les affiché | / |/   | / |
| home/articles                        | recupère les article dans BDD |/  |  / | / |
| home/articles/article:id             | recupère l'article | / | / | / |
| home/articles/article:id/commentaire | recupère les com deja present | il met un com |il modifier son com | il suprime son com|
| user/basket                          | recupere les articles qu'il a mis dans le panier |/ | modifier le nombre darticle | suprimé article





- home/
- home/articles
- home/articles/article:id
- home/articles/article:id/commentaire

- login/

- user/signup
- user/basket



# Dictionnaire de données : 

# MCD

# MLD