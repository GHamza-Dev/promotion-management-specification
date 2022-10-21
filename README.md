# Promotion akaMarket Partie 1

**_NOTE:_**  you can view this file in [https://www.notion.so/](https://daisy-gate-e26.notion.site/Promotion-akaMarket-Partie-1-301fb049f680457296321e0383565861)

@date: **21.10.2022**

## Description

L’hypermarché ****akaMarket**** Maroc souhaite simplifier la gestion des promotions de ses produits au niveau de tous les centres du royaume.

Pour se faire:

1.  L**’admin général du groupe akaMarket** va prendre en charge la gestion de **chaque admin du centre par ville,**
2.  Une ville peut **avoir 1 ou plusieurs centre.**
3.  Chaque centre est géré par **un seul Admin**.
4. La gestion **de promotion** est gérée chaque jour au niveau du centre, à partir de son interface l’admin **(déjà crée par l’admin général email et mot de passe provisoir envoyé par email)** crée une liste des **promotions** par **catégorie des produits,** par exemple dans la catégorie multimédia on va ajouter une promotion des pc portable qui va être de 10% avec 100dhs gagné sur la carte fidélité .
5. Par la suite un **responsable de rayon(crée par l’admin, email et mot de passe provisoire envoyé par email)** multimédia se connecte à son interface pour consulter sa liste des promotions. 
6.  Le **responsable de rayon** peut **accepter ou refuser** une **promotion** selon la quantité du stock disponible dans le centre, si par exemple la quantité du stock des pc portable est de 80 unités, il va accepter la promotion en ajoutant un commentaire qui détermine la quantité des produits disponible

L’admin du ****akaMarket**** consulte par la suite toutes les promotions appliquées et non appliquées à son centre

Pour une meilleure gestion des promotions ****akaMarket**** exige que toutes les promotions soient consultables par les responsable des rayon seulement entre 8h-12h00 du matin, si un responsable de rayon se connecte hors cet intervalle les promotions seront indisponible et si le responsable du rayon ne fait aucune action la promotion sera non traitée est affichée chez l’admin

Une Règle générale s’applique à toutes les promotions du Groupe ****akaMarket**** Maroc :

Chaque promotion ne doit pas dépasser 50% du prix du produit

Chaque 5% de réduction vaut 50dhs de points de fidélité gagnés

La promotion des produits multimédia ne doit pas dépasser 20% Chaque opération faite dans le système est enregistrée dans fichier de journalisation et dans la base de données l'Admin général du groupe ****akaMarket**** souhaite visualiser les statistiques des promotions appliquées et non apliquées sur son interface Chaque Promotion est valable selon la quantité du stock disponible et consultable une fois entre 8h-12h , si par exemple un Admin lance une application à 8h00, elle sera vue seulement par le responsable du rayon de 8hà 12h s'il n'a pas traité sera non appliqué dans le système

## Entities:

---

### → Super admin

- Manage center admins

### → Center admin (Admin)

- Create promotion
    - Each promotion have:
        - Category
        - Percentage (should be <+= 50%)
        - Loyalty points (Calculated based on the promotion percentage: 5% = 50dh)
        - Status (accepted, refused, not-treated)
        - Date
        - Availability
- List his promotions with thier status

### → Departement manager

- List promotions
- Accept or refuse promotion with explanation (Description…)

## Class diagram
![class diagram](class%20diagram.svg)
