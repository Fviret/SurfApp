Application d entrainement et de formation a l utilisation de Xcode en Swift.

  Dans un premier temps la mise en place d une application simple dans la gestion des Views et de la navigation entre differentes view via une Tab Bar Controller
3 View, la premiere, une page d acceuil avec un image qui va prendre tout l ecran et un bouton "contactez nous" qui redirige vers une autre view qui ne fait pas partie de la navigation de base de l application.
La deuxieme page est une View ou , grace a des boutons a droite et a gauche de l ecran, je peux voir des photo contenu dans un tableau. je me promene donc sur un index fixe. Chaque photo a un aspect arrondi, si je clique dessus je peux arriver sur une page de presentation en relation avec la premiere photo.
La troisieme partie est une presentation de lieu avec un choix de photo en bas de l ecran, lorsque je choisis une photo elle s affiche en grand en haut de l ecran.

une quatrieme page est cree plus tard,
c est un formulaire interractif avec :
-des text field pour le nom et le prenom,
-un stepper pour l age (+ et -)
-un bouton switch pour le genre
-un segmentcontrol pour la situation civil (celibataire, marié, divorcé, veuf)
-un date picker pour choisir sa date de naissance
-un slider pour le poids.

et un simple bouton valider pour avoir une fonction generale qui va permettre differents check (parties remplies, certain age pour repondre, etc)
