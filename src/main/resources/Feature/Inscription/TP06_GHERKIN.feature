Feature : Création de compte du site desbugs.com
  Pour accéder aux différentes fonctionnalités du site desbugs.com,
  l’utilisateur doit au préalable avoir créé un compte utilisateur
  ou entreprise en renseignant des données correctes et valides
#Ajout des données


  Background: connexion au site debugs.com
    Given Je suis sur la page de création de compte du site desbugs.com
    And La création de compte de type "Utilisateur" est sélectionnée

  Scenario : Création d’un compte utilisateur

    When Je crée mon compte avec des données correctes et valides suivantes:

   | Nom     | Prenom  | Identifiants   |     Telephone|       Email          | Mot de passe     | Confirmation mot de passe||CGU |CAPTCHA|

   |  Sanga  |  Héra |   HeraSanga      |  0656268954  | HeraSanga@hotmail.fr |   12398MIAMI     |  12398MIAMI              ||True |True|

     Then J’arrive sur mon compte utilisateur


  Scenario : Création de compte avec un e-mail invalide

    When Je renseigne un e-mail invalide
    Then J’obtiens un message d’erreur


  Scenario : Création de compte avec un mot de passe invalide

    When Je renseigne un mot de passe de moins de 8 caractères
    Then J’obtiens un message d’erreur

