Feature : Création de compte du site desbugs.com
  Pour accéder aux différentes fonctionnalités du site desbugs.com,
  l’utilisateur doit au préalable avoir créé un compte utilisateur
  ou entreprise en renseignant des données correctes et valides
#Ajout des données


  Background: connexion au site debugs.com
    Given Je suis sur la page de création de compte du site desbugs.com


  Scenario Outline : Création de compte avec un e-mail ou mot de passe invalide
    Given La création de compte de type <Utilisateur> est sélectionnée
    When Je renseigne un e-mail <email> ou un mot de passe <mdepasse>  invalide
    Then J’obtiens le message d’erreur "Le couple email/mot de passe invalide, corriger votre saisie"

    Examples:
      | email             | mdepasse | Utilisateur |
      | abcd@lolo         | Mommied  | utilisateur |
      | abcdefg@8gmail.fr | Poussin+ | entreprise  |

