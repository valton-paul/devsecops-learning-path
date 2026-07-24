# Parcours — 05-securite

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/securiser/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Checklist globale

- [ ] Phase A — Concepts terminée
- [ ] Phase B — Menaces terminée
- [ ] Phase C — Durcissement Linux terminée
- [ ] Phase D — Sécurité réseau terminée
- [ ] Phase E — Secrets terminée
- [ ] Phase F — Analyse de code terminée
- [ ] Phase G — Conteneurs / K8s terminée (après dossier 10)
- [ ] Phase H — Supply chain terminée
- [ ] Phase I — Accès sécurisé terminée
- [ ] Phase J — SOCLE (référentiel + conformités) parcourue
- [ ] Annexe incidents SOCLE : au moins 5 études de cas lues
- [ ] Phase K — Outils / immuabilité / HA parcourue
- [ ] Dossier validé

## Vision du dossier

La section **Sécuriser** du cursus DevSecOps couvre l’ensemble du cycle défensif : principes, menaces, durcissement des systèmes, périmètre réseau, gestion des secrets, analyse de code, conteneurs, supply chain, accès Zero Trust, référentiel SOCLE et boîte à outils. Ce dossier local `05-securite` te guide dans cet océan de contenu avec un fil rouge pratico-pratique.

Tu n’es pas censé tout maîtriser d’un coup : l’objectif est de **savoir où agir** (poste, réseau, code, pipeline, cloud) et **quels leviers** utiliser en cohérence avec la culture DevSecOps du dossier `01-culture-devsecops`. Les phases pratiques (C à I) s’appuient sur une administration Linux solide (`02-administration-linux`) et une compréhension réseau (`03-reseaux`). L’AppSec et la supply chain gagnent à être lues après des bases Git et développement (`04-developper-des-applications`).

Le référentiel **SOCLE** (phase J) arrive une fois les fondations techniques posées : il formalise menaces, contrôles et conformités. Le **catalogue d’incidents** est listé intégralement en fin de phase J : lecture ciblée, études de cas, **non bloquante** pour valider le parcours. Enfin, la phase K regroupe scanners transverses, immuabilité (NixOS) et HA — sujets avancés ou complémentaires.

## Prérequis

- **Dossiers locaux obligatoires :** `02-administration-linux`, `03-reseaux`
- **Fortement recommandés :** `04-developper-des-applications` (Git, bases CI) pour les phases F (analyse de code) et H (supply chain)
- **Pour la phase G :** `10-maitriser-la-conteneurisation` (Docker, Kubernetes) avant Kubescape, NeuVector et la page K8s
- **Concepts :** triade CIA, moindre privilège, défense en profondeur ; notions TCP/IP, DNS, pare-feu ; familiarité avec un éditeur et la ligne de commande

## Logique pédagogique (pourquoi cet ordre)

Le menu du site regroupe par thème technique (secrets, réseau, SOCLE…) ; pour un profil débutant→intermédiaire, on commence par le **langage commun** (concepts, menaces), puis on **durcit** ce que tu administres déjà (Linux, réseau), avant les sujets « transverses » (secrets, scanners, supply chain). Les accès Zero Trust viennent quand tu sais pourquoi SSH, pare-feux et identités machine comptent.

SOCLE et ses dizaines de pages d’incidents ne bloquent pas la progression : ils servent de **carte** et de **retours d’expérience** une fois que tu as manipulé fail2ban, SOPS ou Trivy. Les outils divers et la HA ferment le parcours pour comparer et approfondir sans disperser le début du parcours.

## Ordre de lecture conseillé

### Phase A — Concepts et principes fondateurs
#### 1. Sécu
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/](https://blog.stephane-robert.info/docs/securiser/)
- **Pourquoi ici :** Jalon d’entrée : cartographier l’étendue du chapitre sécurité avant de plonger dans les concepts.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 2. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/](https://blog.stephane-robert.info/docs/securiser/concepts/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 3. La triade CIA : ce que l'on protège
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/cia-triad/](https://blog.stephane-robert.info/docs/securiser/concepts/cia-triad/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 4. Minimisation : ne garder que le strict nécessaire
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/minimisation/](https://blog.stephane-robert.info/docs/securiser/concepts/minimisation/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 5. Moindre privilège
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/moindre-privilege/](https://blog.stephane-robert.info/docs/securiser/concepts/moindre-privilege/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 6. Séparation des privilèges
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/separation-privileges/](https://blog.stephane-robert.info/docs/securiser/concepts/separation-privileges/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 7. Sécurité par défaut (refus par défaut)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/securite-par-defaut/](https://blog.stephane-robert.info/docs/securiser/concepts/securite-par-defaut/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 8. Défense en profondeur
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/defense-profondeur/](https://blog.stephane-robert.info/docs/securiser/concepts/defense-profondeur/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 9. Surface d'attaque
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/surface-attaques/](https://blog.stephane-robert.info/docs/securiser/concepts/surface-attaques/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 10. Confiance transitive : hériter du risque de sa chaîne
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/confiance-transitive/](https://blog.stephane-robert.info/docs/securiser/concepts/confiance-transitive/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 11. Pas de sécurité par l'obscurité
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/securite-par-obscurite/](https://blog.stephane-robert.info/docs/securiser/concepts/securite-par-obscurite/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 12. Traçabilité et non-répudiation
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/non-repudiation/](https://blog.stephane-robert.info/docs/securiser/concepts/non-repudiation/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 13. Dette de sécurité
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/dette-securite/](https://blog.stephane-robert.info/docs/securiser/concepts/dette-securite/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 14. Zero Trust
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/concepts/zerotrust/](https://blog.stephane-robert.info/docs/securiser/concepts/zerotrust/)
- **Pourquoi ici :** Vocabulaire et principes avant toute mise en œuvre : base pour lire durcissement, réseau et AppSec sans confusion.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase B — Menaces, attaquants et mindset défensif
#### 15. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/](https://blog.stephane-robert.info/docs/securiser/menaces/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 16. profil des attaquants
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/hackers/](https://blog.stephane-robert.info/docs/securiser/menaces/hackers/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 17. phases d'une attaque
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 18. 1. Reconnaissance
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/reconnaissance/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/reconnaissance/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 19. 2. Armement
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/armement/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/armement/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 20. 3. Livraison
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/livraison/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/livraison/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 21. 4. Exploitation
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/exploitation/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/exploitation/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 22. 5. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/installation/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/installation/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 23. 6. Command & Control (pilotage à distance)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/command-control/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/command-control/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 24. 7. Actions sur objectifs
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phases/actions-objectifs/](https://blog.stephane-robert.info/docs/securiser/menaces/phases/actions-objectifs/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 25. MITRE ATT&CK : tactiques et techniques
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/mitre-attack/](https://blog.stephane-robert.info/docs/securiser/menaces/mitre-attack/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 26. Les types de logiciels malveillants
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/malwares/](https://blog.stephane-robert.info/docs/securiser/menaces/malwares/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 27. Ransomware (rançongiciel)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/ransomware/](https://blog.stephane-robert.info/docs/securiser/menaces/ransomware/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 28. Phishing et ingénierie sociale
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/phishing/](https://blog.stephane-robert.info/docs/securiser/menaces/phishing/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 29. Le renseignement sur les menaces (CTI)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/threat-intelligence/](https://blog.stephane-robert.info/docs/securiser/menaces/threat-intelligence/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 30. GTFObins : détecter et bloquer les binaires Linux exploitables
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/gtfobins/](https://blog.stephane-robert.info/docs/securiser/menaces/gtfobins/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 31. LOLBAS : binaires Windows détournés
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/menaces/lolbas/](https://blog.stephane-robert.info/docs/securiser/menaces/lolbas/)
- **Pourquoi ici :** Comprendre qui attaque, comment et pourquoi, avant de configurer pare-feux et durcissement.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase C — Durcissement des systèmes Linux (complète le dossier 02)
#### 32. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/](https://blog.stephane-robert.info/docs/securiser/durcissement/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 33. Permissions et propriété des fichiers : durcir un système Linux
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/permissions-ownership/](https://blog.stephane-robert.info/docs/securiser/durcissement/permissions-ownership/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 34. Durcir l'accès SSH
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/ssh/](https://blog.stephane-robert.info/docs/securiser/durcissement/ssh/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 35. Durcir l'Authentification avec PAM
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/pam/](https://blog.stephane-robert.info/docs/securiser/durcissement/pam/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 36. Durcir et journaliser sudo
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/sudoers/](https://blog.stephane-robert.info/docs/securiser/durcissement/sudoers/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 37. Restreindre cron et at : maîtriser qui planifie des tâches
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/cron-at/](https://blog.stephane-robert.info/docs/securiser/durcissement/cron-at/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 38. Durcir le noyau avec sysctl
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/sysctl/](https://blog.stephane-robert.info/docs/securiser/durcissement/sysctl/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 39. Désactiver des modules noyau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/kernel-modules/](https://blog.stephane-robert.info/docs/securiser/durcissement/kernel-modules/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 40. Durcir les points de montage
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/mounts/](https://blog.stephane-robert.info/docs/securiser/durcissement/mounts/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 41. Protéger GRUB par mot de passe
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/grub/](https://blog.stephane-robert.info/docs/securiser/durcissement/grub/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 42. Bannières d'avertissement Linux : issue, issue.net et motd
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/banners/](https://blog.stephane-robert.info/docs/securiser/durcissement/banners/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 43. SELinux ou AppArmor : choisir
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/controle-acces-obligatoire/](https://blog.stephane-robert.info/docs/securiser/durcissement/controle-acces-obligatoire/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 44. SELinux : comprendre, dépanner et désactiver
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/selinux/](https://blog.stephane-robert.info/docs/securiser/durcissement/selinux/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 45. Comprendre et utiliser AppArmor
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/apparmor/](https://blog.stephane-robert.info/docs/securiser/durcissement/apparmor/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 46. fapolicyd (whitelisting RHEL)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/fapolicyd/](https://blog.stephane-robert.info/docs/securiser/durcissement/fapolicyd/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 47. auditd : journaliser et tracer un serveur Linux
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/auditd/](https://blog.stephane-robert.info/docs/securiser/durcissement/auditd/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 48. Sandboxing des services systemd
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/systemd/](https://blog.stephane-robert.info/docs/securiser/durcissement/systemd/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 49. Verrouiller GNOME avec dconf : écran, bannière et médias
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/dconf/](https://blog.stephane-robert.info/docs/securiser/durcissement/dconf/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 50. Appliquer les recommandations CIS Benchmarks
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/cis-benchmarks/](https://blog.stephane-robert.info/docs/securiser/durcissement/cis-benchmarks/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 51. ANSSI BP-28
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/anssi-bp-28/](https://blog.stephane-robert.info/docs/securiser/durcissement/anssi-bp-28/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 52. OpenSCAP : auditez automatiquement la sécurité de vos serveurs
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/openscap/](https://blog.stephane-robert.info/docs/securiser/durcissement/openscap/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 53. Auditez la sécurité de vos serveurs avec Lynis
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/lynis/](https://blog.stephane-robert.info/docs/securiser/durcissement/lynis/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 54. Testinfra : tester votre infrastructure avec Python
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/outils/testinfra/](https://blog.stephane-robert.info/docs/securiser/durcissement/outils/testinfra/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 55. Compiler un noyau durci KSPP
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/durcissement/noyau-kspp/](https://blog.stephane-robert.info/docs/securiser/durcissement/noyau-kspp/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase D — Sécurité réseau (prolonge le dossier 03)
#### 56. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/](https://blog.stephane-robert.info/docs/securiser/reseaux/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 57. pare-feux
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/firewalls/](https://blog.stephane-robert.info/docs/securiser/reseaux/firewalls/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 58. Configurer un pare
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/nftables/](https://blog.stephane-robert.info/docs/securiser/reseaux/nftables/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 59. Configurer un pare
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/ufw/](https://blog.stephane-robert.info/docs/securiser/reseaux/ufw/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 60. Configurer un pare
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/firewalld/](https://blog.stephane-robert.info/docs/securiser/reseaux/firewalld/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 61. NAT et redirection de port
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/nat-port-forwarding/](https://blog.stephane-robert.info/docs/securiser/reseaux/nat-port-forwarding/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 62. DMZ (zone démilitarisée)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/dmz/](https://blog.stephane-robert.info/docs/securiser/reseaux/dmz/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 63. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/](https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 64. nmap : analyser l'exposition réseau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/nmap/](https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/nmap/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 65. netcat : tester des ports et des flux
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/netcat/](https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/netcat/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 66. tcpdump : observer le trafic réseau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/tcpdump/](https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/tcpdump/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 67. Banner grabbing : identifier les services et leurs versions
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/banner-grabbing/](https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/banner-grabbing/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 68. Google Dorks : reconnaissance passive et protection
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/google-dorks/](https://blog.stephane-robert.info/docs/securiser/reseaux/analyse/google-dorks/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 69. Fail2ban : bannir automatiquement les attaques par force brute
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/fail2ban/](https://blog.stephane-robert.info/docs/securiser/reseaux/fail2ban/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 70. CrowdSec : détection et blocage collaboratif des attaques
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/crowdsec/](https://blog.stephane-robert.info/docs/securiser/reseaux/crowdsec/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 71. Snort 3 : détecter les intrusions réseau (IDS/IPS)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/snort/](https://blog.stephane-robert.info/docs/securiser/reseaux/snort/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 72. Advanced Intrusion Detection Environment (AIDE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/aide/](https://blog.stephane-robert.info/docs/securiser/reseaux/aide/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 73. BunkerWeb (WAF)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/bunkerweb/](https://blog.stephane-robert.info/docs/securiser/reseaux/bunkerweb/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 74. SysWarden : protéger rapidement un serveur Linux exposé
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/syswarden/](https://blog.stephane-robert.info/docs/securiser/reseaux/syswarden/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 75. Comprendre OPNsense : le pare
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/comprendre/](https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/comprendre/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 76. Installer OPNsense sur machine dédiée ou VM
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/installation/](https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/installation/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 77. Administrer OPNsense : mises à jour, utilisateurs et sauvegardes
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/administration/](https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/administration/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 78. Gestion des greffons (plugins)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/greffons/](https://blog.stephane-robert.info/docs/securiser/reseaux/opnsense/greffons/)
- **Pourquoi ici :** Applique la défense en profondeur au périmètre réseau ; s’appuie sur le dossier `03-reseaux` (TCP/IP, routage, DNS) pour lire les règles et l’exposition.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase E — Gestion des secrets (concepts → SOPS → Vault/OpenBao → outils)
#### 79. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/](https://blog.stephane-robert.info/docs/securiser/secrets/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 80. Qu'est-ce qu'un secret ?
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/qu-est-ce-qu-un-secret/](https://blog.stephane-robert.info/docs/securiser/secrets/qu-est-ce-qu-un-secret/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 81. Inventorier et classer ses secrets
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/inventaire-secrets/](https://blog.stephane-robert.info/docs/securiser/secrets/inventaire-secrets/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 82. Cycle de vie d'un secret
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/cycle-vie-secret/](https://blog.stephane-robert.info/docs/securiser/secrets/cycle-vie-secret/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 83. Le chiffrement des secrets
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/chiffrement-secrets/](https://blog.stephane-robert.info/docs/securiser/secrets/chiffrement-secrets/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 84. Pourquoi les secrets statiques posent problème
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-statiques-probleme/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-statiques-probleme/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 85. Secrets statiques vs dynamiques : comparatif
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-statiques-vs-dynamiques/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-statiques-vs-dynamiques/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 86. Le problème du secret zéro
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secret-zero/](https://blog.stephane-robert.info/docs/securiser/secrets/secret-zero/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 87. Identité machine et workload identity
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/identite-machine-workload-identity/](https://blog.stephane-robert.info/docs/securiser/secrets/identite-machine-workload-identity/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 88. Secrets dans le code et Git
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-code-git/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-code-git/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 89. Secrets dans les pipelines CI/CD
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-ci-cd/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-ci-cd/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 90. Secrets Kubernetes : bonnes pratiques
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-kubernetes/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-kubernetes/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 91. Fuites : logs, Docker, variables
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-logs-images/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-logs-images/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 92. Détecter les secrets exposés
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secrets-detection/](https://blog.stephane-robert.info/docs/securiser/secrets/secrets-detection/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 93. Réagir à un secret compromis
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/secret-compromis/](https://blog.stephane-robert.info/docs/securiser/secrets/secret-compromis/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 94. SOPS : chiffrer vos secrets dans Git
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/sops/](https://blog.stephane-robert.info/docs/securiser/secrets/sops/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 95. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 96. Licence BSL 1.1 de Vault : ce qu'elle autorise et restreint
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/licence-bsl/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/licence-bsl/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 97. CE vs Enterprise
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/editions-ce-vs-enterprise/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/editions-ce-vs-enterprise/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 98. Vault vs OpenBao : quelle solution choisir ?
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/vault-vs-openbao/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/vault-vs-openbao/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 99. OpenBao : le fork open source de Vault
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/openbao/](https://blog.stephane-robert.info/docs/securiser/secrets/openbao/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 100. Première installation
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/installation/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/installation/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 101. Auto-unseal
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/auto-unseal-et-recovery-keys/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/auto-unseal-et-recovery-keys/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 102. Opérer en production
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/operer-en-production/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/operer-en-production/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 103. Vault : authentification userpass et AppRole
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/authentification/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/authentification/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 104. Policies (ACL)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/policies/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/policies/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 105. Secrets Statiques
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/secrets-kv/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/secrets-kv/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 106. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/secrets-dynamiques/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/secrets-dynamiques/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 107. Vault Database : credentials dynamiques pour PostgreSQL, MySQL, MongoDB
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/database-secrets/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/database-secrets/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 108. Vault AWS : credentials IAM dynamiques
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/aws-secrets/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/aws-secrets/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 109. Vault SSH : accès sécurisé aux serveurs
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/ssh-secrets/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/ssh-secrets/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 110. Vault Transit : chiffrement as a service
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/transit/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/transit/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 111. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/pki/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/pki/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 112. Traefik + Vault Agent
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/pki-traefik-renouvellement-auto/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/pki-traefik-renouvellement-auto/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 113. Identity broker
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/identite-broker-workload/](https://blog.stephane-robert.info/docs/securiser/secrets/hashicorp-vault/identite-broker-workload/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 114. Infisical : gérer vos secrets en toute sécurité
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/infisical/](https://blog.stephane-robert.info/docs/securiser/secrets/infisical/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 115. Bitwarden : gestionnaire de mots de passe open
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/bitwarden/](https://blog.stephane-robert.info/docs/securiser/secrets/bitwarden/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 116. Vaultwarden : héberger son gestionnaire de mots de passe
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/vaultwarden/](https://blog.stephane-robert.info/docs/securiser/secrets/vaultwarden/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 117. Passbolt : gestionnaire de mots de passe open
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/passbolt/](https://blog.stephane-robert.info/docs/securiser/secrets/passbolt/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 118. Lade (hooks shell)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/lade/](https://blog.stephane-robert.info/docs/securiser/secrets/lade/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 119. Teller (multi-providers)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/teller/](https://blog.stephane-robert.info/docs/securiser/secrets/teller/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 120. Transfert ponctuel sécurisé (Wormhole)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/secrets/wormhole/](https://blog.stephane-robert.info/docs/securiser/secrets/wormhole/)
- **Pourquoi ici :** Chaîne cohérente secrets : définition, cycle de vie, puis chiffrement déclaratif (SOPS) et coffres (Vault/OpenBao), avant les gestionnaires du quotidien.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase F — Analyse de code et scanners (AppSec ; notions du dossier 04 utiles)
#### 121. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/](https://blog.stephane-robert.info/docs/securiser/analyser-code/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 122. CVE/CVSS/EPSS
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/cve/](https://blog.stephane-robert.info/docs/securiser/analyser-code/cve/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 123. Comprendre le SAST
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/sast/](https://blog.stephane-robert.info/docs/securiser/analyser-code/sast/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 124. Comprendre le SCA
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/sca/](https://blog.stephane-robert.info/docs/securiser/analyser-code/sca/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 125. Comprendre le DAST
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/dast/](https://blog.stephane-robert.info/docs/securiser/analyser-code/dast/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 126. Comprendre le fuzzing
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/fuzzing/](https://blog.stephane-robert.info/docs/securiser/analyser-code/fuzzing/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 127. Fuzzing Go natif
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/fuzzing-go/](https://blog.stephane-robert.info/docs/securiser/analyser-code/fuzzing-go/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 128. Fuzzing Python (Atheris)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/fuzzing-python/](https://blog.stephane-robert.info/docs/securiser/analyser-code/fuzzing-python/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 129. Gitleaks : scanner vos dépôts Git pour détecter les secrets exposés
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/gitleaks/](https://blog.stephane-robert.info/docs/securiser/analyser-code/gitleaks/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 130. detect-secrets (secrets)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/detect-secrets/](https://blog.stephane-robert.info/docs/securiser/analyser-code/detect-secrets/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 131. TruffleHog : détecter les secrets exposés dans votre code et infrastructure
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/trufflehog/](https://blog.stephane-robert.info/docs/securiser/analyser-code/trufflehog/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 132. Semgrep (code)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/semgrep/](https://blog.stephane-robert.info/docs/securiser/analyser-code/semgrep/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 133. Nuclei : scanner de vulnérabilités rapide
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/nuclei/](https://blog.stephane-robert.info/docs/securiser/analyser-code/nuclei/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 134. Dependency-Track
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/analyser-code/dependency-track/](https://blog.stephane-robert.info/docs/securiser/analyser-code/dependency-track/)
- **Pourquoi ici :** Shift-left : détecter tôt vulnérabilités et fuites ; le dossier `04-developper-des-applications` (Git, CI) facilite l’intégration des scanners.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase G — Sécurité conteneurs et Kubernetes (après le dossier 10)
#### 135. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/conteneurs/](https://blog.stephane-robert.info/docs/securiser/conteneurs/)
- **Pourquoi ici :** Sécurité runtime orchestrée : à aborder après `10-maitriser-la-conteneurisation` (images, K8s, réseau de pods).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 136. Sécuriser Kubernetes avec Kubescape 4.0
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/conteneurs/kubescape/](https://blog.stephane-robert.info/docs/securiser/conteneurs/kubescape/)
- **Pourquoi ici :** Sécurité runtime orchestrée : à aborder après `10-maitriser-la-conteneurisation` (images, K8s, réseau de pods).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 137. NeuVector: Sécurisation et Conformité de Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/conteneurs/neuvector/](https://blog.stephane-robert.info/docs/securiser/conteneurs/neuvector/)
- **Pourquoi ici :** Sécurité runtime orchestrée : à aborder après `10-maitriser-la-conteneurisation` (images, K8s, réseau de pods).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 138. Sécuriser Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/kubernetes/](https://blog.stephane-robert.info/docs/securiser/kubernetes/)
- **Pourquoi ici :** Sécurité runtime orchestrée : à aborder après `10-maitriser-la-conteneurisation` (images, K8s, réseau de pods).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase H — Supply chain et intégrité logicielle
#### 139. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/](https://blog.stephane-robert.info/docs/securiser/supply-chain/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 140. Par où commencer
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/par-ou-commencer/](https://blog.stephane-robert.info/docs/securiser/supply-chain/par-ou-commencer/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 141. Menaces par familles (panorama)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/menaces/](https://blog.stephane-robert.info/docs/securiser/supply-chain/menaces/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 142. Producteur malveillant : mainteneur piégé, protestware, insider
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/menaces/producteur-malveillant/](https://blog.stephane-robert.info/docs/securiser/supply-chain/menaces/producteur-malveillant/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 143. Attaques via les gestionnaires de paquets
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/package-manager-attacks/](https://blog.stephane-robert.info/docs/securiser/supply-chain/package-manager-attacks/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 144. Empoisonnement de variables d'environnement
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/env-var-poisoning/](https://blog.stephane-robert.info/docs/securiser/supply-chain/env-var-poisoning/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 145. Living Off The Pipeline (LOTP)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/lotp/](https://blog.stephane-robert.info/docs/securiser/supply-chain/lotp/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 146. OWASP Top 10 CI/CD
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/owasp-top-10/](https://blog.stephane-robert.info/docs/securiser/supply-chain/owasp-top-10/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 147. Gouvernance du code source
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/gouvernance-code-source/](https://blog.stephane-robert.info/docs/securiser/supply-chain/gouvernance-code-source/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 148. Sécuriser les dépendances
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/securiser-dependances/](https://blog.stephane-robert.info/docs/securiser/supply-chain/securiser-dependances/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 149. SBOM : comprendre le Software Bill of Materials
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/sbom/](https://blog.stephane-robert.info/docs/securiser/supply-chain/sbom/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 150. xBOM : comprendre l'écosystème pivot
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/inventaire/xbom-au-dela-sbom/](https://blog.stephane-robert.info/docs/securiser/supply-chain/inventaire/xbom-au-dela-sbom/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 151. OBOM : inventaire runtime
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/inventaire/obom-runtime/](https://blog.stephane-robert.info/docs/securiser/supply-chain/inventaire/obom-runtime/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 152. Syft (générer des SBOM)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/syft/](https://blog.stephane-robert.info/docs/securiser/supply-chain/syft/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 153. OSV-Scanner nouveau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/osv-scanner/](https://blog.stephane-robert.info/docs/securiser/supply-chain/osv-scanner/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 154. VEX : réduire les faux positifs
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/vex/](https://blog.stephane-robert.info/docs/securiser/supply-chain/vex/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 155. vexctl (gérer les VEX)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/vexctl/](https://blog.stephane-robert.info/docs/securiser/supply-chain/vexctl/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 156. OpenSSF Scorecard
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/scorecard/](https://blog.stephane-robert.info/docs/securiser/supply-chain/scorecard/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 157. Sigstore (écosystème)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/sigstore/](https://blog.stephane-robert.info/docs/securiser/supply-chain/sigstore/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 158. Cosign : signer et vérifier vos images conteneurs
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/cosign/](https://blog.stephane-robert.info/docs/securiser/supply-chain/cosign/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 159. Gitsign (commits Git)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/gitsign/](https://blog.stephane-robert.info/docs/securiser/supply-chain/gitsign/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 160. Fulcio (certificats)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/fulcio/](https://blog.stephane-robert.info/docs/securiser/supply-chain/fulcio/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 161. Rekor (transparency log)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/rekor/](https://blog.stephane-robert.info/docs/securiser/supply-chain/rekor/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 162. in-toto (attestations)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/in-toto/](https://blog.stephane-robert.info/docs/securiser/supply-chain/in-toto/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 163. Vérifier la provenance SLSA
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/attestations/slsa-provenance-decision/](https://blog.stephane-robert.info/docs/securiser/supply-chain/attestations/slsa-provenance-decision/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 164. GUAC (graphe de dépendances)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/guac/](https://blog.stephane-robert.info/docs/securiser/supply-chain/guac/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 165. Dex (identity provider OIDC)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/dex/](https://blog.stephane-robert.info/docs/securiser/supply-chain/dex/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 166. Hardening de l'environnement de build : sécuriser runners et pipelines
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/pipeline/hardening-build-linux/](https://blog.stephane-robert.info/docs/securiser/supply-chain/pipeline/hardening-build-linux/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 167. TPRM technique : évaluer vos fournisseurs
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/tiers/tprm-technique/](https://blog.stephane-robert.info/docs/securiser/supply-chain/tiers/tprm-technique/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 168. Varnish Artifact Firewall nouveau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/artifact-firewall/](https://blog.stephane-robert.info/docs/securiser/supply-chain/artifact-firewall/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 169. Kusari (décision go/no-go) nouveau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/supply-chain/kusari/](https://blog.stephane-robert.info/docs/securiser/supply-chain/kusari/)
- **Pourquoi ici :** Relie build, dépendances, signatures et provenance ; capitalise sur secrets (phase E) et scanners (phases F–K).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase I — Accès sécurisé, Zero Trust et exposition contrôlée
#### 170. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/](https://blog.stephane-robert.info/docs/securiser/acces/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 171. Comprendre Pomerium
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/pomerium/comprendre/](https://blog.stephane-robert.info/docs/securiser/acces/pomerium/comprendre/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 172. Installer Pomerium avec Docker Compose
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/pomerium/installation-docker-compose/](https://blog.stephane-robert.info/docs/securiser/acces/pomerium/installation-docker-compose/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 173. Bastion / accès zero-trust (Teleport)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/teleport/](https://blog.stephane-robert.info/docs/securiser/acces/teleport/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 174. Serveur VPN WireGuard
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/wireguard/](https://blog.stephane-robert.info/docs/securiser/acces/wireguard/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 175. VPN mesh WireGuard (Tailscale & Headscale)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/tailscale/](https://blog.stephane-robert.info/docs/securiser/acces/tailscale/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 176. VPN mesh auto-hébergé (NetBird)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/netbird/](https://blog.stephane-robert.info/docs/securiser/acces/netbird/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 177. Réseau virtuel L2 (ZeroTier)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/zerotier/](https://blog.stephane-robert.info/docs/securiser/acces/zerotier/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 178. Tunnel Cloudflare & détection d'abus (cloudflared)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/cloudflared/](https://blog.stephane-robert.info/docs/securiser/acces/cloudflared/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 179. Tunnel ngrok & détection d'abus
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/ngrok/](https://blog.stephane-robert.info/docs/securiser/acces/ngrok/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 180. Reverse proxy tunnelisé self-hosted (Pangolin)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/acces/pangolin/](https://blog.stephane-robert.info/docs/securiser/acces/pangolin/)
- **Pourquoi ici :** Zero Trust appliqué à l’accès humain et machine : complète durcissement SSH/VPN après réseau et secrets.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
### Phase J — SOCLE : référentiel, conformité et cartographie (incidents en annexe intégrée)
#### 181. Démarche SOCLE
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/](https://blog.stephane-robert.info/docs/securiser/socle/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 182. Par où commencer
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/par-ou-commencer/](https://blog.stephane-robert.info/docs/securiser/socle/par-ou-commencer/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 183. La méthode
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/methode/](https://blog.stephane-robert.info/docs/securiser/socle/methode/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 184. Cartographie & export
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/matrice/](https://blog.stephane-robert.info/docs/securiser/socle/matrice/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 185. Les outils
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/outils/](https://blog.stephane-robert.info/docs/securiser/socle/outils/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 186. Roadmap SOCLE : où en est le référentiel et ce qui vient
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/roadmap/](https://blog.stephane-robert.info/docs/securiser/socle/roadmap/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 187. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 188. Source & SCM
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/source/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/source/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 189. CI/CD
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/ci/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/ci/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 190. Dépendances
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/dependances/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/dependances/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 191. Packaging & artefacts : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/packaging/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/packaging/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 192. Release, provenance & signature : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/release/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/release/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 193. Distribution & consommation : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/distribution/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/distribution/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 194. Registres & publication : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/registres/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/registres/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 195. Déploiement & admission : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/admission/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/admission/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 196. Runtime & exploitation : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/runtime/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/runtime/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 197. Posture cloud & infrastructure (IaaS / conteneurs) : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/cloud/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/cloud/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 198. Secrets & identités (transversal) : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/secrets/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/secrets/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 199. Producteur & gouvernance : vecteurs d'attaque (SOCLE)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/gouvernance/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/gouvernance/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 200. Poste de dev
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/poste/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/poste/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 201. Sécurité applicative
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/application/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/application/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 202. Intégrations
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/integrations/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/integrations/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 203. IA / ML
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/menaces/ia/](https://blog.stephane-robert.info/docs/securiser/socle/menaces/ia/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 204. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 205. Ownership & shift-left
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/ownership-shift-left/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/ownership-shift-left/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 206. Processus & rituels
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/processus-rituels/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/processus-rituels/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 207. Formation & sensibilisation
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/formation-sensibilisation/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/formation-sensibilisation/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 208. Documentation & partage
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/documentation-partage-de-connaissance/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/documentation-partage-de-connaissance/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 209. Métriques & pilotage
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/metriques-pilotage/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/culture/metriques-pilotage/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 210. Source & dépôt (SOCLE SRC)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/source/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/source/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 211. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 212. Vérification du code & des configurations
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/verification-du-code-des-configurations/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/verification-du-code-des-configurations/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 213. Inventaire & composition des dépendances
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/inventaire-composition-des-dependances/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/inventaire-composition-des-dependances/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 214. Ingestion OSS maîtrisée
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/ingestion-oss-maitrisee/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/ingestion-oss-maitrisee/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 215. Build sécurisé & provenance
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/build-securise-provenance/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/build-securise-provenance/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 216. Chaîne d'outils & actions CI
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/chaine-d-outils-actions-ci/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/integration/chaine-d-outils-actions-ci/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 217. Packaging & artefacts (SOCLE PKG)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/packaging/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/packaging/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 218. Release & provenance (SOCLE REL)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/release/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/release/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 219. Déploiement
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/deploiement/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/deploiement/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 220. Runtime & exploitation (SOCLE RUN)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/runtime/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/runtime/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 221. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 222. Affectation, segmentation & gouvernance
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/affectation-segmentation-gouvernance/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/affectation-segmentation-gouvernance/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 223. Isolation d'exécution & moindre privilège
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/isolation-d-execution-moindre-privilege/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/isolation-d-execution-moindre-privilege/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 224. Isolation réseau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/isolation-reseau/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/isolation-reseau/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 225. Identité, enregistrement & secrets
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/identite-enregistrement-secrets/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/identite-enregistrement-secrets/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 226. Éphémérité & cycle de vie
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/ephemerite-cycle-de-vie/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/ephemerite-cycle-de-vie/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 227. Intégrité & provenance du runner
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/integrite-provenance-du-runner/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/integrite-provenance-du-runner/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 228. Observabilité, détection & réponse
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/observabilite-detection-reponse/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/orchestration/observabilite-detection-reponse/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 229. Gestion des secrets : inventaire & cycle de vie (SOCLE SEC)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/secrets/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/secrets/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 230. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 231. Gouvernance & inventaire cloud
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/gouvernance-inventaire-cloud/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/gouvernance-inventaire-cloud/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 232. IAM & accès cloud
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/iam-acces-cloud/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/iam-acces-cloud/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 233. Exposition & filtrage réseau
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/exposition-filtrage-reseau/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/exposition-filtrage-reseau/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 234. Compute & instances
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/compute-instances/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/compute-instances/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 235. Stockage & données
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/stockage-donnees/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/stockage-donnees/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 236. Chiffrement & clés
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/chiffrement-cles/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/chiffrement-cles/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 237. Journalisation & audit
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/journalisation-audit/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/journalisation-audit/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 238. Orchestration Kubernetes (SOCLE CLD)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/orchestration-kubernetes/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/cloud/orchestration-kubernetes/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 239. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 240. Conception & modélisation des menaces
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/conception-modelisation-des-menaces/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/conception-modelisation-des-menaces/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 241. Codage sûr
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/codage-sur/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/codage-sur/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 242. Tests de sécurité applicative (AST)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/tests-de-securite-applicative-ast/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/securite-applicative/tests-de-securite-applicative-ast/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 243. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 244. Identité, privilèges & isolation locale
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/identite-privileges-isolation-locale/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/identite-privileges-isolation-locale/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 245. Durcissement & conformité du poste
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/durcissement-conformite-du-poste/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/durcissement-conformite-du-poste/)
- **Pourquoi ici :** Met en pratique les principes des phases A–B sur un hôte Linux ; prolonge directement le dossier local `02-administration-linux` (utilisateurs, services, journaux).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 246. Outils de développement & hygiène de la chaîne locale
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/outils-de-developpement-hygiene-de-la-chaine-locale/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/outils-de-developpement-hygiene-de-la-chaine-locale/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 247. Outils détournables (Living Off the Pipeline)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/outils-detournables-living-off-the-pipeline/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/poste-travail/outils-detournables-living-off-the-pipeline/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 248. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 249. Gouvernance & contractuel
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/gouvernance-contractuel/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/gouvernance-contractuel/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 250. Provenance & intégrité des livrables
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/provenance-integrite-des-livrables/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/provenance-integrite-des-livrables/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 251. Développement sécurisé du fournisseur
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/developpement-securise-du-fournisseur/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/developpement-securise-du-fournisseur/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 252. Gestion des dépendances open-source
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/gestion-des-dependances-open-source/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/gestion-des-dependances-open-source/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 253. Souveraineté & localisation
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/souverainete-localisation/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/souverainete-localisation/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 254. Continuité, support & réponse
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/continuite-support-reponse/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/fournisseurs/continuite-support-reponse/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 255. Gouvernance & conformité (SOCLE GOV)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/gouvernance/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/gouvernance/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 256. Vulnérabilités
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/vulnerabilites/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/vulnerabilites/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 257. IA dans le SDLC (SOCLE IA)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/referentiel/ia/](https://blog.stephane-robert.info/docs/securiser/socle/referentiel/ia/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 258. Toutes les conformités
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 259. ISO/IEC 27001
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/iso-27001/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/iso-27001/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 260. Directive NIS2
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/nis2/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/nis2/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 261. Règlement DORA
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/dora/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/dora/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 262. PCI DSS : sécuriser les données de cartes de paiement
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/pci-dss/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/pci-dss/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 263. Certification HDS
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/hds/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/hds/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 264. ANSSI SecNumCloud
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/secnumcloud/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/secnumcloud/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 265. SLSA : sécuriser la chaîne d'approvisionnement logicielle
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/slsa/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/slsa/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 266. Cyber Resilience Act (CRA)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/cra/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/cra/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 267. CRA en pratique (CLI)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/conformites/cra-cli-pratique/](https://blog.stephane-robert.info/docs/securiser/socle/conformites/cra-cli-pratique/)
- **Pourquoi ici :** Vue référentielle SOCLE : structurer gouvernance, menaces et contrôles une fois les fondations techniques acquises.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### Annexe — Études de cas (catalogue incidents SOCLE)

> Les fiches ci-dessous sont des **lectures ciblées** : une ou deux par semaine suffisent. Elles illustrent supply chain, CI compromis, secrets exposés et gouvernance.
#### 268. Incidents (cas réels)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/)
- **Pourquoi ici :** Index du catalogue d’incidents : parcourir au fil de l’eau après les phases pratiques ; chaque fiche ci-dessous est une étude de cas autonome.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 269. CCleaner
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2017-08-15-ccleaner/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2017-08-15-ccleaner/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 270. eslint
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2018-07-12-eslint-scope/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2018-07-12-eslint-scope/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 271. event
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2018-11-26-event-stream/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2018-11-26-event-stream/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 272. ASUS ShadowHammer
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2019-03-25-shadowhammer/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2019-03-25-shadowhammer/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 273. SolarWinds / SUNBURST
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2020-12-13-solarwinds/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2020-12-13-solarwinds/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 274. The Great Suspender (extension Chrome)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-02-04-thegreatsuspender/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-02-04-thegreatsuspender/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 275. Dependency confusion (A. Birsan)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-02-09-dependency-confusion/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-02-09-dependency-confusion/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 276. Codecov Bash Uploader
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-04-15-codecov/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-04-15-codecov/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 277. Kaseya VSA
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-07-02-kaseya-vsa/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-07-02-kaseya-vsa/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 278. ua
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-10-22-ua-parser-js/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2021-10-22-ua-parser-js/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 279. node
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2022-03-15-node-ipc/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2022-03-15-node-ipc/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 280. Docker Hub
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2022-06-30-docker-hub-malicious/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2022-06-30-docker-hub-malicious/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 281. Dropbox
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2022-11-01-dropbox-github/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2022-11-01-dropbox-github/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 282. Retool
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2023-09-13-retool-mfa/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2023-09-13-retool-mfa/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 283. XZ Utils / liblzma backdoor
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2024-03-29-xz/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2024-03-29-xz/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 284. polyfill.io
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2024-06-25-polyfill/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2024-06-25-polyfill/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 285. @solana/web3.js
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2024-12-02-solana-web3js/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2024-12-02-solana-web3js/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 286. tj
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-03-14-tj-actions-changed-files/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-03-14-tj-actions-changed-files/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 287. GhostAction (3 000+ secrets volés)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-09-19-ghostaction-campaign-over-3-000/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-09-19-ghostaction-campaign-over-3-000/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 288. s1ngularity (Nx)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-09-23-s1ngularity-popular-nx-build-system/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-09-23-s1ngularity-popular-nx-build-system/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 289. Shai
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-11-23-shai-hulud/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-11-23-shai-hulud/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 290. Sha1
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-12-15-sha1-hulud-the-second-coming/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2025-12-15-sha1-hulud-the-second-coming/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 291. 20+ paquets npm compromis (Chalk, Debug…)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-02-15-20-popular-npm-packages-compromised/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-02-15-20-popular-npm-packages-compromised/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 292. CanisterWorm (ver npm)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-26-canisterworm-how-a-self-propagating/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-26-canisterworm-how-a-self-propagating/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 293. Checkmarx KICS (GitHub Action)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-26-checkmarx-kics-github-action-compromised/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-26-checkmarx-kics-github-action-compromised/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 294. Trivy (2e compromission)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-26-trivy-compromised-a-second-time/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-26-trivy-compromised-a-second-time/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 295. litellm: Credential Stealer Hidden in PyPI Wheel
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-28-litellm-credential-stealer-hidden-in/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-03-28-litellm-credential-stealer-hidden-in/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 296. axios (npm, RAT)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-04-09-axios-compromised-on-npm-malicious/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-04-09-axios-compromised-on-npm-malicious/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 297. Cline (cline@2.3.0)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-04-09-cline-supply-chain-attack-detected/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-04-09-cline-supply-chain-attack-detected/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 298. Bitwarden CLI (npm)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-bitwarden-cli/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-bitwarden-cli/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 299. elementary
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-elementary-data/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-elementary-data/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 300. lightning (wheel PyPI)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-lightning-obfuscated-javascript-credential-steal/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-lightning-obfuscated-javascript-credential-steal/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 301. Shai
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-shai-hulud-worm-pivots-to/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-shai-hulud-worm-pivots-to/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 302. TeamPCP
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-teampcp-injects-two-stage-credential/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-04-teampcp-injects-two-stage-credential/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 303. Mini Shai
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-12-teampcp-s-mini-shai-hulud/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-12-teampcp-s-mini-shai-hulud/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 304. actions
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-19-actions-cool-issues-helper/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-19-actions-cool-issues-helper/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 305. node
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-19-active-supply-chain-attack-malicious/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-19-active-supply-chain-attack-malicious/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 306. Shai
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-19-shai-hulud-antv/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-19-shai-hulud-antv/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 307. Megalodon (5 500+ dépôts)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-22-megalodon-mass-github-actions-secret/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-05-22-megalodon-mass-github-actions-secret/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 308. Laravel
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-02-laravel-lang-supply-chain-attack/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-02-laravel-lang-supply-chain-attack/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 309. Multiple redhat
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-02-multiple-redhat-cloud-services-npm/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-02-multiple-redhat-cloud-services-npm/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 310. Nx Console (extension VS Code)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-02-nx-console/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-02-nx-console/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 311. Miasma (ver via GitHub Actions)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-04-miasma-worm/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-04-miasma-worm/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 312. Microsoft durabletask (PyPI)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-09-durabletask-pypi/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-09-durabletask-pypi/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 313. Miasma (Microsoft, agents IA)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-09-miasma-worm-hits-microsoft-again/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-09-miasma-worm-hits-microsoft-again/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 314. gpt
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-09-pythagora-io-gpt-pilot-compromised/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-09-pythagora-io-gpt-pilot-compromised/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 315. AUR
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-13-aur-atomic-arch/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-13-aur-atomic-arch/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 316. Mastra (npm, typosquat easy
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-17-mastra-npm-supply-chain-attack/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-17-mastra-npm-supply-chain-attack/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 317. simonecorsi/mawesome (GitHub Action)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-24-simonecorsi-mawesome/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-06-24-simonecorsi-mawesome/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
#### 318. GitHub Actions détourné en scanner distribué (cPanel / WHM)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-07-22-github-actions-cpanel-whm-campaign/](https://blog.stephane-robert.info/docs/securiser/socle/incidents/2026-07-22-github-actions-cpanel-whm-campaign/)
- **Pourquoi ici :** Lecture ciblée en annexe SOCLE : étude de cas supply chain / CI / secrets. Non bloquante pour valider le dossier, mais précieuse pour ancrer les menaces vues en phases B et H.
- **À retenir :** Vecteur d’attaque, impact, leçons pour CI/CD, dépendances, secrets ou gouvernance.
- [ ] Page lue / pratiquée
### Phase K — Outils transverses, immuabilité et haute disponibilité
#### 319. Scanners de vulnérabilités
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/](https://blog.stephane-robert.info/docs/securiser/outils/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 320. Trivy : scanner de vulnérabilités, secrets et IaC
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/trivy/](https://blog.stephane-robert.info/docs/securiser/outils/trivy/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 321. Scanner les vulnérabilités de conteneurs avec Grype
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/grype/](https://blog.stephane-robert.info/docs/securiser/outils/grype/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 322. Auditer la sécurité de vos images Docker avec Dockle
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/dockle/](https://blog.stephane-robert.info/docs/securiser/outils/dockle/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 323. Checkov vérifie votre code d'infrastructure
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/checkov/](https://blog.stephane-robert.info/docs/securiser/outils/checkov/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 324. KICS (IaC)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/kics/](https://blog.stephane-robert.info/docs/securiser/outils/kics/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 325. Snyk IaC
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/snyk/](https://blog.stephane-robert.info/docs/securiser/outils/snyk/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 326. Prowler (cloud)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/prowler/](https://blog.stephane-robert.info/docs/securiser/outils/prowler/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 327. Bearer (SAST + privacy)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/bearer/](https://blog.stephane-robert.info/docs/securiser/outils/bearer/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 328. Bagel (posture endpoint)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/bagel/](https://blog.stephane-robert.info/docs/securiser/outils/bagel/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 329. CINC Auditor (conformité)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/cinc-auditor/](https://blog.stephane-robert.info/docs/securiser/outils/cinc-auditor/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 330. CyberChef (analyse de données)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/outils/cyberchef/](https://blog.stephane-robert.info/docs/securiser/outils/cyberchef/)
- **Pourquoi ici :** Panorama d’outils complémentaires aux phases F–H ; utile pour choisir et comparer avant d’industrialiser en CI/CD (`13-pipeline-ci-cd`).
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 331. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/](https://blog.stephane-robert.info/docs/securiser/os-immuable/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 332. immuabilité
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/](https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 333. Lab 2 — Installer avec une flake sans disko
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/installation-flake/](https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/installation-flake/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 334. NixOS dans WSL
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/installation-wsl/](https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/installation-wsl/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 335. Lab 8 — Comprendre et modifier la configuration
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/configuration/](https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/configuration/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 336. Lab 9 — Rollback, générations et rescue
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/reparation-rollback/](https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/reparation-rollback/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 337. Retex — Sécurix (DINUM, ANSSI)
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/securix-anssi/](https://blog.stephane-robert.info/docs/securiser/os-immuable/nixos/securix-anssi/)
- **Pourquoi ici :** Approche alternative au durcissement impératif : immuabilité et rollback, pour aller plus loin que la phase C.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 338. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/haute-disponibilite/](https://blog.stephane-robert.info/docs/securiser/haute-disponibilite/)
- **Pourquoi ici :** Disponibilité et continuité : dimension souvent oubliée de la sécurité (RTO/RPO), en fin de parcours technique.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 339. Corosync & Pacemaker
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/haute-disponibilite/corosync-pacemaker/](https://blog.stephane-robert.info/docs/securiser/haute-disponibilite/corosync-pacemaker/)
- **Pourquoi ici :** Disponibilité et continuité : dimension souvent oubliée de la sécurité (RTO/RPO), en fin de parcours technique.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée
#### 340. Répliquez vos disques Linux avec DRBD
- **Lien :** [https://blog.stephane-robert.info/docs/securiser/haute-disponibilite/drbd/](https://blog.stephane-robert.info/docs/securiser/haute-disponibilite/drbd/)
- **Pourquoi ici :** Disponibilité et continuité : dimension souvent oubliée de la sécurité (RTO/RPO), en fin de parcours technique.
- **À retenir :** Notions et pratiques de la page ; relier au principe le plus proche (CIA, moindre privilège, défense en profondeur).
- [ ] Page lue / pratiquée

## Compétences acquises

- Formuler des exigences de sécurité avec le vocabulaire CIA, Zero Trust, moindre privilège et défense en profondeur
- Cartographier une attaque (phases, MITRE ATT&CK) et en déduire des contrôles prioritaires
- Durcir un serveur Linux (SSH, PAM, sudo, MAC, audit, benchmarks CIS/ANSSI)
- Concevoir une exposition réseau (pare-feu, DMZ, NAT), détecter les scans et automatiser le blocage (fail2ban, CrowdSec, IDS)
- Gérer le cycle de vie des secrets (inventaire, SOPS, Vault/OpenBao, réaction à une compromission)
- Intégrer SAST/SCA/DAST, détection de secrets et fuzzing dans un workflow de développement
- Appliquer les bonnes pratiques conteneurs/Kubernetes et relier à la supply chain (SBOM, signatures Sigstore)
- Mettre en place des accès Zero Trust (proxy d’identité, VPN mesh, bastion)
- Naviguer le référentiel SOCLE (menaces, contrôles, conformités) et tirer des leçons des incidents historiques
- Choisir et combiner des scanners (Trivy, Grype, Checkov, Prowler…) selon le contexte
