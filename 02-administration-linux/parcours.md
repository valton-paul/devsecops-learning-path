# Parcours — 02-administration-linux

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/admin-serveurs/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier

Ce dossier est le **socle technique** de toute la formation : sans Linux maîtrisé, le réseau, la sécu, l'IaC, les conteneurs et le CI/CD restent des recettes copiées. Tu y apprends à installer un lab, naviguer le système, automatiser au shell, faire tourner des services via systemd, gérer le stockage, sécuriser le minimum vital, et dépanner avec méthode.

Le public cible est un débutant motivé (ou un développeur qui n'a jamais « tenu » un serveur) jusqu'à un niveau intermédiaire capable d'administrer un VPS ou une VM de lab de façon reproductible. On privilégie la progression *geste → automatisation → diagnostic*, pas le catalogue d'outils.

Dans le cursus global, `02` s'appuie sur la culture du dossier `01`, prépare `03-reseaux` et `08-virtualisation`, et laisse le durcissement avancé / firewalls / AppSec à `05-securite`. Les namespaces/cgroups vus en fin de parcours anticipent `10-maitriser-la-conteneurisation`.

## Prérequis

- Dossiers locaux : `01-culture-devsecops` (pourquoi automatiser, toil, feedback)
- Concepts : savoir allumer une machine, créer une VM (VirtualBox/KVM) ou utiliser un VPS ; notion vague de fichier/dossier
- Dépendances externes explicites :
  - `03-reseaux` pour la théorie TCP/IP / sous-réseaux (entrelacer avec la phase réseau Linux)
  - `05-securite` pour SELinux/AppArmor, firewalls, CIS, audit avancé
  - `08-virtualisation` si tu construis ton lab sur KVM/Proxmox
  - `10-maitriser-la-conteneurisation` consommera namespaces/cgroups vus en phase O

## Logique pédagogique (pourquoi cet ordre)

Le menu du site place eBPF, Nix, certifications et références au même niveau que « cd » et « chmod ». Ici on reconstruit un chemin formateur :

1. **Cadre métier** (responsabilités, toil, dette) pour ne pas confondre admin et collection de commandes  
2. **Lab + fondamentaux** (distro → fichiers → shell → users → paquets → réseau/logs de base)  
3. **Exploitation** (SSH, texte avancé, scripts, systemd, observation)  
4. **Maintenance & stockage** (paquets multi-distros, LVM, RAID, LUKS)  
5. **Sécurité OS minimale** puis **dépannage** (quand on a les outils)  
6. **Pilotage**, puis **avancé optionnel** (internals, eBPF), **annexes** (références, Nix), **certifications**

On refuse de placer le dépannage ou eBPF avant le socle : un débutant qui lit bpftrace avant `journalctl` perd du temps. Les fiches de référence sont volontairement en annexe.

## Ordre de lecture conseillé

### Phase A — Cadre métier et responsabilités

On commence par le *pourquoi* de l'admin sys (runbooks, toil, dette) avant les commandes : sans ce cadre, on accumule des gestes techniques sans méthode.

#### 1. Sys
- **Lien :** `/docs/admin-serveurs/`
- **Pourquoi ici :** Page d'entrée du module systèmes : pose les 4 piliers (ops, sécu, observabilité, continuité) et la progression admin→SRE. Lis-la pour cadrer tout le dossier.
- **À retenir :**
  - Concept clé de « Sys »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 2. Les responsabilités de l'AdminSys
- **Lien :** `/docs/admin-serveurs/responsabilites/`
- **Pourquoi ici :** Clarifie le métier avant les commandes : sans savoir *quoi* on doit garantir, on apprend des outils au hasard.
- **À retenir :**
  - Concept clé de « Les responsabilités de l'AdminSys »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 3. Travail ingrat
- **Lien :** `/docs/admin-serveurs/operations/travail-ingrat/`
- **Pourquoi ici :** Introduit le toil (lié à la culture DevOps du dossier `01`) : repérer ce qu'il faut automatiser plutôt que subir.
- **À retenir :**
  - Concept clé de « Travail ingrat »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 4. Gérer la Dette technique
- **Lien :** `/docs/admin-serveurs/operations/dette-technique/`
- **Pourquoi ici :** Complète le toil : comment prioriser ce qu'on laisse pourrir. Utile avant d'empiler des configs « temporaires ».
- **À retenir :**
  - Concept clé de « Gérer la Dette technique »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 5. Introduction
- **Lien :** `/docs/admin-serveurs/linux/`
- **Pourquoi ici :** Portail Linux du site : carte du parcours officiel. On s'en sert comme repère, pas comme ordre de lecture.
- **À retenir :**
  - Concept clé de « Introduction »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 6. Mon parcours Suivi
- **Lien :** `/docs/admin-serveurs/linux/parcours/`
- **Pourquoi ici :** Outil de suivi personnel proposé par l'auteur : utile pour cocher ta progression en parallèle de ce guide.
- **À retenir :**
  - Concept clé de « Mon parcours Suivi »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase B — Découvrir Linux et installer un lab

Choisir une distro et installer une VM avant de mémoriser des commandes : le terrain d'entraînement doit exister. Dépendance utile : `08-virtualisation` pour KVM/Proxmox si tu n'as pas encore de VM.

#### 7. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/`
- **Pourquoi ici :** Étape 7 du parcours Linux : « Vue d'ensemble ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 8. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/`
- **Pourquoi ici :** Socle lexical et gestuelle : on ancre terminal, aide et anatomie de commande avant toute administration.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 9. Notions fondamentales
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/notions/`
- **Pourquoi ici :** Socle lexical et gestuelle : on ancre terminal, aide et anatomie de commande avant toute administration.
- **À retenir :**
  - Concept clé de « Notions fondamentales »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 10. Choisir une distribution serveur
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/distributions-serveur/`
- **Pourquoi ici :** Choisir une famille (Debian/Ubuntu vs RHEL) conditionne apt vs dnf plus loin — décide tôt pour rester cohérent dans ton lab.
- **À retenir :**
  - Concept clé de « Choisir une distribution serveur »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 11. Comparatif Debian / Ubuntu / AlmaLinux
- **Lien :** `/docs/admin-serveurs/linux/distributions/comparatif/`
- **Pourquoi ici :** Choisir une famille (Debian/Ubuntu vs RHEL) conditionne apt vs dnf plus loin — décide tôt pour rester cohérent dans ton lab.
- **À retenir :**
  - Concept clé de « Comparatif Debian / Ubuntu / AlmaLinux »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 12. Debian 13 (Trixie)
- **Lien :** `/docs/admin-serveurs/linux/distributions/debian-13/`
- **Pourquoi ici :** Choisir une famille (Debian/Ubuntu vs RHEL) conditionne apt vs dnf plus loin — décide tôt pour rester cohérent dans ton lab.
- **À retenir :**
  - Concept clé de « Debian 13 (Trixie) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 13. Ubuntu Server 26.04 LTS
- **Lien :** `/docs/admin-serveurs/linux/distributions/ubuntu-server-2604/`
- **Pourquoi ici :** Choisir une famille (Debian/Ubuntu vs RHEL) conditionne apt vs dnf plus loin — décide tôt pour rester cohérent dans ton lab.
- **À retenir :**
  - Concept clé de « Ubuntu Server 26.04 LTS »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 14. AlmaLinux 10
- **Lien :** `/docs/admin-serveurs/linux/distributions/almalinux-10/`
- **Pourquoi ici :** Choisir une famille (Debian/Ubuntu vs RHEL) conditionne apt vs dnf plus loin — décide tôt pour rester cohérent dans ton lab.
- **À retenir :**
  - Concept clé de « AlmaLinux 10 »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 15. Installer Linux dans une VM
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/installer-vm/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Installer Linux dans une VM »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 16. Installer Debian 13 pas à pas
- **Lien :** `/docs/admin-serveurs/linux/distributions/installer-debian-13/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Installer Debian 13 pas à pas »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 17. Installer Ubuntu Server 26.04 pas à pas
- **Lien :** `/docs/admin-serveurs/linux/distributions/installer-ubuntu-2604/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Installer Ubuntu Server 26.04 pas à pas »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 18. Installer AlmaLinux 10 pas à pas
- **Lien :** `/docs/admin-serveurs/linux/distributions/installer-almalinux-10/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Installer AlmaLinux 10 pas à pas »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 19. Se connecter : terminal et SSH
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/prompt-terminal/`
- **Pourquoi ici :** Socle lexical et gestuelle : on ancre terminal, aide et anatomie de commande avant toute administration.
- **À retenir :**
  - Concept clé de « Se connecter : terminal et SSH »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 20. Anatomie d'une commande
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/anatomie-commande/`
- **Pourquoi ici :** Socle lexical et gestuelle : on ancre terminal, aide et anatomie de commande avant toute administration.
- **À retenir :**
  - Concept clé de « Anatomie d'une commande »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 21. Obtenir de l'aide
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/decouvrir-linux/obtenir-aide/`
- **Pourquoi ici :** Socle lexical et gestuelle : on ancre terminal, aide et anatomie de commande avant toute administration.
- **À retenir :**
  - Concept clé de « Obtenir de l'aide »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase C — Se repérer dans les fichiers et le texte

FHS, navigation, pipes : le quotidien de tout admin. Sans ça, SSH et systemd resteront abstraits.

#### 22. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/se-reperer-fichiers/`
- **Pourquoi ici :** Sans FHS et navigation, chaque path de config (/etc, /var) restera magique. Indispensable avant paquets et services.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 23. L'arborescence Linux (FHS)
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/se-reperer-fichiers/arborescence-fhs/`
- **Pourquoi ici :** Sans FHS et navigation, chaque path de config (/etc, /var) restera magique. Indispensable avant paquets et services.
- **À retenir :**
  - Concept clé de « L'arborescence Linux (FHS) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 24. Naviguer et gérer des fichiers
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/se-reperer-fichiers/navigation-fichiers/`
- **Pourquoi ici :** Sans FHS et navigation, chaque path de config (/etc, /var) restera magique. Indispensable avant paquets et services.
- **À retenir :**
  - Concept clé de « Naviguer et gérer des fichiers »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 25. Chemins absolus et relatifs
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/se-reperer-fichiers/chemins-linux/`
- **Pourquoi ici :** Sans FHS et navigation, chaque path de config (/etc, /var) restera magique. Indispensable avant paquets et services.
- **À retenir :**
  - Concept clé de « Chemins absolus et relatifs »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 26. Liens physiques et symboliques
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/se-reperer-fichiers/liens-fichiers/`
- **Pourquoi ici :** Sans FHS et navigation, chaque path de config (/etc, /var) restera magique. Indispensable avant paquets et services.
- **À retenir :**
  - Concept clé de « Liens physiques et symboliques »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 27. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 28. Lire le contenu des fichiers
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/lire-fichiers/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Lire le contenu des fichiers »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 29. Rechercher des fichiers
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/rechercher-fichiers/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Rechercher des fichiers »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 30. Filtrer et transformer du texte
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/filtrer-texte/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Filtrer et transformer du texte »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 31. Redirections et pipes
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/redirections-pipes/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Redirections et pipes »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 32. Archiver et compresser
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/archives-compression/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Archiver et compresser »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 33. Nano
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/nano/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Nano »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 34. Vi
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/manipuler-fichiers-texte/vi/`
- **Pourquoi ici :** Lecture, filtres, pipes, archives, édition : compétences quotidiennes réutilisées dans logs, scripts et IaC.
- **À retenir :**
  - Concept clé de « Vi »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase D — Devenir efficace dans le shell

Bash, variables, expansions, premier script : on automatise ce qu'on vient de faire à la main.

#### 35. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/efficace-shell/`
- **Pourquoi ici :** Passe de « je tape des commandes » à « je compose le shell » : prérequis direct des scripts d'exploitation.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 36. Prise en main de Bash
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/efficace-shell/bash/`
- **Pourquoi ici :** Passe de « je tape des commandes » à « je compose le shell » : prérequis direct des scripts d'exploitation.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 37. Variables d'environnement
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/efficace-shell/variables-environnement/`
- **Pourquoi ici :** Passe de « je tape des commandes » à « je compose le shell » : prérequis direct des scripts d'exploitation.
- **À retenir :**
  - Concept clé de « Variables d'environnement »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 38. Expansions du shell
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/efficace-shell/expansions-shell/`
- **Pourquoi ici :** Passe de « je tape des commandes » à « je compose le shell » : prérequis direct des scripts d'exploitation.
- **À retenir :**
  - Concept clé de « Expansions du shell »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 39. Personnaliser son shell
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/efficace-shell/personnaliser-shell/`
- **Pourquoi ici :** Passe de « je tape des commandes » à « je compose le shell » : prérequis direct des scripts d'exploitation.
- **À retenir :**
  - Concept clé de « Personnaliser son shell »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 40. Écrire un premier script
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/efficace-shell/premier-script/`
- **Pourquoi ici :** Passe de « je tape des commandes » à « je compose le shell » : prérequis direct des scripts d'exploitation.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

### Phase E — Utilisateurs, droits et processus

Sécurité et stabilité commencent ici : qui peut quoi, et ce qui tourne sur la machine.

#### 41. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 42. Utilisateurs et groupes
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/utilisateurs-groupes/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - Concept clé de « Utilisateurs et groupes »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 43. Permissions Linux
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/permissions-linux/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - rwx et umask
  - sudoers ciblé
  - moindre privilège
- [ ] Page lue / pratiquée

#### 44. Modifier les droits
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/modifier-droits/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - Concept clé de « Modifier les droits »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 45. Utiliser sudo
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/sudo/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - rwx et umask
  - sudoers ciblé
  - moindre privilège
- [ ] Page lue / pratiquée

#### 46. Comprendre les processus
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/comprendre-processus/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - Concept clé de « Comprendre les processus »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 47. Arrêter un processus
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/utilisateurs-droits-processus/arreter-processus/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - Concept clé de « Arrêter un processus »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase F — Paquets, réseau et logs de premier niveau

Boucler le socle fondamentaux : installer des logiciels, tester le réseau, lire journalctl. Pour la théorie TCP/IP approfondie → dossier `03-reseaux`.

#### 48. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/installer-maintenir/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 49. Comprendre les paquets
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/installer-maintenir/comprendre-paquets/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 50. Installer et supprimer des logiciels
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/installer-maintenir/installer-supprimer-logiciels/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Installer et supprimer des logiciels »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 51. Mettre à jour son système
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/installer-maintenir/mises-a-jour-systeme/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Mettre à jour son système »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 52. Nettoyer et maintenir
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/installer-maintenir/nettoyer-maintenir/`
- **Pourquoi ici :** Sans machine de lab, la suite reste théorique. Installe maintenant ; tu y reviendras pour chaque exercice.
- **À retenir :**
  - Concept clé de « Nettoyer et maintenir »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 53. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/reseau-services-logs/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 54. Bases réseau sous Linux
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/reseau-services-logs/reseau-linux/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Bases réseau sous Linux »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 55. Tester la connectivité
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/reseau-services-logs/test-connectivite/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Tester la connectivité »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 56. Lire les logs avec journalctl
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/reseau-services-logs/journalctl/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Lire les logs avec journalctl »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 57. Premiers gestes de dépannage
- **Lien :** `/docs/admin-serveurs/linux/fondamentaux/reseau-services-logs/depannage-linux/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Premiers gestes de dépannage »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase G — Exploiter : texte avancé, transferts et SSH

Passage du niveau découverte au travail réel : éditer, transformer, transférer, administrer à distance.

#### 58. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/exploiter/`
- **Pourquoi ici :** Étape 58 du parcours Linux : « Vue d'ensemble ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 59. Vim
- **Lien :** `/docs/admin-serveurs/linux/exploiter/editeurs/vim/`
- **Pourquoi ici :** Étape 59 du parcours Linux : « Vim ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Vim »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 60. Rechercher et remplacer dans un fichier
- **Lien :** `/docs/admin-serveurs/linux/exploiter/edition-fichiers/`
- **Pourquoi ici :** Étape 60 du parcours Linux : « Rechercher et remplacer dans un fichier ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Rechercher et remplacer dans un fichier »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 61. Transformer du texte avec cut, tr et paste
- **Lien :** `/docs/admin-serveurs/linux/exploiter/transformer-texte/`
- **Pourquoi ici :** Étape 61 du parcours Linux : « Transformer du texte avec cut, tr et paste ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Transformer du texte avec cut, tr et paste »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 62. Trier, compter et dédoublonner
- **Lien :** `/docs/admin-serveurs/linux/exploiter/trier-compter/`
- **Pourquoi ici :** Étape 62 du parcours Linux : « Trier, compter et dédoublonner ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Trier, compter et dédoublonner »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 63. Comparer des fichiers avec diff
- **Lien :** `/docs/admin-serveurs/linux/exploiter/diff/`
- **Pourquoi ici :** Étape 63 du parcours Linux : « Comparer des fichiers avec diff ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Comparer des fichiers avec diff »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 64. Expressions régulières de base
- **Lien :** `/docs/admin-serveurs/linux/exploiter/regex-base/`
- **Pourquoi ici :** Étape 64 du parcours Linux : « Expressions régulières de base ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Expressions régulières de base »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 65. Suivre un log en temps réel
- **Lien :** `/docs/admin-serveurs/linux/exploiter/suivre-log/`
- **Pourquoi ici :** Étape 65 du parcours Linux : « Suivre un log en temps réel ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Suivre un log en temps réel »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 66. Transformer du texte en flux avec sed
- **Lien :** `/docs/admin-serveurs/linux/exploiter/sed/`
- **Pourquoi ici :** Étape 66 du parcours Linux : « Transformer du texte en flux avec sed ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Transformer du texte en flux avec sed »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 67. Traiter des données avec awk
- **Lien :** `/docs/admin-serveurs/linux/exploiter/awk/`
- **Pourquoi ici :** Étape 67 du parcours Linux : « Traiter des données avec awk ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Traiter des données avec awk »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 68. Redirections avancées et xargs
- **Lien :** `/docs/admin-serveurs/linux/exploiter/redirections-avancees/`
- **Pourquoi ici :** Étape 68 du parcours Linux : « Redirections avancées et xargs ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Redirections avancées et xargs »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 69. tar avancé : backups et restauration sélective
- **Lien :** `/docs/admin-serveurs/linux/exploiter/tar-avance/`
- **Pourquoi ici :** Étape 69 du parcours Linux : « tar avancé : backups et restauration sélective ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « tar avancé : backups et restauration sélective »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 70. Télécharger avec curl et wget
- **Lien :** `/docs/admin-serveurs/linux/exploiter/telecharger-fichiers/`
- **Pourquoi ici :** Étape 70 du parcours Linux : « Télécharger avec curl et wget ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Télécharger avec curl et wget »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 71. Copier avec SCP
- **Lien :** `/docs/admin-serveurs/linux/reseau/scp/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Copier avec SCP »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 72. Transférer des fichiers avec SFTP
- **Lien :** `/docs/admin-serveurs/linux/reseau/sftp/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Transférer des fichiers avec SFTP »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 73. rsync
- **Lien :** `/docs/admin-serveurs/linux/reseau/rsync/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « rsync »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 74. Vérifier l'intégrité d'un fichier
- **Lien :** `/docs/admin-serveurs/linux/exploiter/integrite-fichier/`
- **Pourquoi ici :** Étape 74 du parcours Linux : « Vérifier l'intégrité d'un fichier ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Vérifier l'intégrité d'un fichier »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 75. Créer et gérer des clés SSH
- **Lien :** `/docs/admin-serveurs/linux/exploiter/ssh/cle-ssh/`
- **Pourquoi ici :** SSH est le canal d'admin n°1 : clés, client, sshd, tunnels. À verrouiller ensuite via `05-securite` (durcir SSH).
- **À retenir :**
  - Clés vs mot de passe
  - sshd_config minimal
  - ProxyJump / tunnels
- [ ] Page lue / pratiquée

#### 76. Se connecter en SSH
- **Lien :** `/docs/admin-serveurs/linux/exploiter/ssh/ssh-client/`
- **Pourquoi ici :** SSH est le canal d'admin n°1 : clés, client, sshd, tunnels. À verrouiller ensuite via `05-securite` (durcir SSH).
- **À retenir :**
  - Clés vs mot de passe
  - sshd_config minimal
  - ProxyJump / tunnels
- [ ] Page lue / pratiquée

#### 77. Configurer le serveur OpenSSH
- **Lien :** `/docs/admin-serveurs/linux/exploiter/ssh/serveur-sshd/`
- **Pourquoi ici :** SSH est le canal d'admin n°1 : clés, client, sshd, tunnels. À verrouiller ensuite via `05-securite` (durcir SSH).
- **À retenir :**
  - Clés vs mot de passe
  - sshd_config minimal
  - ProxyJump / tunnels
- [ ] Page lue / pratiquée

#### 78. Exécuter des commandes distantes via SSH
- **Lien :** `/docs/admin-serveurs/linux/exploiter/ssh/commande-distance-ssh/`
- **Pourquoi ici :** SSH est le canal d'admin n°1 : clés, client, sshd, tunnels. À verrouiller ensuite via `05-securite` (durcir SSH).
- **À retenir :**
  - Clés vs mot de passe
  - sshd_config minimal
  - ProxyJump / tunnels
- [ ] Page lue / pratiquée

### Phase H — Scripts, planification et observation système

Automatiser (scripts, cron/timers) puis observer (processus, mémoire, perf) : le cœur de l'exploitation quotidienne.

#### 79. Tunnels SSH : -L, -R, -D et ProxyJump
- **Lien :** `/docs/admin-serveurs/linux/exploiter/ssh/tunnels-ssh/`
- **Pourquoi ici :** SSH est le canal d'admin n°1 : clés, client, sshd, tunnels. À verrouiller ensuite via `05-securite` (durcir SSH).
- **À retenir :**
  - Clés vs mot de passe
  - sshd_config minimal
  - ProxyJump / tunnels
- [ ] Page lue / pratiquée

#### 80. Écrire un script shell
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/shell/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 81. Variables et paramètres Bash
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/variables-bash/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 82. Conditions et tests Bash
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/conditions-bash/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 83. Boucles Bash : for, while, until
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/boucles-bash/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 84. Écrire des scripts robustes
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/scripts-robustes/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 85. Fonctions Bash
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/fonctions-bash/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 86. Déboguer un script Bash
- **Lien :** `/docs/admin-serveurs/linux/exploiter/scripts/debug-bash/`
- **Pourquoi ici :** Scripting Bash progressif : transforme les gestes manuels en automatisations testables.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 87. Personnaliser Bash en profondeur
- **Lien :** `/docs/admin-serveurs/linux/exploiter/shells/personnaliser-bash/`
- **Pourquoi ici :** Étape 87 du parcours Linux : « Personnaliser Bash en profondeur ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - set -euo pipefail
  - tests [[ ]]
  - fonctions et debug
- [ ] Page lue / pratiquée

#### 88. Découvrir Zsh
- **Lien :** `/docs/admin-serveurs/linux/exploiter/shells/zsh/`
- **Pourquoi ici :** Étape 88 du parcours Linux : « Découvrir Zsh ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Découvrir Zsh »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 89. Découvrir Fish
- **Lien :** `/docs/admin-serveurs/linux/exploiter/shells/fish/`
- **Pourquoi ici :** Étape 89 du parcours Linux : « Découvrir Fish ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Découvrir Fish »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 90. Planifier avec cron
- **Lien :** `/docs/admin-serveurs/linux/exploiter/planification/cron/`
- **Pourquoi ici :** cron/at/timers : automatiser backups et maintenance sans être connecté 24/7.
- **À retenir :**
  - Concept clé de « Planifier avec cron »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 91. Planifier une tâche unique avec at
- **Lien :** `/docs/admin-serveurs/linux/exploiter/planification/at/`
- **Pourquoi ici :** cron/at/timers : automatiser backups et maintenance sans être connecté 24/7.
- **À retenir :**
  - Concept clé de « Planifier une tâche unique avec at »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 92. Planifier avec systemd timers
- **Lien :** `/docs/admin-serveurs/linux/exploiter/planification/timers/`
- **Pourquoi ici :** cron/at/timers : automatiser backups et maintenance sans être connecté 24/7.
- **À retenir :**
  - Concept clé de « Planifier avec systemd timers »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 93. Gérer les processus
- **Lien :** `/docs/admin-serveurs/linux/exploiter/processus/`
- **Pourquoi ici :** Comprendre jobs, arrière-plan et limites : indispensable pour diagnostiquer charge et fuites.
- **À retenir :**
  - Concept clé de « Gérer les processus »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 94. Jobs et contrôle des tâches
- **Lien :** `/docs/admin-serveurs/linux/exploiter/processus/jobs-shell/`
- **Pourquoi ici :** Comprendre jobs, arrière-plan et limites : indispensable pour diagnostiquer charge et fuites.
- **À retenir :**
  - Concept clé de « Jobs et contrôle des tâches »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 95. Lancer une commande en arrière-plan
- **Lien :** `/docs/admin-serveurs/linux/exploiter/processus/arriere-plan/`
- **Pourquoi ici :** Comprendre jobs, arrière-plan et limites : indispensable pour diagnostiquer charge et fuites.
- **À retenir :**
  - Concept clé de « Lancer une commande en arrière-plan »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 96. Utiliser nohup
- **Lien :** `/docs/admin-serveurs/linux/exploiter/processus/nohup/`
- **Pourquoi ici :** Comprendre jobs, arrière-plan et limites : indispensable pour diagnostiquer charge et fuites.
- **À retenir :**
  - Concept clé de « Utiliser nohup »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 97. witr : pourquoi un processus tourne
- **Lien :** `/docs/admin-serveurs/linux/exploiter/processus/witr/`
- **Pourquoi ici :** Comprendre jobs, arrière-plan et limites : indispensable pour diagnostiquer charge et fuites.
- **À retenir :**
  - Concept clé de « witr : pourquoi un processus tourne »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 98. Limiter les ressources (ulimit)
- **Lien :** `/docs/admin-serveurs/linux/exploiter/processus/limites-ressources/`
- **Pourquoi ici :** Comprendre jobs, arrière-plan et limites : indispensable pour diagnostiquer charge et fuites.
- **À retenir :**
  - Concept clé de « Limiter les ressources (ulimit) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 99. Surveiller la mémoire
- **Lien :** `/docs/admin-serveurs/linux/exploiter/memoire/`
- **Pourquoi ici :** Étape 99 du parcours Linux : « Surveiller la mémoire ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Surveiller la mémoire »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 100. Le serveur est lent
- **Lien :** `/docs/admin-serveurs/linux/exploiter/performances/`
- **Pourquoi ici :** Étape 100 du parcours Linux : « Le serveur est lent ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Le serveur est lent »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 101. Optimiser avec des profils tuned
- **Lien :** `/docs/admin-serveurs/linux/exploiter/tuned/`
- **Pourquoi ici :** Étape 101 du parcours Linux : « Optimiser avec des profils tuned ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Optimiser avec des profils tuned »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 102. Le serveur ne redémarre pas
- **Lien :** `/docs/admin-serveurs/linux/exploiter/demarrage-reboot/`
- **Pourquoi ici :** Étape 102 du parcours Linux : « Le serveur ne redémarre pas ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Le serveur ne redémarre pas »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase I — systemd et maintenance des paquets

Services, journaux, gestionnaires de paquets multi-distros, patch security. Le patch management transverse complète la vision organisationnelle.

#### 103. Paramètres du noyau au démarrage
- **Lien :** `/docs/admin-serveurs/linux/exploiter/parametres-noyau-demarrage/`
- **Pourquoi ici :** Étape 103 du parcours Linux : « Paramètres du noyau au démarrage ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Paramètres du noyau au démarrage »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 104. Comprendre systemd
- **Lien :** `/docs/admin-serveurs/linux/exploiter/systemd/`
- **Pourquoi ici :** systemd = unité de base des services modernes. Sans ça, dépanner nginx/sshd reste de la magie.
- **À retenir :**
  - unit/service/timer
  - systemctl status/journalctl
  - enable vs start
- [ ] Page lue / pratiquée

#### 105. Démarrer et diagnostiquer un service
- **Lien :** `/docs/admin-serveurs/linux/exploiter/systemd/services/`
- **Pourquoi ici :** systemd = unité de base des services modernes. Sans ça, dépanner nginx/sshd reste de la magie.
- **À retenir :**
  - unit/service/timer
  - systemctl status/journalctl
  - enable vs start
- [ ] Page lue / pratiquée

#### 106. Activer un service au démarrage
- **Lien :** `/docs/admin-serveurs/linux/maintenir/services/activer-service-demarrage/`
- **Pourquoi ici :** systemd = unité de base des services modernes. Sans ça, dépanner nginx/sshd reste de la magie.
- **À retenir :**
  - Concept clé de « Activer un service au démarrage »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 107. Lire les journaux (journalctl)
- **Lien :** `/docs/admin-serveurs/linux/exploiter/systemd/journaux/`
- **Pourquoi ici :** systemd = unité de base des services modernes. Sans ça, dépanner nginx/sshd reste de la magie.
- **À retenir :**
  - unit/service/timer
  - systemctl status/journalctl
  - enable vs start
- [ ] Page lue / pratiquée

#### 108. Gérer la rotation des journaux
- **Lien :** `/docs/admin-serveurs/linux/exploiter/systemd/logrotate/`
- **Pourquoi ici :** systemd = unité de base des services modernes. Sans ça, dépanner nginx/sshd reste de la magie.
- **À retenir :**
  - unit/service/timer
  - systemctl status/journalctl
  - enable vs start
- [ ] Page lue / pratiquée

#### 109. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/maintenir/`
- **Pourquoi ici :** Étape 109 du parcours Linux : « Vue d'ensemble ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 110. Gestion des paquets
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 111. APT (Debian / Ubuntu)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/apt/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 112. DNF (RHEL / Fedora)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/dnf/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 113. APK (Alpine)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/apk/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 114. Pacman (Arch)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/pacman/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 115. Zypper (SUSE)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/zypper/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 116. fpm (créer des paquets)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/fpm/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 117. Flatpak (applications sandboxées)
- **Lien :** `/docs/admin-serveurs/linux/maintenir/paquets/flatpak/`
- **Pourquoi ici :** Maîtriser le cycle de vie logiciel (install/update/clean) avant de parler patch management organisationnel.
- **À retenir :**
  - Dépôts et signatures
  - MàJ vs upgrade
  - Rollback / historique
- [ ] Page lue / pratiquée

#### 118. Corriger les dépendances cassées
- **Lien :** `/docs/admin-serveurs/linux/maintenir/dependances-cassees/`
- **Pourquoi ici :** Étape 118 du parcours Linux : « Corriger les dépendances cassées ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Corriger les dépendances cassées »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 119. Appliquer les mises à jour de sécurité
- **Lien :** `/docs/admin-serveurs/linux/maintenir/mises-a-jour-securite/`
- **Pourquoi ici :** Relie la technique (apt/dnf) à la pratique ops : cadence, exceptions, preuves. Pont vers `05-securite`.
- **À retenir :**
  - Concept clé de « Appliquer les mises à jour de sécurité »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 120. Patch management
- **Lien :** `/docs/admin-serveurs/securite/patch-management/`
- **Pourquoi ici :** Relie la technique (apt/dnf) à la pratique ops : cadence, exceptions, preuves. Pont vers `05-securite`.
- **À retenir :**
  - Concept clé de « Patch management »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 121. La charge système explose
- **Lien :** `/docs/admin-serveurs/linux/maintenir/charge-systeme/`
- **Pourquoi ici :** Étape 121 du parcours Linux : « La charge système explose ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « La charge système explose »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase J — Stockage : du disque au volume logique

Progression stricte : identifier → partitionner → FS → monter → LVM → swap → RAID/LUKS. On n'attaque pas LUKS avant de savoir monter un volume.

#### 122. Le disque est plein
- **Lien :** `/docs/admin-serveurs/linux/maintenir/espace-disque-inodes/`
- **Pourquoi ici :** Étape 122 du parcours Linux : « Le disque est plein ». Placée ici pour respecter les dépendances avec les pages précédentes et préparer la suite.
- **À retenir :**
  - Concept clé de « Le disque est plein »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 123. Vue d'ensemble du stockage
- **Lien :** `/docs/admin-serveurs/linux/stockage/vue-ensemble/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 124. Identifier les disques
- **Lien :** `/docs/admin-serveurs/linux/stockage/identifier-disques/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 125. Gérer les partitions
- **Lien :** `/docs/admin-serveurs/linux/stockage/partitions/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 126. Comparatif
- **Lien :** `/docs/admin-serveurs/linux/stockage/choisir-systeme-fichiers/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 127. ext4
- **Lien :** `/docs/admin-serveurs/linux/stockage/ext4/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 128. XFS
- **Lien :** `/docs/admin-serveurs/linux/stockage/xfs/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 129. Préparer un stockage local
- **Lien :** `/docs/admin-serveurs/linux/stockage/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 130. Monter et rendre persistant
- **Lien :** `/docs/admin-serveurs/linux/stockage/montage-persistance/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 131. Automontage à la demande (autofs)
- **Lien :** `/docs/admin-serveurs/linux/stockage/autofs/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 132. Gérer le stockage logique (LVM)
- **Lien :** `/docs/admin-serveurs/linux/stockage/lvm/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - PV/VG/LV
  - étendre un volume
  - snapshot = point de retour
- [ ] Page lue / pratiquée

#### 133. Instantanés LVM
- **Lien :** `/docs/admin-serveurs/linux/stockage/lvm-snapshots/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - PV/VG/LV
  - étendre un volume
  - snapshot = point de retour
- [ ] Page lue / pratiquée

#### 134. Provisionnement fin LVM
- **Lien :** `/docs/admin-serveurs/linux/stockage/lvm-thin-provisioning/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - PV/VG/LV
  - étendre un volume
  - snapshot = point de retour
- [ ] Page lue / pratiquée

#### 135. Déplacer un volume à chaud (pvmove)
- **Lien :** `/docs/admin-serveurs/linux/stockage/lvm-pvmove/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - PV/VG/LV
  - étendre un volume
  - snapshot = point de retour
- [ ] Page lue / pratiquée

#### 136. Gérer le swap
- **Lien :** `/docs/admin-serveurs/linux/stockage/swap/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 137. RAID logiciel (mdadm)
- **Lien :** `/docs/admin-serveurs/linux/stockage/raid-mdadm/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 138. Chiffrement LUKS
- **Lien :** `/docs/admin-serveurs/linux/stockage/chiffrement-luks/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 139. Contrôler capacité et quotas
- **Lien :** `/docs/admin-serveurs/linux/stockage/espace-disque/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

### Phase K — Configurer et diagnostiquer le réseau Linux

Netplan/NetworkManager/bond après les bases. Complète `03-reseaux` côté OS.

#### 140. Analyser les performances disques
- **Lien :** `/docs/admin-serveurs/linux/stockage/performances-disques/`
- **Pourquoi ici :** Stockage progressif : chaque page suppose la précédente (disque→partition→FS→LVM). Ne saute pas d'étape.
- **À retenir :**
  - fdisk/lsblk
  - fstab
  - fsck / montages
- [ ] Page lue / pratiquée

#### 141. Les fondamentaux du réseau Linux
- **Lien :** `/docs/admin-serveurs/linux/reseau/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Les fondamentaux du réseau Linux »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 142. ip
- **Lien :** `/docs/admin-serveurs/linux/reseau/ip/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « ip »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 143. Netplan (Ubuntu)
- **Lien :** `/docs/admin-serveurs/linux/reseau/netplan/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Netplan (Ubuntu) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 144. NetworkManager (RHEL)
- **Lien :** `/docs/admin-serveurs/linux/reseau/networkmanager/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « NetworkManager (RHEL) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 145. Bond et bridge (agrégation de liens)
- **Lien :** `/docs/admin-serveurs/linux/reseau/bond-bridge/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Concept clé de « Bond et bridge (agrégation de liens) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase L — Sécuriser le serveur Linux (socle)

Users/sudo/ACL/LDAP côté OS. Le durcissement avancé (SELinux, firewall, CIS) est dans `05-securite` — dépendance explicite.

#### 146. Le réseau ne répond plus
- **Lien :** `/docs/admin-serveurs/linux/reseau/diagnostic/`
- **Pourquoi ici :** Réseau *côté Linux* (interfaces, outils, config). Pour OSI/TCP/IP théorique, enchaîne ou entrelace avec `03-reseaux`.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

#### 147. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/securiser/`
- **Pourquoi ici :** Socle sécurité *admin Linux* (comptes, ACL, LDAP). Les contrôles avancés (MAC, firewall, CIS) sont dans `05-securite`.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 148. Administrer utilisateurs et groupes
- **Lien :** `/docs/admin-serveurs/linux/securiser/utilisateurs-groupes/`
- **Pourquoi ici :** Socle sécurité *admin Linux* (comptes, ACL, LDAP). Les contrôles avancés (MAC, firewall, CIS) sont dans `05-securite`.
- **À retenir :**
  - Concept clé de « Administrer utilisateurs et groupes »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 149. Déléguer avec sudo
- **Lien :** `/docs/admin-serveurs/linux/securiser/sudo/`
- **Pourquoi ici :** Droits et sudo : base de la sécurité OS. Prépare le durcissement détaillé dans `05-securite`.
- **À retenir :**
  - rwx et umask
  - sudoers ciblé
  - moindre privilège
- [ ] Page lue / pratiquée

#### 150. Affiner avec les ACL
- **Lien :** `/docs/admin-serveurs/linux/securiser/acl/`
- **Pourquoi ici :** Socle sécurité *admin Linux* (comptes, ACL, LDAP). Les contrôles avancés (MAC, firewall, CIS) sont dans `05-securite`.
- **À retenir :**
  - rwx et umask
  - sudoers ciblé
  - moindre privilège
- [ ] Page lue / pratiquée

#### 151. Authentifier Linux sur un annuaire LDAP (SSSD)
- **Lien :** `/docs/admin-serveurs/linux/securiser/authentifier-ldap-sssd/`
- **Pourquoi ici :** Socle sécurité *admin Linux* (comptes, ACL, LDAP). Les contrôles avancés (MAC, firewall, CIS) sont dans `05-securite`.
- **À retenir :**
  - Concept clé de « Authentifier Linux sur un annuaire LDAP (SSSD) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase M — Dépanner avec méthode

Après avoir les outils, on apprend à diagnostiquer : méthode d'abord, scénarios ensuite.

#### 152. Baseline & Drift
- **Lien :** `/docs/admin-serveurs/securite/baselines-drift/`
- **Pourquoi ici :** Après avoir configuré des serveurs : comment détecter la dérive. Prépare Ansible/`09` et les audits `05`.
- **À retenir :**
  - Concept clé de « Baseline & Drift »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 153. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/depanner/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

#### 154. Méthode de diagnostic Linux
- **Lien :** `/docs/admin-serveurs/linux/depanner/methode-diagnostic/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

#### 155. Un service ne démarre pas
- **Lien :** `/docs/admin-serveurs/linux/depanner/service-ne-demarre-pas/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

#### 156. Un service actif qui ne répond pas
- **Lien :** `/docs/admin-serveurs/linux/depanner/service-ne-repond-pas/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

#### 157. Retrouver l'accès SSH
- **Lien :** `/docs/admin-serveurs/linux/depanner/perte-acces-ssh/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Clés vs mot de passe
  - sshd_config minimal
  - ProxyJump / tunnels
- [ ] Page lue / pratiquée

#### 158. Un système de fichiers en lecture seule
- **Lien :** `/docs/admin-serveurs/linux/depanner/systeme-fichiers-lecture-seule/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

### Phase N — Pilotage et validation

Capacity planning et validation des compétences : on sort du « je sais faire » vers « je sais dimensionner ».

#### 159. Un serveur bloqué au démarrage
- **Lien :** `/docs/admin-serveurs/linux/depanner/boot-bloque/`
- **Pourquoi ici :** Scénario de panne après avoir les outils : on applique la méthode plutôt que d'empiler des commandes au hasard.
- **À retenir :**
  - Hypothèses → preuves
  - logs + métriques
  - rollback
- [ ] Page lue / pratiquée

#### 160. Gestion des capacités
- **Lien :** `/docs/admin-serveurs/pilotage/capacity-planning/`
- **Pourquoi ici :** Passe de la réaction à l'anticipation : dimensionner CPU/RAM/disque avant l'incident.
- **À retenir :**
  - Concept clé de « Gestion des capacités »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase O — Internals et eBPF (avancé, optionnel)

Namespaces/cgroups préparent les conteneurs (`10`). eBPF est un bonus après un socle solide — ne bloque pas la suite du cursus.

#### 161. Validation
- **Lien :** `/docs/admin-serveurs/linux/validation/`
- **Pourquoi ici :** Point de contrôle : vérifie que tu sais faire avant de passer aux dossiers suivants.
- **À retenir :**
  - Concept clé de « Validation »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 162. Namespaces
- **Lien :** `/docs/admin-serveurs/linux/internals/namespaces/`
- **Pourquoi ici :** Concepts noyau (namespaces, cgroups, caps) : pont conceptuel vers les conteneurs (`10-maitriser-la-conteneurisation`).
- **À retenir :**
  - Concept clé de « Namespaces »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 163. Cgroups
- **Lien :** `/docs/admin-serveurs/linux/internals/cgroups/`
- **Pourquoi ici :** Concepts noyau (namespaces, cgroups, caps) : pont conceptuel vers les conteneurs (`10-maitriser-la-conteneurisation`).
- **À retenir :**
  - Concept clé de « Cgroups »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 164. Capabilities
- **Lien :** `/docs/admin-serveurs/linux/internals/capabilities/`
- **Pourquoi ici :** Concepts noyau (namespaces, cgroups, caps) : pont conceptuel vers les conteneurs (`10-maitriser-la-conteneurisation`).
- **À retenir :**
  - Concept clé de « Capabilities »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 165. Le guide complet
- **Lien :** `/docs/admin-serveurs/linux/ebpf/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 166. eBPF, c'est quoi
- **Lien :** `/docs/admin-serveurs/linux/ebpf/comprendre/ebpf-c-est-quoi/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 167. Les maps
- **Lien :** `/docs/admin-serveurs/linux/ebpf/comprendre/maps-noyau-userspace/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 168. Le vérificateur
- **Lien :** `/docs/admin-serveurs/linux/ebpf/comprendre/verificateur/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 169. Premier programme
- **Lien :** `/docs/admin-serveurs/linux/ebpf/comprendre/premier-programme/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 170. CO-RE et BTF
- **Lien :** `/docs/admin-serveurs/linux/ebpf/comprendre/co-re-btf/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 171. bpftrace
- **Lien :** `/docs/admin-serveurs/linux/ebpf/tracer/bpftrace/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 172. BCC et libbpf
- **Lien :** `/docs/admin-serveurs/linux/ebpf/tracer/bcc-libbpf/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 173. Surface d'attaque
- **Lien :** `/docs/admin-serveurs/linux/ebpf/durcissement/surface-attaque-bpf/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 174. Rootkits eBPF
- **Lien :** `/docs/admin-serveurs/linux/ebpf/durcissement/rootkits-ebpf/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

### Phase P — Annexe : fiches de référence et outils complémentaires

Cheat-sheets et outils annexes : à consulter au besoin, pas à lire d'une traite avant la pratique.

#### 175. Durcir eBPF
- **Lien :** `/docs/admin-serveurs/linux/ebpf/durcissement/durcir-ebpf/`
- **Pourquoi ici :** Observabilité/sécurité avancée au niveau noyau. Optionnel ; utile plus tard avec `11-observabilite` et sécu runtime.
- **À retenir :**
  - Programme + map + vérificateur
  - Observabilité vs sécurité
  - Surface d'attaque BPF
- [ ] Page lue / pratiquée

#### 176. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/references/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 177. grep
- **Lien :** `/docs/admin-serveurs/linux/references/grep/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « grep »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 178. find
- **Lien :** `/docs/admin-serveurs/linux/references/find/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « find »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 179. sed
- **Lien :** `/docs/admin-serveurs/linux/references/sed/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « sed »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 180. awk
- **Lien :** `/docs/admin-serveurs/linux/references/awk/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « awk »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 181. cut
- **Lien :** `/docs/admin-serveurs/linux/references/cut/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « cut »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 182. xargs
- **Lien :** `/docs/admin-serveurs/linux/references/xargs/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « xargs »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 183. tar
- **Lien :** `/docs/admin-serveurs/linux/references/tar/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « tar »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 184. curl
- **Lien :** `/docs/admin-serveurs/linux/references/curl/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « curl »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 185. wget
- **Lien :** `/docs/admin-serveurs/linux/references/wget/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « wget »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 186. httpie
- **Lien :** `/docs/admin-serveurs/linux/references/httpie/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « httpie »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 187. jq
- **Lien :** `/docs/admin-serveurs/linux/references/jq/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « jq »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase Q — Annexe : Nix / NixOS (parcours parallèle)

Track optionnel pour une approche déclarative de l'OS. Utile plus tard avec IaC (`09`), pas requis pour débuter.

#### 188. parallel
- **Lien :** `/docs/admin-serveurs/linux/references/parallel/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « parallel »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 189. Vue d'ensemble
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Vue d'ensemble »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 190. Identifier son système Linux
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/commandes-systemes/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Identifier son système Linux »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 191. Périphériques
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/commandes-peripheriques/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Périphériques »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 192. Installer un serveur Linux
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/installation/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Installer un serveur Linux »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 193. Micro
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/micro/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Micro »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 194. Neovim
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/neovim/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Neovim »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 195. Vim avancé (splits, macros, plugins)
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/vim-avance/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Vim avancé (splits, macros, plugins) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 196. Btrfs
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/btrfs/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Btrfs »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 197. Quotas disque
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/quotas/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « Quotas disque »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 198. WSL2 (environnement local)
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/wsl2/`
- **Pourquoi ici :** Fiche de référence / outil annexe : à garder sous le coude pendant les labs, pas à lire linérairement avant la pratique.
- **À retenir :**
  - Concept clé de « WSL2 (environnement local) »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 199. Introduction
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Introduction »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

### Phase R — Certifications

En fin de parcours : LFCS puis RHCSA pour structurer la révision, une fois la pratique acquise.

#### 200. Comprendre l'écosystème
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/ecosysteme/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Comprendre l'écosystème »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 201. Installer Nix
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/installation/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Installer Nix »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 202. Le langage Nix
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/langage/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Le langage Nix »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 203. Store, profils et générations
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/store-profils-generations/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Store, profils et générations »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 204. Commandes classiques
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/commandes-classiques/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Commandes classiques »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 205. Commandes modernes
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/commandes-modernes/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Commandes modernes »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 206. Écrire une configuration NixOS
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/configuration/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Écrire une configuration NixOS »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 207. Flakes
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/flakes/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Flakes »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 208. Import, factorisation et pinning
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/import-factorisation-pinning/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Import, factorisation et pinning »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 209. Environnements de développement
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/environnements-developpement/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Environnements de développement »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 210. Cas pratiques DevOps
- **Lien :** `/docs/admin-serveurs/linux/references-complementaires/nix/cas-pratiques-devops/`
- **Pourquoi ici :** Parcours parallèle déclaratif. À attaquer si tu vises une admin moderne type IaC OS ; sinon après `09`.
- **À retenir :**
  - Concept clé de « Cas pratiques DevOps »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 211. Choisir sa certification
- **Lien :** `/docs/admin-serveurs/linux/certifications/`
- **Pourquoi ici :** Structure ta révision une fois le socle pratiqué : certification = validation, pas point d'entrée.
- **À retenir :**
  - Concept clé de « Choisir sa certification »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 212. LFCS
- **Lien :** `/docs/admin-serveurs/linux/certifications/lfcs/`
- **Pourquoi ici :** Structure ta révision une fois le socle pratiqué : certification = validation, pas point d'entrée.
- **À retenir :**
  - Concept clé de « LFCS »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 213. Tâches incontournables
- **Lien :** `/docs/admin-serveurs/linux/certifications/lfcs/competences-essentielles/`
- **Pourquoi ici :** Structure ta révision une fois le socle pratiqué : certification = validation, pas point d'entrée.
- **À retenir :**
  - Concept clé de « Tâches incontournables »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 214. RHCSA
- **Lien :** `/docs/admin-serveurs/linux/certifications/rhcsa/`
- **Pourquoi ici :** Structure ta révision une fois le socle pratiqué : certification = validation, pas point d'entrée.
- **À retenir :**
  - Concept clé de « RHCSA »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée

#### 215. Tâches incontournables
- **Lien :** `/docs/admin-serveurs/linux/certifications/rhcsa/competences-essentielles/`
- **Pourquoi ici :** Structure ta révision une fois le socle pratiqué : certification = validation, pas point d'entrée.
- **À retenir :**
  - Concept clé de « Tâches incontournables »
  - Commande(s) de vérification
  - Piège classique à éviter
- [ ] Page lue / pratiquée


## Compétences acquises

À la fin de ce dossier, tu sauras :

- Installer et maintenir un lab Linux (Debian/Ubuntu ou famille RHEL)
- Naviguer le FHS, manipuler fichiers/texte, écrire des scripts Bash robustes
- Gérer utilisateurs, permissions, sudo et processus
- Administrer à distance via SSH (clés, sshd, tunnels)
- Piloter des services avec systemd et lire/exploiter les journaux
- Gérer paquets et mises à jour de sécurité avec méthode
- Concevoir un stockage local (partitions, FS, LVM, swap) et connaître RAID/LUKS
- Configurer le réseau Linux (ip, Netplan/NetworkManager) et diagnostiquer
- Appliquer un socle de sécurisation OS et une méthode de dépannage
- Situer namespaces/cgroups/eBPF pour la suite (conteneurs, obs)

## Checklist globale

- [ ] Phase A — Cadre métier terminée
- [ ] Phase B — Lab installé (VM ou VPS)
- [ ] Phases C–F — Fondamentaux validés (fichiers, shell, users, paquets, réseau/logs)
- [ ] Phases G–I — Exploitation + systemd + maintenance
- [ ] Phase J — Stockage pratiqué (au moins partitions + LVM + fstab)
- [ ] Phases K–M — Réseau Linux, sécu socle, dépannage
- [ ] Phase N — Validation
- [ ] Phase O — (optionnel) internals / eBPF
- [ ] Annexes P–Q consultées au besoin
- [ ] Phase R — (optionnel) plan de certification
- [ ] Dossier `02-administration-linux` validé — prêt pour `03` / `08` / suite du cursus
