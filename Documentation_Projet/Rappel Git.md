## Commandes Git : 


Début de sprint: 

    Git clone SSH

    /!\ Ne jamais bosser sur la branche Master.

    Récupérer  la branche distante en cours : git checkout develop/**


 Début de feature :

    vérifier sur quel branche on est : git branch

    créer une branche : git checkout -b feature/**

    vérifier sur quel branche on est : git branch

enregistrement régulier : 

    git add .
    git commit -m "nom en anglais , pas de MAJ avec underscore , sans espace
    git push

 Fin de feature :

    Lea récupère la pull request,  ensemble on verifie que tout est OK,  Lea envoi la pull request sur la branch develop

 Fin de sprint : 

    Retourner sur  la branche distante en cours : git checkout develop/**
    git pull (récupération du repo distant)  ou git pull -r (forcage récupération du repos distant)
    
 Début de sprint:   

  Début de feature :

    vérifier sur quel branche on est : git branch

    créer une branche : git checkout -b feature/**

    vérifier sur quel branche on est : git branch


    Toolbox git : 

    git log --pretty=format:"%cn committed %h on %cd" : afficher tous les commit

   