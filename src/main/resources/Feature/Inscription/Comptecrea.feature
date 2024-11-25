Feature:   Création de compte sur le site web desbugs.com

  Inscription des profils utilisateurs sur le site desbugs.com
# ***** Proposition initiale ********************************************
  Scenario: Création d'un compte utilisateur

    Given Je souhaite accéde au site pour créer un compte utilisateur en saisissant toutes les informations demandés
    When Je saisie toutes les informations demandés au format correcte afin de créer un compte utilisateur
    Then Le compte est créé

    #Proposition de correction
    Given J'accède à la page d'inscription
    When Je saisie toutes les informations demandés au format correcte
    Then Je suis redirigée vers la page d'accueil
    And le message "Bienvenue Hawa" s'affiche
    #ou bien
    Given l'utilisateur accède à la page d'inscription



  Scenario: Création d'un compte Entreprise
    Given  j'accéde à la page de création un compte en tant qu'entreprise
    When Je saisie toutes les informations demandés au format correcte
    Then Un message de confirmation s'affiche,Le compte est créé


  Scenario: Création de compte avec email incorrect
  Given je souhaite accéder au site pour créer un compte en tant qu'utilisateur ou entreprise
  When Je saisie toutes les informations demandés,lorsqu'un email incorrect est saisie
  Then un message d'erreur s'affiche et la création de compte est stopper.


  Scenario:  Création de compte avec mot de passe incorrect
    Given En tant qu'utilisateur ou entreprise , je souhaite accéder au site pour créer un compte
  When Je saisie toutes les informations demandés,lorsqu'un mot de passe incorrect est saisie
  Then un message d'erreur s'affiche.

