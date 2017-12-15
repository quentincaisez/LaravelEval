Projet Laravel

Tout d'abord je me suis posé la question du sujet que j'allais aborder pour
le crud .

C'est alors que j'ai choisis la thématique des jeux vidéos.

Dans un premier temps je suis passé sur papier pour faire ma base de donnée
et voire les possibles éventualitéses qui s'offres à moi .

Ma base de donnée est composé de 3 table :
        -Plays
        -Constructors
        -Dates

Avec ces 3 tables nous avons une liaison Many to Many entre Plays et
Constructors ( Nom des consoles ) car un Jeu peut être sur plusieur plateformes
et une plateforme peut contenir plusieurs jeux .
Nous retrouvons aussi une simple entre Plays et Dates car un jeu a une seule
date de sortie

La difficulté rencontrée ici est le faite lorsqu'on insère un nouveau jeu
le nom de la plateforme ne se met pas dans la page d'acceuil. Plus
particulièrement avec la table intermédiraire

Pour tout ce qui est des input type number j'ai passé un max et min pour
pas se retrouver avec des nombres bizzare . Idem pour les inputs type="text"
jai inserer required="required" pour éviter de laisser un champ vide et que
cela fasse une erreur.
Même si c'est pas la meilleure méthode dans un premier temps cela empêche
les erreurs.

Après la méthode delete insert et update fonctionne.

Au niveau du design,assez simple Fond noir avec une couleur silver.
Au niveau de responsive, j'ai utilisé les flexbox.

