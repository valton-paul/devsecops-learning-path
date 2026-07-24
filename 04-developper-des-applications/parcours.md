# Parcours — 04-developper-des-applications

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/developper/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier

Ce dossier pose le socle « développeur » utile à tout profil DevOps / DevSecOps : comprendre les API, versionner avec Git, écrire du code fiable, gérer artefacts et dépendances. Sans ces bases, l’IaC, les conteneurs et la CI/CD restent des boîtes noires.

Le langage principal retenu est **Python** : c’est le track le plus dense et le plus pédagogique du site pour un débutant DevOps (scripts, CLI, HTTP, tests, packaging). Go et les autres langages sont traités en annexe / option une fois le socle Python acquis.

La progression relie ce dossier au reste de la formation : Git et le code alimentent `09-infrastructure-as-code` et `10-maitriser-la-conteneurisation` ; les artefacts et dépendances préparent `13-pipeline-ci-cd` ; la qualité et la supply chain se prolongent dans `05-securite`.

Les blocs MCP, agents et IA (Claude Code, RAG, LLM locaux) sont volontairement placés en fin de parcours : ce sont des accélérateurs avancés, pas le point d’entrée.

## Prérequis

- Dossiers locaux : `02-administration-linux` (terminal, fichiers, permissions, SSH)
- Concepts : ligne de commande, édition de fichiers, notions HTTP de base (utile avant API REST)
- Dépendances ultérieures : ce dossier est prérequis de `13-pipeline-ci-cd` (build, tests, artefacts) et complète `05-securite` côté AppSec / supply chain — croiser les deux dès que vous écrivez du code partagé

## Logique pédagogique (pourquoi cet ordre)

Le menu du site mélange langages, Git, artefacts et outils IA. Ici l’ordre suit les dépendances cognitives : d’abord les **bases transverses** (API, normes, regex, conventional commits), puis **Git en profondeur**, ensuite **un seul langage principal (Python)** jusqu’à un niveau opérationnel DevOps, puis **artefacts / dépendances**, enfin les **autres langages** et les **outils MCP/IA**.

Python est préféré à Go pour la densité du contenu et la courbe d’apprentissage scripts/automation. Go reste disponible en option. Les pages « parcours » du site sont intégrées comme jalons, pas comme table des matières concurrente.

## Ordre de lecture conseillé

### Phase A — Bases transverses
Avant tout langage : comprendre comment les systèmes communiquent (API REST), ce qu’est une norme, maîtriser les regex, et adopter des messages de commit lisibles (conventional commits).

#### 1. Développer des applications — vue d’ensemble
- **Lien :** `/docs/developper/`
- **Pourquoi ici :** Point d’entrée du dossier : cartographier les familles de contenus avant de plonger.
- **À retenir :**
  - Idée centrale : Dev
  - Où ça s’applique dans un flux DevOps (developper)
  - Commandes / réglages à retester pour `developper`
- [ ] Page lue / pratiquée

#### 2. Comprendre les API REST
- **Lien :** `/docs/developper/api-rest/`
- **Pourquoi ici :** Les services DevOps parlent HTTP : verbés, statuts, ressources. Indispensable avant FastAPI, reverse-proxies et CI.
- **À retenir :**
  - Idée centrale : Comprendre les API REST
  - Où ça s’applique dans un flux DevOps (api-rest)
  - Commandes / réglages à retester pour `api-rest`
- [ ] Page lue / pratiquée

#### 3. Conventions de nommage
- **Lien :** `/docs/developper/normes/`
- **Pourquoi ici :** Cadre commun (styles, conventions) pour lire et écrire du code maintenable en équipe.
- **À retenir :**
  - Idée centrale : Conventions de nommage
  - Où ça s’applique dans un flux DevOps (normes)
  - Commandes / réglages à retester pour `normes`
- [ ] Page lue / pratiquée

#### 4. Maîtriser Les expressions régulières
- **Lien :** `/docs/developper/expressions-regulieres/`
- **Pourquoi ici :** Les regex servent partout : logs, parsers, validations, Git grep, pipelines.
- **À retenir :**
  - Idée centrale : Maîtriser Les expressions régulières
  - Où ça s’applique dans un flux DevOps (expressions-regulieres)
  - Commandes / réglages à retester pour `expressions-regulieres`
- [ ] Page lue / pratiquée

#### 5. conventional commits
- **Lien :** `/docs/developper/conventional-commits/`
- **Pourquoi ici :** Standardise l’historique Git — prépare changelog, semver et gates CI (`13-pipeline-ci-cd`).
- **À retenir :**
  - Idée centrale : conventional commits
  - Où ça s’applique dans un flux DevOps (conventional-commits)
  - Commandes / réglages à retester pour `conventional-commits`
- [ ] Page lue / pratiquée

### Phase B — Git et versioning (en profondeur)
Git est l’outil transversal n°1 : local d’abord, puis collaboration, workflows, debug et serveur. Maîtrisez-le avant l’IaC et la CI.

#### 6. Introduction
- **Lien :** `/docs/developper/version/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Introduction » (version) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `version`
- [ ] Page lue / pratiquée

#### 7. Git
- **Lien :** `/docs/developper/version/git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Git » (version › git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `git`
- [ ] Page lue / pratiquée

#### 8. Mon parcours
- **Lien :** `/docs/developper/version/git/parcours/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Mon parcours » (version › git › parcours) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mon parcours
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `parcours`
- [ ] Page lue / pratiquée

#### 9. Historique du contrôle de version
- **Lien :** `/docs/developper/version/git/historique-controle-version/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Historique du contrôle de version » (version › git › historique-controle-version) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Historique du contrôle de version
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `historique-controle-version`
- [ ] Page lue / pratiquée

#### 10. Présentation
- **Lien :** `/docs/developper/version/git/comprendre-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › comprendre-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `comprendre-git`
- [ ] Page lue / pratiquée

#### 11. Le modèle par snapshots
- **Lien :** `/docs/developper/version/git/modele-git-snapshots/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Le modèle par snapshots » (version › git › modele-git-snapshots) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le modèle par snapshots
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `modele-git-snapshots`
- [ ] Page lue / pratiquée

#### 12. Vocabulaire Git
- **Lien :** `/docs/developper/version/git/vocabulaire-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Vocabulaire Git » (version › git › vocabulaire-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vocabulaire Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `vocabulaire-git`
- [ ] Page lue / pratiquée

#### 13. Présentation
- **Lien :** `/docs/developper/version/git/bases-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › bases-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `bases-git`
- [ ] Page lue / pratiquée

#### 14. Installer et configurer
- **Lien :** `/docs/developper/version/git/installer-configurer-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Installer et configurer » (version › git › installer-configurer-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer et configurer
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `installer-configurer-git`
- [ ] Page lue / pratiquée

#### 15. Obtenir de l'aide
- **Lien :** `/docs/developper/version/git/obtenir-aide-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Obtenir de l'aide » (version › git › obtenir-aide-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Obtenir de l'aide
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `obtenir-aide-git`
- [ ] Page lue / pratiquée

#### 16. Créer un dépôt
- **Lien :** `/docs/developper/version/git/creer-repository/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Créer un dépôt » (version › git › creer-repository) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Créer un dépôt
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `creer-repository`
- [ ] Page lue / pratiquée

#### 17. Présentation
- **Lien :** `/docs/developper/version/git/operations-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › operations-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `operations-git`
- [ ] Page lue / pratiquée

#### 18. Enregistrer des modifications
- **Lien :** `/docs/developper/version/git/enregistrer-modifications/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Enregistrer des modifications » (version › git › enregistrer-modifications) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Enregistrer des modifications
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `enregistrer-modifications`
- [ ] Page lue / pratiquée

#### 19. Présentation
- **Lien :** `/docs/developper/version/git/precision-index/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › precision-index) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `precision-index`
- [ ] Page lue / pratiquée

#### 20. Staging interactif
- **Lien :** `/docs/developper/version/git/staging-interactif/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Staging interactif » (version › git › staging-interactif) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Staging interactif
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `staging-interactif`
- [ ] Page lue / pratiquée

#### 21. Consulter l'historique
- **Lien :** `/docs/developper/version/git/consulter-historique/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Consulter l'historique » (version › git › consulter-historique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Consulter l'historique
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `consulter-historique`
- [ ] Page lue / pratiquée

#### 22. Annuler des modifications
- **Lien :** `/docs/developper/version/git/annuler-modifications/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Annuler des modifications » (version › git › annuler-modifications) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Annuler des modifications
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `annuler-modifications`
- [ ] Page lue / pratiquée

#### 23. Présentation
- **Lien :** `/docs/developper/version/git/branches-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › branches-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `branches-git`
- [ ] Page lue / pratiquée

#### 24. Les branches en bref
- **Lien :** `/docs/developper/version/git/branches-en-bref/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Les branches en bref » (version › git › branches-en-bref) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les branches en bref
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `branches-en-bref`
- [ ] Page lue / pratiquée

#### 25. Gestion des branches
- **Lien :** `/docs/developper/version/git/gestion-branches/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Gestion des branches » (version › git › gestion-branches) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Gestion des branches
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `gestion-branches`
- [ ] Page lue / pratiquée

#### 26. Présentation
- **Lien :** `/docs/developper/version/git/collaboration-remotes/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › collaboration-remotes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `collaboration-remotes`
- [ ] Page lue / pratiquée

#### 27. Remotes fondamentaux
- **Lien :** `/docs/developper/version/git/remotes-fondamentaux/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Remotes fondamentaux » (version › git › remotes-fondamentaux) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Remotes fondamentaux
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `remotes-fondamentaux`
- [ ] Page lue / pratiquée

#### 28. Branches distantes
- **Lien :** `/docs/developper/version/git/branches-distantes/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Branches distantes » (version › git › branches-distantes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Branches distantes
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `branches-distantes`
- [ ] Page lue / pratiquée

#### 29. Présentation
- **Lien :** `/docs/developper/version/git/conflits-synchronisation/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › conflits-synchronisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `conflits-synchronisation`
- [ ] Page lue / pratiquée

#### 30. Merge et conflits
- **Lien :** `/docs/developper/version/git/merge-et-conflits/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Merge et conflits » (version › git › merge-et-conflits) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Merge et conflits
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `merge-et-conflits`
- [ ] Page lue / pratiquée

#### 31. Résoudre les conflits de merge
- **Lien :** `/docs/developper/version/git/resoudre-conflits-merge/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Résoudre les conflits de merge » (version › git › resoudre-conflits-merge) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Résoudre les conflits de merge
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `resoudre-conflits-merge`
- [ ] Page lue / pratiquée

#### 32. Merge avancé
- **Lien :** `/docs/developper/version/git/merge-avance/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Merge avancé » (version › git › merge-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Merge avancé
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `merge-avance`
- [ ] Page lue / pratiquée

#### 33. Git rebase
- **Lien :** `/docs/developper/version/git/rebase-fondamental/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Git rebase » (version › git › rebase-fondamental) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Git rebase
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `rebase-fondamental`
- [ ] Page lue / pratiquée

#### 34. Présentation
- **Lien :** `/docs/developper/version/git/corriger-commits/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › corriger-commits) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `corriger-commits`
- [ ] Page lue / pratiquée

#### 35. Annuler et corriger des commits
- **Lien :** `/docs/developper/version/git/annuler-corriger-commits/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Annuler et corriger des commits » (version › git › annuler-corriger-commits) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Annuler et corriger des commits
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `annuler-corriger-commits`
- [ ] Page lue / pratiquée

#### 36. Reset démystifié
- **Lien :** `/docs/developper/version/git/reset-demystifie/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Reset démystifié » (version › git › reset-demystifie) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Reset démystifié
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `reset-demystifie`
- [ ] Page lue / pratiquée

#### 37. Commit sur la mauvaise branche
- **Lien :** `/docs/developper/version/git/commit-mauvaise-branche/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Commit sur la mauvaise branche » (version › git › commit-mauvaise-branche) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Commit sur la mauvaise branche
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `commit-mauvaise-branche`
- [ ] Page lue / pratiquée

#### 38. Débloquer un push rejeté
- **Lien :** `/docs/developper/version/git/debloquer-push-rejete/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Débloquer un push rejeté » (version › git › debloquer-push-rejete) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Débloquer un push rejeté
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `debloquer-push-rejete`
- [ ] Page lue / pratiquée

#### 39. HEAD détaché
- **Lien :** `/docs/developper/version/git/detached-head/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « HEAD détaché » (version › git › detached-head) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : HEAD détaché
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `detached-head`
- [ ] Page lue / pratiquée

#### 40. Stashing et cleaning
- **Lien :** `/docs/developper/version/git/stashing-cleaning/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Stashing et cleaning » (version › git › stashing-cleaning) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Stashing et cleaning
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `stashing-cleaning`
- [ ] Page lue / pratiquée

#### 41. Tags et versions
- **Lien :** `/docs/developper/version/git/tags-versions/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Tags et versions » (version › git › tags-versions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Tags et versions
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `tags-versions`
- [ ] Page lue / pratiquée

#### 42. Pull requests et code review
- **Lien :** `/docs/developper/version/git/pull-requests-code-review/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Pull requests et code review » (version › git › pull-requests-code-review) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Pull requests et code review
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `pull-requests-code-review`
- [ ] Page lue / pratiquée

#### 43. Workflows Git
- **Lien :** `/docs/developper/version/git/workflows-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Workflows Git » (version › git › workflows-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Workflows Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `workflows-git`
- [ ] Page lue / pratiquée

#### 44. Workflows distribués
- **Lien :** `/docs/developper/version/git/workflows-distribues/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Workflows distribués » (version › git › workflows-distribues) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Workflows distribués
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `workflows-distribues`
- [ ] Page lue / pratiquée

#### 45. Plateformes Git
- **Lien :** `/docs/developper/version/git/plateformes-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Plateformes Git » (version › git › plateformes-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Plateformes Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `plateformes-git`
- [ ] Page lue / pratiquée

#### 46. Stockage des credentials
- **Lien :** `/docs/developper/version/git/credential-storage/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Stockage des credentials » (version › git › credential-storage) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Stockage des credentials
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `credential-storage`
- [ ] Page lue / pratiquée

#### 47. Alias et productivité
- **Lien :** `/docs/developper/version/git/alias-productivite/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Alias et productivité » (version › git › alias-productivite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Alias et productivité
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `alias-productivite`
- [ ] Page lue / pratiquée

#### 48. Présentation
- **Lien :** `/docs/developper/version/git/debug-recherche/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › debug-recherche) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `debug-recherche`
- [ ] Page lue / pratiquée

#### 49. Rechercher dans Git
- **Lien :** `/docs/developper/version/git/rechercher-dans-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Rechercher dans Git » (version › git › rechercher-dans-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Rechercher dans Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `rechercher-dans-git`
- [ ] Page lue / pratiquée

#### 50. Debug : bisect et blame
- **Lien :** `/docs/developper/version/git/debug-bisect-blame/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Debug : bisect et blame » (version › git › debug-bisect-blame) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Debug : bisect et blame
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `debug-bisect-blame`
- [ ] Page lue / pratiquée

#### 51. Diagnostiquer des problèmes
- **Lien :** `/docs/developper/version/git/diagnostiquer-problemes/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Diagnostiquer des problèmes » (version › git › diagnostiquer-problemes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Diagnostiquer des problèmes
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `diagnostiquer-problemes`
- [ ] Page lue / pratiquée

#### 52. Présentation
- **Lien :** `/docs/developper/version/git/reecriture-correction/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › reecriture-correction) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `reecriture-correction`
- [ ] Page lue / pratiquée

#### 53. Réécrire l'historique
- **Lien :** `/docs/developper/version/git/reecrire-historique/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Réécrire l'historique » (version › git › reecrire-historique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Réécrire l'historique
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `reecrire-historique`
- [ ] Page lue / pratiquée

#### 54. Cherry-pick
- **Lien :** `/docs/developper/version/git/cherry-pick/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Cherry-pick » (version › git › cherry-pick) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Cherry-pick
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `cherry-pick`
- [ ] Page lue / pratiquée

#### 55. Sélection de révisions
- **Lien :** `/docs/developper/version/git/selection-revision/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Sélection de révisions » (version › git › selection-revision) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sélection de révisions
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `selection-revision`
- [ ] Page lue / pratiquée

#### 56. Présentation
- **Lien :** `/docs/developper/version/git/investiguer-nettoyer/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › investiguer-nettoyer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `investiguer-nettoyer`
- [ ] Page lue / pratiquée

#### 57. Nettoyer l'historique et les fichiers
- **Lien :** `/docs/developper/version/git/nettoyer-historique-fichiers/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Nettoyer l'historique et les fichiers » (version › git › nettoyer-historique-fichiers) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Nettoyer l'historique et les fichiers
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `nettoyer-historique-fichiers`
- [ ] Page lue / pratiquée

#### 58. Récupérer des données perdues
- **Lien :** `/docs/developper/version/git/recuperer-donnees-perdues/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Récupérer des données perdues » (version › git › recuperer-donnees-perdues) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Récupérer des données perdues
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `recuperer-donnees-perdues`
- [ ] Page lue / pratiquée

#### 59. Présentation
- **Lien :** `/docs/developper/version/git/outils-avances-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › outils-avances-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `outils-avances-git`
- [ ] Page lue / pratiquée

#### 60. Bundling
- **Lien :** `/docs/developper/version/git/bundling/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Bundling » (version › git › bundling) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Bundling
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `bundling`
- [ ] Page lue / pratiquée

#### 61. Présentation
- **Lien :** `/docs/developper/version/git/multi-depots/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › multi-depots) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `multi-depots`
- [ ] Page lue / pratiquée

#### 62. Submodules
- **Lien :** `/docs/developper/version/git/submodules/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Submodules » (version › git › submodules) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Submodules
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `submodules`
- [ ] Page lue / pratiquée

#### 63. Subtree
- **Lien :** `/docs/developper/version/git/subtree/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Subtree » (version › git › subtree) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Subtree
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `subtree`
- [ ] Page lue / pratiquée

#### 64. Présentation
- **Lien :** `/docs/developper/version/git/git-serveur/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Présentation » (version › git › git-serveur) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `git-serveur`
- [ ] Page lue / pratiquée

#### 65. Protocoles Git
- **Lien :** `/docs/developper/version/git/protocoles-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Protocoles Git » (version › git › protocoles-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Protocoles Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `protocoles-git`
- [ ] Page lue / pratiquée

#### 66. Héberger un serveur Git
- **Lien :** `/docs/developper/version/git/heberger-serveur-git/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Héberger un serveur Git » (version › git › heberger-serveur-git) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Héberger un serveur Git
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `heberger-serveur-git`
- [ ] Page lue / pratiquée

#### 67. Maintenir un projet
- **Lien :** `/docs/developper/version/git/maintenir-projet/`
- **Pourquoi ici :** Dans la phase « Git et versioning », « Maintenir un projet » (version › git › maintenir-projet) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Maintenir un projet
  - Où ça s’applique dans un flux DevOps (version)
  - Commandes / réglages à retester pour `maintenir-projet`
- [ ] Page lue / pratiquée

### Phase C — Python : fondamentaux
Langage principal du parcours DevOps. Posez syntaxe, types, fichiers, modules et formats (JSON/YAML) avant les frameworks.

#### 68. Introduction
- **Lien :** `/docs/developper/programmation/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Introduction » (programmation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `programmation`
- [ ] Page lue / pratiquée

#### 69. Débutez avec Python
- **Lien :** `/docs/developper/programmation/python/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Débutez avec Python » (programmation › python) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Débutez avec Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `python`
- [ ] Page lue / pratiquée

#### 70. Mon parcours Suivi
- **Lien :** `/docs/developper/programmation/python/parcours/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Mon parcours Suivi » (programmation › python › parcours) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mon parcours Suivi
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `parcours`
- [ ] Page lue / pratiquée

#### 71. Mon parcours (Fondamentaux)
- **Lien :** `/docs/developper/programmation/python/parcours-fondamentaux/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Mon parcours (Fondamentaux) » (programmation › python › parcours-fondamentaux) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mon parcours (Fondamentaux)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `parcours-fondamentaux`
- [ ] Page lue / pratiquée

#### 72. Les chaines de caracteres
- **Lien :** `/docs/developper/programmation/python/chaines/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les chaines de caracteres » (programmation › python › chaines) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les chaines de caracteres
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `chaines`
- [ ] Page lue / pratiquée

#### 73. Formater les chaines
- **Lien :** `/docs/developper/programmation/python/formatage-chaine/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Formater les chaines » (programmation › python › formatage-chaine) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Formater les chaines
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `formatage-chaine`
- [ ] Page lue / pratiquée

#### 74. Les listes
- **Lien :** `/docs/developper/programmation/python/liste/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les listes » (programmation › python › liste) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les listes
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `liste`
- [ ] Page lue / pratiquée

#### 75. Les tuples
- **Lien :** `/docs/developper/programmation/python/tuple/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les tuples » (programmation › python › tuple) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les tuples
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `tuple`
- [ ] Page lue / pratiquée

#### 76. Les sets
- **Lien :** `/docs/developper/programmation/python/set/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les sets » (programmation › python › set) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les sets
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `set`
- [ ] Page lue / pratiquée

#### 77. Les dictionnaires
- **Lien :** `/docs/developper/programmation/python/dictionnaire/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les dictionnaires » (programmation › python › dictionnaire) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les dictionnaires
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `dictionnaire`
- [ ] Page lue / pratiquée

#### 78. Structures et collections
- **Lien :** `/docs/developper/programmation/python/structures-collections/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Structures et collections » (programmation › python › structures-collections) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Structures et collections
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `structures-collections`
- [ ] Page lue / pratiquée

#### 79. Le slicing
- **Lien :** `/docs/developper/programmation/python/slicing/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Le slicing » (programmation › python › slicing) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le slicing
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `slicing`
- [ ] Page lue / pratiquée

#### 80. Lire et ecrire des fichiers
- **Lien :** `/docs/developper/programmation/python/fichiers/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Lire et ecrire des fichiers » (programmation › python › fichiers) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Lire et ecrire des fichiers
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `fichiers`
- [ ] Page lue / pratiquée

#### 81. pathlib : gerer les chemins
- **Lien :** `/docs/developper/programmation/python/pathlib/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « pathlib : gerer les chemins » (programmation › python › pathlib) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : pathlib : gerer les chemins
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pathlib`
- [ ] Page lue / pratiquée

#### 82. Les fonctions
- **Lien :** `/docs/developper/programmation/python/fonctions/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les fonctions » (programmation › python › fonctions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les fonctions
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `fonctions`
- [ ] Page lue / pratiquée

#### 83. Les modules et packages
- **Lien :** `/docs/developper/programmation/python/modules/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les modules et packages » (programmation › python › modules) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les modules et packages
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `modules`
- [ ] Page lue / pratiquée

#### 84. Gerer les exceptions
- **Lien :** `/docs/developper/programmation/python/exceptions/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Gerer les exceptions » (programmation › python › exceptions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Gerer les exceptions
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `exceptions`
- [ ] Page lue / pratiquée

#### 85. Les context managers
- **Lien :** `/docs/developper/programmation/python/context-managers/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les context managers » (programmation › python › context-managers) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les context managers
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `context-managers`
- [ ] Page lue / pratiquée

#### 86. Dates et heures avec datetime
- **Lien :** `/docs/developper/programmation/python/datetime/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Dates et heures avec datetime » (programmation › python › datetime) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Dates et heures avec datetime
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `datetime`
- [ ] Page lue / pratiquée

#### 87. Les expressions regulieres
- **Lien :** `/docs/developper/programmation/python/expressions-regulieres/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les expressions regulieres » (programmation › python › expressions-regulieres) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les expressions regulieres
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `expressions-regulieres`
- [ ] Page lue / pratiquée

#### 88. Nettoyer les textes
- **Lien :** `/docs/developper/programmation/python/traitement-texte/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Nettoyer les textes » (programmation › python › traitement-texte) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Nettoyer les textes
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `traitement-texte`
- [ ] Page lue / pratiquée

#### 89. Manipuler du JSON
- **Lien :** `/docs/developper/programmation/python/json/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Manipuler du JSON » (programmation › python › json) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Manipuler du JSON
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `json`
- [ ] Page lue / pratiquée

#### 90. Manipuler du YAML
- **Lien :** `/docs/developper/programmation/python/yaml/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Manipuler du YAML » (programmation › python › yaml) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Manipuler du YAML
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `yaml`
- [ ] Page lue / pratiquée

#### 91. Le pattern matching (match-case)
- **Lien :** `/docs/developper/programmation/python/match-case/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Le pattern matching (match-case) » (programmation › python › match-case) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le pattern matching (match-case)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `match-case`
- [ ] Page lue / pratiquée

#### 92. Les enumerations
- **Lien :** `/docs/developper/programmation/python/enums/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les enumerations » (programmation › python › enums) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les enumerations
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `enums`
- [ ] Page lue / pratiquée

#### 93. Les dataclasses
- **Lien :** `/docs/developper/programmation/python/dataclasses/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les dataclasses » (programmation › python › dataclasses) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les dataclasses
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `dataclasses`
- [ ] Page lue / pratiquée

#### 94. Les annotations de type
- **Lien :** `/docs/developper/programmation/python/type-hints/`
- **Pourquoi ici :** Dans la phase « Python fondamentaux », « Les annotations de type » (programmation › python › type-hints) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les annotations de type
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `type-hints`
- [ ] Page lue / pratiquée

### Phase D — Python : intermédiaire, qualité et packaging
POO, outillage (venv, uv, poetry), lint/tests et perf : le niveau attendu pour du code partagé et CI.

#### 95. La POO : les bases
- **Lien :** `/docs/developper/programmation/python/poo-base/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « La POO : les bases » (programmation › python › poo-base) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La POO : les bases
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `poo-base`
- [ ] Page lue / pratiquée

#### 96. La POO : notions avancees
- **Lien :** `/docs/developper/programmation/python/poo-avance/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « La POO : notions avancees » (programmation › python › poo-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La POO : notions avancees
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `poo-avance`
- [ ] Page lue / pratiquée

#### 97. Les decorateurs
- **Lien :** `/docs/developper/programmation/python/decorateur/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les decorateurs » (programmation › python › decorateur) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les decorateurs
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `decorateur`
- [ ] Page lue / pratiquée

#### 98. Les generateurs
- **Lien :** `/docs/developper/programmation/python/generateurs/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les generateurs » (programmation › python › generateurs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les generateurs
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `generateurs`
- [ ] Page lue / pratiquée

#### 99. itertools et functools
- **Lien :** `/docs/developper/programmation/python/itertools-functools/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « itertools et functools » (programmation › python › itertools-functools) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : itertools et functools
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `itertools-functools`
- [ ] Page lue / pratiquée

#### 100. Les descriptors
- **Lien :** `/docs/developper/programmation/python/descriptors/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les descriptors » (programmation › python › descriptors) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les descriptors
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `descriptors`
- [ ] Page lue / pratiquée

#### 101. Les métaclasses
- **Lien :** `/docs/developper/programmation/python/metaclasses/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les métaclasses » (programmation › python › metaclasses) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les métaclasses
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `metaclasses`
- [ ] Page lue / pratiquée

#### 102. Les design patterns
- **Lien :** `/docs/developper/programmation/python/design-patterns/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les design patterns » (programmation › python › design-patterns) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les design patterns
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `design-patterns`
- [ ] Page lue / pratiquée

#### 103. La gestion de la mémoire
- **Lien :** `/docs/developper/programmation/python/gestion-memoire/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « La gestion de la mémoire » (programmation › python › gestion-memoire) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La gestion de la mémoire
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `gestion-memoire`
- [ ] Page lue / pratiquée

#### 104. Comprendre le GIL
- **Lien :** `/docs/developper/programmation/python/gil/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Comprendre le GIL » (programmation › python › gil) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comprendre le GIL
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `gil`
- [ ] Page lue / pratiquée

#### 105. logging Python
- **Lien :** `/docs/developper/programmation/python/logging/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « logging Python » (programmation › python › logging) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : logging Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `logging`
- [ ] Page lue / pratiquée

#### 106. Pipenv
- **Lien :** `/docs/developper/programmation/python/environnements-virtuels/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Pipenv » (programmation › python › environnements-virtuels) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Pipenv
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `environnements-virtuels`
- [ ] Page lue / pratiquée

#### 107. pyenv : gerer les versions de Python
- **Lien :** `/docs/developper/programmation/python/pyenv/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « pyenv : gerer les versions de Python » (programmation › python › pyenv) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : pyenv : gerer les versions de Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pyenv`
- [ ] Page lue / pratiquée

#### 108. pipx : installer des outils Python
- **Lien :** `/docs/developper/programmation/python/pipx/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « pipx : installer des outils Python » (programmation › python › pipx) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : pipx : installer des outils Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pipx`
- [ ] Page lue / pratiquée

#### 109. uv : le gestionnaire ultra-rapide
- **Lien :** `/docs/developper/programmation/python/uv/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « uv : le gestionnaire ultra-rapide » (programmation › python › uv) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : uv : le gestionnaire ultra-rapide
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `uv`
- [ ] Page lue / pratiquée

#### 110. Poetry
- **Lien :** `/docs/developper/programmation/python/poetry/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Poetry » (programmation › python › poetry) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Poetry
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `poetry`
- [ ] Page lue / pratiquée

#### 111. Publier un paquet sur PyPI
- **Lien :** `/docs/developper/programmation/python/packaging-pypi/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Publier un paquet sur PyPI » (programmation › python › packaging-pypi) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Publier un paquet sur PyPI
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `packaging-pypi`
- [ ] Page lue / pratiquée

#### 112. Le linting en Python
- **Lien :** `/docs/developper/programmation/python/linting/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Le linting en Python » (programmation › python › linting) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le linting en Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `linting`
- [ ] Page lue / pratiquée

#### 113. Ruff : linter et formateur
- **Lien :** `/docs/developper/programmation/python/ruff/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Ruff : linter et formateur » (programmation › python › ruff) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ruff : linter et formateur
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ruff`
- [ ] Page lue / pratiquée

#### 114. reShapr : API → serveur MCP FinOps
- **Lien :** `/docs/developper/programmation/python/reshapr/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « reShapr : API → serveur MCP FinOps » (programmation › python › reshapr) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : reShapr : API → serveur MCP FinOps
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `reshapr`
- [ ] Page lue / pratiquée

#### 115. Tester son code Python
- **Lien :** `/docs/developper/programmation/python/tests/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Tester son code Python » (programmation › python › tests) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Tester son code Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `tests`
- [ ] Page lue / pratiquée

#### 116. Unittest
- **Lien :** `/docs/developper/programmation/python/tests/unittest-1/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Unittest » (programmation › python › tests › unittest-1) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Unittest
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `unittest-1`
- [ ] Page lue / pratiquée

#### 117. pytest en pratique
- **Lien :** `/docs/developper/programmation/python/tests/pytest/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « pytest en pratique » (programmation › python › tests › pytest) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : pytest en pratique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pytest`
- [ ] Page lue / pratiquée

#### 118. Les mocks dans les tests
- **Lien :** `/docs/developper/programmation/python/tests/mock/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les mocks dans les tests » (programmation › python › tests › mock) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les mocks dans les tests
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mock`
- [ ] Page lue / pratiquée

#### 119. tox : tester sur plusieurs versions
- **Lien :** `/docs/developper/programmation/python/tests/tox/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « tox : tester sur plusieurs versions » (programmation › python › tests › tox) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : tox : tester sur plusieurs versions
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `tox`
- [ ] Page lue / pratiquée

#### 120. Les tests avancés
- **Lien :** `/docs/developper/programmation/python/tests-avances/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Les tests avancés » (programmation › python › tests-avances) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les tests avancés
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `tests-avances`
- [ ] Page lue / pratiquée

#### 121. Profiler son code
- **Lien :** `/docs/developper/programmation/python/profiling/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Profiler son code » (programmation › python › profiling) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Profiler son code
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `profiling`
- [ ] Page lue / pratiquée

#### 122. Optimiser son code
- **Lien :** `/docs/developper/programmation/python/optimisation/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Optimiser son code » (programmation › python › optimisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Optimiser son code
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `optimisation`
- [ ] Page lue / pratiquée

#### 123. Cython
- **Lien :** `/docs/developper/programmation/python/cython/`
- **Pourquoi ici :** Dans la phase « Python intermédiaire », « Cython » (programmation › python › cython) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Cython
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `cython`
- [ ] Page lue / pratiquée

### Phase E — Python orienté DevOps (HTTP, CLI, auto, async)
Appliquer Python aux tâches ops : HTTP, CLI, templating, remote exec, API, SQLAlchemy, concurrence.

#### 124. Appeler des API avec requests
- **Lien :** `/docs/developper/programmation/python/requests/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Appeler des API avec requests » (programmation › python › requests) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Appeler des API avec requests
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `requests`
- [ ] Page lue / pratiquée

#### 125. Click : des CLI en Python
- **Lien :** `/docs/developper/programmation/python/click/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Click : des CLI en Python » (programmation › python › click) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Click : des CLI en Python
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `click`
- [ ] Page lue / pratiquée

#### 126. Rich : embellir le terminal
- **Lien :** `/docs/developper/programmation/python/rich/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Rich : embellir le terminal » (programmation › python › rich) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Rich : embellir le terminal
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rich`
- [ ] Page lue / pratiquée

#### 127. Textual : des interfaces terminal
- **Lien :** `/docs/developper/programmation/python/textual/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Textual : des interfaces terminal » (programmation › python › textual) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Textual : des interfaces terminal
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `textual`
- [ ] Page lue / pratiquée

#### 128. Templates avec Jinja
- **Lien :** `/docs/developper/programmation/python/jinja/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Templates avec Jinja » (programmation › python › jinja) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Templates avec Jinja
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `jinja`
- [ ] Page lue / pratiquée

#### 129. Fabric : automatiser en SSH
- **Lien :** `/docs/developper/programmation/python/fabric/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Fabric : automatiser en SSH » (programmation › python › fabric) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Fabric : automatiser en SSH
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `fabric`
- [ ] Page lue / pratiquée

#### 130. pyinfra : automatiser l'infrastructure
- **Lien :** `/docs/developper/programmation/python/pyinfra/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « pyinfra : automatiser l'infrastructure » (programmation › python › pyinfra) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : pyinfra : automatiser l'infrastructure
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pyinfra`
- [ ] Page lue / pratiquée

#### 131. Scanner un reseau avec nmap
- **Lien :** `/docs/developper/programmation/python/nmap/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Scanner un reseau avec nmap » (programmation › python › nmap) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Scanner un reseau avec nmap
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `nmap`
- [ ] Page lue / pratiquée

#### 132. Récupérer du contenu avec Trafilatura
- **Lien :** `/docs/developper/programmation/python/trafilatura/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Récupérer du contenu avec Trafilatura » (programmation › python › trafilatura) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Récupérer du contenu avec Trafilatura
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `trafilatura`
- [ ] Page lue / pratiquée

#### 133. FastAPI : creer une API
- **Lien :** `/docs/developper/programmation/python/fastapi/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « FastAPI : creer une API » (programmation › python › fastapi) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : FastAPI : creer une API
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `fastapi`
- [ ] Page lue / pratiquée

#### 134. Se connecter a une base de donnees
- **Lien :** `/docs/developper/programmation/python/connexion-1/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Se connecter a une base de donnees » (programmation › python › connexion-1) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Se connecter a une base de donnees
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `connexion-1`
- [ ] Page lue / pratiquée

#### 135. Connexion avancee aux bases
- **Lien :** `/docs/developper/programmation/python/connexion-4/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Connexion avancee aux bases » (programmation › python › connexion-4) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Connexion avancee aux bases
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `connexion-4`
- [ ] Page lue / pratiquée

#### 136. SQLAlchemy : les bases
- **Lien :** `/docs/developper/programmation/python/sqlachemy-1/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « SQLAlchemy : les bases » (programmation › python › sqlachemy-1) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SQLAlchemy : les bases
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `sqlachemy-1`
- [ ] Page lue / pratiquée

#### 137. SQLAlchemy : l'ORM en pratique
- **Lien :** `/docs/developper/programmation/python/sqlachemy-2/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « SQLAlchemy : l'ORM en pratique » (programmation › python › sqlachemy-2) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SQLAlchemy : l'ORM en pratique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `sqlachemy-2`
- [ ] Page lue / pratiquée

#### 138. Le threading
- **Lien :** `/docs/developper/programmation/python/threading/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Le threading » (programmation › python › threading) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le threading
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `threading`
- [ ] Page lue / pratiquée

#### 139. Le multiprocessing
- **Lien :** `/docs/developper/programmation/python/multiprocessing/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Le multiprocessing » (programmation › python › multiprocessing) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le multiprocessing
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `multiprocessing`
- [ ] Page lue / pratiquée

#### 140. concurrent.futures
- **Lien :** `/docs/developper/programmation/python/concurrent-futures/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « concurrent.futures » (programmation › python › concurrent-futures) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : concurrent.futures
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `concurrent-futures`
- [ ] Page lue / pratiquée

#### 141. La programmation asynchrone
- **Lien :** `/docs/developper/programmation/python/asyncio/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « La programmation asynchrone » (programmation › python › asyncio) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La programmation asynchrone
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `asyncio`
- [ ] Page lue / pratiquée

#### 142. asyncio avancé
- **Lien :** `/docs/developper/programmation/python/asyncio-avance/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « asyncio avancé » (programmation › python › asyncio-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : asyncio avancé
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `asyncio-avance`
- [ ] Page lue / pratiquée

#### 143. Mon parcours (Avancé) Suivi
- **Lien :** `/docs/developper/programmation/python/parcours-avance/`
- **Pourquoi ici :** Dans la phase « Python DevOps », « Mon parcours (Avancé) Suivi » (programmation › python › parcours-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mon parcours (Avancé) Suivi
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `parcours-avance`
- [ ] Page lue / pratiquée

### Phase F — Artefacts et dépendances
Une fois le code produit : où le stocker (Nexus, Harbor, Pulp…) et comment le maintenir à jour (Dependabot, Renovate). Pont direct vers `13-pipeline-ci-cd` et `05-securite` (supply chain).

#### 144. Introduction
- **Lien :** `/docs/developper/artefacts/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Introduction » (artefacts) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `artefacts`
- [ ] Page lue / pratiquée

#### 145. Artifactory
- **Lien :** `/docs/developper/artefacts/artifactory/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Artifactory » (artefacts › artifactory) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Artifactory
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `artifactory`
- [ ] Page lue / pratiquée

#### 146. Harbor
- **Lien :** `/docs/developper/artefacts/harbor/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Harbor » (artefacts › harbor) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Harbor
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `harbor`
- [ ] Page lue / pratiquée

#### 147. Nexus
- **Lien :** `/docs/developper/artefacts/nexus/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Nexus » (artefacts › nexus) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Nexus
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `nexus`
- [ ] Page lue / pratiquée

#### 148. Dépôt proxy et cache
- **Lien :** `/docs/developper/artefacts/nexus/depot-proxy-cache/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Dépôt proxy et cache » (artefacts › nexus › depot-proxy-cache) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Dépôt proxy et cache
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `depot-proxy-cache`
- [ ] Page lue / pratiquée

#### 149. Installer Nexus
- **Lien :** `/docs/developper/artefacts/nexus/installation/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Installer Nexus » (artefacts › nexus › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer Nexus
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 150. Registre Docker
- **Lien :** `/docs/developper/artefacts/nexus/registry-docker/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Registre Docker » (artefacts › nexus › registry-docker) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Registre Docker
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `registry-docker`
- [ ] Page lue / pratiquée

#### 151. Présentation
- **Lien :** `/docs/developper/artefacts/pulp/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Présentation » (artefacts › pulp) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `pulp`
- [ ] Page lue / pratiquée

#### 152. Air-gapped et TLS auto-signé
- **Lien :** `/docs/developper/artefacts/pulp/air-gap-tls/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Air-gapped et TLS auto-signé » (artefacts › pulp › air-gap-tls) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Air-gapped et TLS auto-signé
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `air-gap-tls`
- [ ] Page lue / pratiquée

#### 153. Installer Pulp
- **Lien :** `/docs/developper/artefacts/pulp/installer/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Installer Pulp » (artefacts › pulp › installer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer Pulp
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `installer`
- [ ] Page lue / pratiquée

#### 154. Déployer sur Kubernetes
- **Lien :** `/docs/developper/artefacts/pulp/kubernetes/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Déployer sur Kubernetes » (artefacts › pulp › kubernetes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Déployer sur Kubernetes
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `kubernetes`
- [ ] Page lue / pratiquée

#### 155. Publier et consommer des artefacts
- **Lien :** `/docs/developper/artefacts/pulp/publier-consommer/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Publier et consommer des artefacts » (artefacts › pulp › publier-consommer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Publier et consommer des artefacts
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `publier-consommer`
- [ ] Page lue / pratiquée

#### 156. Registre de conteneurs et scan Trivy
- **Lien :** `/docs/developper/artefacts/pulp/registre-conteneurs/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Registre de conteneurs et scan Trivy » (artefacts › pulp › registre-conteneurs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Registre de conteneurs et scan Trivy
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `registre-conteneurs`
- [ ] Page lue / pratiquée

#### 157. Sauvegarder et restaurer
- **Lien :** `/docs/developper/artefacts/pulp/sauvegarde/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Sauvegarder et restaurer » (artefacts › pulp › sauvegarde) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegarder et restaurer
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `sauvegarde`
- [ ] Page lue / pratiquée

#### 158. Sécuriser Pulp
- **Lien :** `/docs/developper/artefacts/pulp/securiser/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Sécuriser Pulp » (artefacts › pulp › securiser) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécuriser Pulp
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `securiser`
- [ ] Page lue / pratiquée

#### 159. Signer les artefacts (Cosign, GPG)
- **Lien :** `/docs/developper/artefacts/pulp/signer-artefacts/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Signer les artefacts (Cosign, GPG) » (artefacts › pulp › signer-artefacts) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Signer les artefacts (Cosign, GPG)
  - Où ça s’applique dans un flux DevOps (artefacts)
  - Commandes / réglages à retester pour `signer-artefacts`
- [ ] Page lue / pratiquée

#### 160. Introduction
- **Lien :** `/docs/developper/dependances/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Introduction » (dependances) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (dependances)
  - Commandes / réglages à retester pour `dependances`
- [ ] Page lue / pratiquée

#### 161. Dependabot
- **Lien :** `/docs/developper/dependances/dependabot/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Dependabot » (dependances › dependabot) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Dependabot
  - Où ça s’applique dans un flux DevOps (dependances)
  - Commandes / réglages à retester pour `dependabot`
- [ ] Page lue / pratiquée

#### 162. Renovate
- **Lien :** `/docs/developper/dependances/renovate/`
- **Pourquoi ici :** Dans la phase « Artefacts et dépendances », « Renovate » (dependances › renovate) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Renovate
  - Où ça s’applique dans un flux DevOps (dependances)
  - Commandes / réglages à retester pour `renovate`
- [ ] Page lue / pratiquée

### Phase G — Autres langages (annexe / option)
YAML, HCL, SQL, Rego, Markdown… sont des DSL du quotidien DevOps. Go (et autres) en option après Python. HCL et YAML seront réutilisés intensément dans `09-infrastructure-as-code`.

#### 163. Introduction
- **Lien :** `/docs/developper/autres-langages/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Introduction » (autres-langages) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `autres-langages`
- [ ] Page lue / pratiquée

#### 164. AsciiDoc
- **Lien :** `/docs/developper/autres-langages/asciidoc/`
- **Pourquoi ici :** Dans la phase « Autres langages », « AsciiDoc » (autres-langages › asciidoc) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : AsciiDoc
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `asciidoc`
- [ ] Page lue / pratiquée

#### 165. Découvrir HCL
- **Lien :** `/docs/developper/autres-langages/hcl/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Découvrir HCL » (autres-langages › hcl) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Découvrir HCL
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `hcl`
- [ ] Page lue / pratiquée

#### 166. Expressions HCL
- **Lien :** `/docs/developper/autres-langages/hcl/expressions/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Expressions HCL » (autres-langages › hcl › expressions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Expressions HCL
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `expressions`
- [ ] Page lue / pratiquée

#### 167. Fonctions HCL
- **Lien :** `/docs/developper/autres-langages/hcl/fonctions/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Fonctions HCL » (autres-langages › hcl › fonctions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Fonctions HCL
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `fonctions`
- [ ] Page lue / pratiquée

#### 168. Syntaxe HCL de base
- **Lien :** `/docs/developper/autres-langages/hcl/syntaxe-de-base/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Syntaxe HCL de base » (autres-langages › hcl › syntaxe-de-base) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Syntaxe HCL de base
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `syntaxe-de-base`
- [ ] Page lue / pratiquée

#### 169. Types et collections HCL
- **Lien :** `/docs/developper/autres-langages/hcl/types-collections/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Types et collections HCL » (autres-langages › hcl › types-collections) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Types et collections HCL
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `types-collections`
- [ ] Page lue / pratiquée

#### 170. Variables et valeurs nommées
- **Lien :** `/docs/developper/autres-langages/hcl/variables-valeurs-nommees/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Variables et valeurs nommées » (autres-langages › hcl › variables-valeurs-nommees) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Variables et valeurs nommées
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `variables-valeurs-nommees`
- [ ] Page lue / pratiquée

#### 171. JSON
- **Lien :** `/docs/developper/autres-langages/json/`
- **Pourquoi ici :** Dans la phase « Autres langages », « JSON » (autres-langages › json) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : JSON
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `json`
- [ ] Page lue / pratiquée

#### 172. MarkDown
- **Lien :** `/docs/developper/autres-langages/markdown/`
- **Pourquoi ici :** Dans la phase « Autres langages », « MarkDown » (autres-langages › markdown) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : MarkDown
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `markdown`
- [ ] Page lue / pratiquée

#### 173. Découvrir Rego
- **Lien :** `/docs/developper/autres-langages/rego/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Découvrir Rego » (autres-langages › rego) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Découvrir Rego
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `rego`
- [ ] Page lue / pratiquée

#### 174. Données et itération
- **Lien :** `/docs/developper/autres-langages/rego/donnees-et-iteration/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Données et itération » (autres-langages › rego › donnees-et-iteration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Données et itération
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `donnees-et-iteration`
- [ ] Page lue / pratiquée

#### 175. OPA en pratique
- **Lien :** `/docs/developper/autres-langages/rego/opa-en-pratique/`
- **Pourquoi ici :** Dans la phase « Autres langages », « OPA en pratique » (autres-langages › rego › opa-en-pratique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OPA en pratique
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `opa-en-pratique`
- [ ] Page lue / pratiquée

#### 176. Règles et fonctions
- **Lien :** `/docs/developper/autres-langages/rego/regles-et-fonctions/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Règles et fonctions » (autres-langages › rego › regles-et-fonctions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Règles et fonctions
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `regles-et-fonctions`
- [ ] Page lue / pratiquée

#### 177. Rego avancé
- **Lien :** `/docs/developper/autres-langages/rego/rego-avance/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Rego avancé » (autres-langages › rego › rego-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Rego avancé
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `rego-avance`
- [ ] Page lue / pratiquée

#### 178. Syntaxe de base
- **Lien :** `/docs/developper/autres-langages/rego/syntaxe-de-base/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Syntaxe de base » (autres-langages › rego › syntaxe-de-base) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Syntaxe de base
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `syntaxe-de-base`
- [ ] Page lue / pratiquée

#### 179. Découvrir SQL
- **Lien :** `/docs/developper/autres-langages/sql/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Découvrir SQL » (autres-langages › sql) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Découvrir SQL
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `sql`
- [ ] Page lue / pratiquée

#### 180. Fonctions et agrégations
- **Lien :** `/docs/developper/autres-langages/sql/fonctions-et-agregations/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Fonctions et agrégations » (autres-langages › sql › fonctions-et-agregations) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Fonctions et agrégations
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `fonctions-et-agregations`
- [ ] Page lue / pratiquée

#### 181. Jointures et sous-requêtes
- **Lien :** `/docs/developper/autres-langages/sql/jointures-et-sous-requetes/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Jointures et sous-requêtes » (autres-langages › sql › jointures-et-sous-requetes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Jointures et sous-requêtes
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `jointures-et-sous-requetes`
- [ ] Page lue / pratiquée

#### 182. Manipuler les données
- **Lien :** `/docs/developper/autres-langages/sql/manipuler-les-donnees/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Manipuler les données » (autres-langages › sql › manipuler-les-donnees) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Manipuler les données
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `manipuler-les-donnees`
- [ ] Page lue / pratiquée

#### 183. SQL avancé
- **Lien :** `/docs/developper/autres-langages/sql/sql-avance/`
- **Pourquoi ici :** Dans la phase « Autres langages », « SQL avancé » (autres-langages › sql › sql-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SQL avancé
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `sql-avance`
- [ ] Page lue / pratiquée

#### 184. Syntaxe de base
- **Lien :** `/docs/developper/autres-langages/sql/syntaxe-de-base/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Syntaxe de base » (autres-langages › sql › syntaxe-de-base) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Syntaxe de base
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `syntaxe-de-base`
- [ ] Page lue / pratiquée

#### 185. YAML
- **Lien :** `/docs/developper/autres-langages/yaml/`
- **Pourquoi ici :** Dans la phase « Autres langages », « YAML » (autres-langages › yaml) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : YAML
  - Où ça s’applique dans un flux DevOps (autres-langages)
  - Commandes / réglages à retester pour `yaml`
- [ ] Page lue / pratiquée

#### 186. Introduction
- **Lien :** `/docs/developper/programmation/golang/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Introduction » (programmation › golang) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `golang`
- [ ] Page lue / pratiquée

#### 187. Compiler et versionner un binaire
- **Lien :** `/docs/developper/programmation/golang/build-versioning/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Compiler et versionner un binaire » (programmation › golang › build-versioning) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Compiler et versionner un binaire
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `build-versioning`
- [ ] Page lue / pratiquée

#### 188. Écrire une CLI avec Cobra
- **Lien :** `/docs/developper/programmation/golang/cli-cobra/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Écrire une CLI avec Cobra » (programmation › golang › cli-cobra) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Écrire une CLI avec Cobra
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `cli-cobra`
- [ ] Page lue / pratiquée

#### 189. Consommer une API REST
- **Lien :** `/docs/developper/programmation/golang/client-api-rest/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Consommer une API REST » (programmation › golang › client-api-rest) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Consommer une API REST
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `client-api-rest`
- [ ] Page lue / pratiquée

#### 190. Slices, maps et tableaux
- **Lien :** `/docs/developper/programmation/golang/collections/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Slices, maps et tableaux » (programmation › golang › collections) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Slices, maps et tableaux
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `collections`
- [ ] Page lue / pratiquée

#### 191. Charger une configuration (YAML, TOML)
- **Lien :** `/docs/developper/programmation/golang/configuration/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Charger une configuration (YAML, TOML) » (programmation › golang › configuration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Charger une configuration (YAML, TOML)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `configuration`
- [ ] Page lue / pratiquée

#### 192. Le contexte (context.Context)
- **Lien :** `/docs/developper/programmation/golang/context/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Le contexte (context.Context) » (programmation › golang › context) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le contexte (context.Context)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `context`
- [ ] Page lue / pratiquée

#### 193. La gestion des erreurs
- **Lien :** `/docs/developper/programmation/golang/erreurs/`
- **Pourquoi ici :** Dans la phase « Autres langages », « La gestion des erreurs » (programmation › golang › erreurs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La gestion des erreurs
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `erreurs`
- [ ] Page lue / pratiquée

#### 194. Ecrire des fonctions en Go
- **Lien :** `/docs/developper/programmation/golang/fonctions/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Ecrire des fonctions en Go » (programmation › golang › fonctions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ecrire des fonctions en Go
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `fonctions`
- [ ] Page lue / pratiquée

#### 195. Goroutines et channels
- **Lien :** `/docs/developper/programmation/golang/goroutines/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Goroutines et channels » (programmation › golang › goroutines) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Goroutines et channels
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `goroutines`
- [ ] Page lue / pratiquée

#### 196. Les interfaces
- **Lien :** `/docs/developper/programmation/golang/interfaces/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Les interfaces » (programmation › golang › interfaces) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les interfaces
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `interfaces`
- [ ] Page lue / pratiquée

#### 197. Logging structuré avec slog
- **Lien :** `/docs/developper/programmation/golang/logging-slog/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Logging structuré avec slog » (programmation › golang › logging-slog) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Logging structuré avec slog
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `logging-slog`
- [ ] Page lue / pratiquée

#### 198. Méthodes et récepteurs
- **Lien :** `/docs/developper/programmation/golang/methodes/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Méthodes et récepteurs » (programmation › golang › methodes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Méthodes et récepteurs
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `methodes`
- [ ] Page lue / pratiquée

#### 199. Packages et modules
- **Lien :** `/docs/developper/programmation/golang/packages-modules/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Packages et modules » (programmation › golang › packages-modules) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Packages et modules
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `packages-modules`
- [ ] Page lue / pratiquée

#### 200. Les pointeurs
- **Lien :** `/docs/developper/programmation/golang/pointeurs/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Les pointeurs » (programmation › golang › pointeurs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les pointeurs
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pointeurs`
- [ ] Page lue / pratiquée

#### 201. Qualité : vet, staticcheck, golangci-lint
- **Lien :** `/docs/developper/programmation/golang/qualite-lint/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Qualité : vet, staticcheck, golangci-lint » (programmation › golang › qualite-lint) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Qualité : vet, staticcheck, golangci-lint
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `qualite-lint`
- [ ] Page lue / pratiquée

#### 202. Structures (struct)
- **Lien :** `/docs/developper/programmation/golang/structures/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Structures (struct) » (programmation › golang › structures) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Structures (struct)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `structures`
- [ ] Page lue / pratiquée

#### 203. Sécuriser la supply chain (govulncheck, SBOM)
- **Lien :** `/docs/developper/programmation/golang/supply-chain/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Sécuriser la supply chain (govulncheck, SBOM) » (programmation › golang › supply-chain) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécuriser la supply chain (govulncheck, SBOM)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `supply-chain`
- [ ] Page lue / pratiquée

#### 204. sync, WaitGroup et errgroup
- **Lien :** `/docs/developper/programmation/golang/synchronisation/`
- **Pourquoi ici :** Dans la phase « Autres langages », « sync, WaitGroup et errgroup » (programmation › golang › synchronisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : sync, WaitGroup et errgroup
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `synchronisation`
- [ ] Page lue / pratiquée

#### 205. Tester du code (table-driven)
- **Lien :** `/docs/developper/programmation/golang/tests/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Tester du code (table-driven) » (programmation › golang › tests) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Tester du code (table-driven)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `tests`
- [ ] Page lue / pratiquée

#### 206. PHP
- **Lien :** `/docs/developper/programmation/php/`
- **Pourquoi ici :** Dans la phase « Autres langages », « PHP » (programmation › php) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : PHP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `php`
- [ ] Page lue / pratiquée

#### 207. Ruby
- **Lien :** `/docs/developper/programmation/ruby/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Ruby » (programmation › ruby) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ruby
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ruby`
- [ ] Page lue / pratiquée

#### 208. Rust
- **Lien :** `/docs/developper/programmation/rust/`
- **Pourquoi ici :** Dans la phase « Autres langages », « Rust » (programmation › rust) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Rust
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rust`
- [ ] Page lue / pratiquée

### Phase H — Outillage développeur (IDE, build, tests)
Productivité quotidienne : VS Code, Make/Task, linters, outils de test API/mail. Claude Code et l’écosystème agents sont reportés à la phase suivante.

#### 209. Vue d'ensemble
- **Lien :** `/docs/developper/autres-outils/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Vue d'ensemble » (autres-outils) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `autres-outils`
- [ ] Page lue / pratiquée

#### 210. Make
- **Lien :** `/docs/developper/autres-outils/build/makefile/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Make » (autres-outils › build › makefile) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Make
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `makefile`
- [ ] Page lue / pratiquée

#### 211. Task
- **Lien :** `/docs/developper/autres-outils/build/task/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Task » (autres-outils › build › task) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Task
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `task`
- [ ] Page lue / pratiquée

#### 212. Flox
- **Lien :** `/docs/developper/autres-outils/flox/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Flox » (autres-outils › flox) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Flox
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `flox`
- [ ] Page lue / pratiquée

#### 213. Présentation et Installation
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Présentation et Installation » (autres-outils › ide › visual-studio-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Présentation et Installation
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `visual-studio-code`
- [ ] Page lue / pratiquée

#### 214. Claude Code dans VS Code
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/claude-code-dans-vscode/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Claude Code dans VS Code » (autres-outils › ide › visual-studio-code › claude-code-dans-vscode) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Claude Code dans VS Code
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `claude-code-dans-vscode`
- [ ] Page lue / pratiquée

#### 215. Custom agents
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/copilot-custom-agents/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Custom agents » (autres-outils › ide › visual-studio-code › copilot-custom-agents) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Custom agents
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `copilot-custom-agents`
- [ ] Page lue / pratiquée

#### 216. Personnaliser : instructions
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/copilot-instructions-prompts/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Personnaliser : instructions » (autres-outils › ide › visual-studio-code › copilot-instructions-prompts) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Personnaliser : instructions
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `copilot-instructions-prompts`
- [ ] Page lue / pratiquée

#### 217. Brancher un serveur MCP
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/copilot-mcp/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Brancher un serveur MCP » (autres-outils › ide › visual-studio-code › copilot-mcp) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Brancher un serveur MCP
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `copilot-mcp`
- [ ] Page lue / pratiquée

#### 218. Prompt files
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/copilot-prompt-files/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Prompt files » (autres-outils › ide › visual-studio-code › copilot-prompt-files) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Prompt files
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `copilot-prompt-files`
- [ ] Page lue / pratiquée

#### 219. Les DevContainers
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/devcontainers/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Les DevContainers » (autres-outils › ide › visual-studio-code › devcontainers) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les DevContainers
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `devcontainers`
- [ ] Page lue / pratiquée

#### 220. Le guide complet
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/github-copilot/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Le guide complet » (autres-outils › ide › visual-studio-code › github-copilot) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le guide complet
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `github-copilot`
- [ ] Page lue / pratiquée

#### 221. Les extensions Remote Development
- **Lien :** `/docs/developper/autres-outils/ide/visual-studio-code/remote-ssh/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Les extensions Remote Development » (autres-outils › ide › visual-studio-code › remote-ssh) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Les extensions Remote Development
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `remote-ssh`
- [ ] Page lue / pratiquée

#### 222. megalinter
- **Lien :** `/docs/developper/autres-outils/linters/megalinter/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « megalinter » (autres-outils › linters › megalinter) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : megalinter
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `megalinter`
- [ ] Page lue / pratiquée

#### 223. Hoppscotch
- **Lien :** `/docs/developper/autres-outils/tests/hoppscotch/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Hoppscotch » (autres-outils › tests › hoppscotch) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Hoppscotch
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `hoppscotch`
- [ ] Page lue / pratiquée

#### 224. Mailpit
- **Lien :** `/docs/developper/autres-outils/tests/mailpit/`
- **Pourquoi ici :** Dans la phase « Outillage développeur », « Mailpit » (autres-outils › tests › mailpit) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mailpit
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `mailpit`
- [ ] Page lue / pratiquée

### Phase I — MCP, agents et IA (avancé)
Dernière phase : vibe coding, Claude Code, MCP, RAG, LLM locaux. À aborder seulement avec un socle Python/Git solide. Croiser `05-securite` pour la sécurité des agents et de la supply chain LLM.

#### 225. Vibe Coding
- **Lien :** `/docs/developper/vibe-coding/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Vibe Coding » (vibe-coding) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vibe Coding
  - Où ça s’applique dans un flux DevOps (vibe-coding)
  - Commandes / réglages à retester pour `vibe-coding`
- [ ] Page lue / pratiquée

#### 226. Vue d'ensemble
- **Lien :** `/docs/developper/autres-outils/claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Vue d'ensemble » (autres-outils › claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `claude-code`
- [ ] Page lue / pratiquée

#### 227. Agent Skills : le standard
- **Lien :** `/docs/developper/autres-outils/claude-code/agent-skills-standard/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Agent Skills : le standard » (autres-outils › claude-code › agent-skills-standard) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Agent Skills : le standard
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `agent-skills-standard`
- [ ] Page lue / pratiquée

#### 228. Briques : quand utiliser quoi
- **Lien :** `/docs/developper/autres-outils/claude-code/briques-claude-code-quand-utiliser-quoi/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Briques : quand utiliser quoi » (autres-outils › claude-code › briques-claude-code-quand-utiliser-quoi) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Briques : quand utiliser quoi
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `briques-claude-code-quand-utiliser-quoi`
- [ ] Page lue / pratiquée

#### 229. Configurer CLAUDE.md
- **Lien :** `/docs/developper/autres-outils/claude-code/configurer-claude-md/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Configurer CLAUDE.md » (autres-outils › claude-code › configurer-claude-md) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configurer CLAUDE.md
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `configurer-claude-md`
- [ ] Page lue / pratiquée

#### 230. Construire un projet complet
- **Lien :** `/docs/developper/autres-outils/claude-code/construire-projet-complet-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Construire un projet complet » (autres-outils › claude-code › construire-projet-complet-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Construire un projet complet
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `construire-projet-complet-claude-code`
- [ ] Page lue / pratiquée

#### 231. Créer le projet fil rouge lab-claude
- **Lien :** `/docs/developper/autres-outils/claude-code/creer-projet-fil-rouge-lab-claude/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Créer le projet fil rouge lab-claude » (autres-outils › claude-code › creer-projet-fil-rouge-lab-claude) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Créer le projet fil rouge lab-claude
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `creer-projet-fil-rouge-lab-claude`
- [ ] Page lue / pratiquée

#### 232. Dépannage avancé
- **Lien :** `/docs/developper/autres-outils/claude-code/depannage-avance-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Dépannage avancé » (autres-outils › claude-code › depannage-avance-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Dépannage avancé
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `depannage-avance-claude-code`
- [ ] Page lue / pratiquée

#### 233. Erreurs courantes et recadrage
- **Lien :** `/docs/developper/autres-outils/claude-code/erreurs-courantes-et-recadrage/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Erreurs courantes et recadrage » (autres-outils › claude-code › erreurs-courantes-et-recadrage) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Erreurs courantes et recadrage
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `erreurs-courantes-et-recadrage`
- [ ] Page lue / pratiquée

#### 234. Mode headless et CI
- **Lien :** `/docs/developper/autres-outils/claude-code/headless-ci-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Mode headless et CI » (autres-outils › claude-code › headless-ci-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mode headless et CI
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `headless-ci-claude-code`
- [ ] Page lue / pratiquée

#### 235. Hooks
- **Lien :** `/docs/developper/autres-outils/claude-code/hooks-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Hooks » (autres-outils › claude-code › hooks-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Hooks
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `hooks-claude-code`
- [ ] Page lue / pratiquée

#### 236. Installer le CLI
- **Lien :** `/docs/developper/autres-outils/claude-code/installation-cli/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Installer le CLI » (autres-outils › claude-code › installation-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer le CLI
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `installation-cli`
- [ ] Page lue / pratiquée

#### 237. Serveurs MCP
- **Lien :** `/docs/developper/autres-outils/claude-code/mcp-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Serveurs MCP » (autres-outils › claude-code › mcp-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Serveurs MCP
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `mcp-claude-code`
- [ ] Page lue / pratiquée

#### 238. Mode plan, diff et validations
- **Lien :** `/docs/developper/autres-outils/claude-code/mode-plan-diff-validations/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Mode plan, diff et validations » (autres-outils › claude-code › mode-plan-diff-validations) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mode plan, diff et validations
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `mode-plan-diff-validations`
- [ ] Page lue / pratiquée

#### 239. Modèles : Opus, Sonnet, Haiku
- **Lien :** `/docs/developper/autres-outils/claude-code/modeles-opus-sonnet-haiku/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Modèles : Opus, Sonnet, Haiku » (autres-outils › claude-code › modeles-opus-sonnet-haiku) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Modèles : Opus, Sonnet, Haiku
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `modeles-opus-sonnet-haiku`
- [ ] Page lue / pratiquée

#### 240. Mon parcours
- **Lien :** `/docs/developper/autres-outils/claude-code/parcours/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Mon parcours » (autres-outils › claude-code › parcours) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mon parcours
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `parcours`
- [ ] Page lue / pratiquée

#### 241. Packager en plugin
- **Lien :** `/docs/developper/autres-outils/claude-code/plugins-packager-partager-skills/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Packager en plugin » (autres-outils › claude-code › plugins-packager-partager-skills) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Packager en plugin
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `plugins-packager-partager-skills`
- [ ] Page lue / pratiquée

#### 242. Prise en main du CLI
- **Lien :** `/docs/developper/autres-outils/claude-code/prise-en-main-cli/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Prise en main du CLI » (autres-outils › claude-code › prise-en-main-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Prise en main du CLI
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `prise-en-main-cli`
- [ ] Page lue / pratiquée

#### 243. Prompting de base
- **Lien :** `/docs/developper/autres-outils/claude-code/prompting-base-cli/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Prompting de base » (autres-outils › claude-code › prompting-base-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Prompting de base
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `prompting-base-cli`
- [ ] Page lue / pratiquée

#### 244. Rules ciblées par dossier
- **Lien :** `/docs/developper/autres-outils/claude-code/rules-ciblees-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Rules ciblées par dossier » (autres-outils › claude-code › rules-ciblees-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Rules ciblées par dossier
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `rules-ciblees-claude-code`
- [ ] Page lue / pratiquée

#### 245. settings.json avancé
- **Lien :** `/docs/developper/autres-outils/claude-code/settings-json-avance/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « settings.json avancé » (autres-outils › claude-code › settings-json-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : settings.json avancé
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `settings-json-avance`
- [ ] Page lue / pratiquée

#### 246. Skills avancées (scripts)
- **Lien :** `/docs/developper/autres-outils/claude-code/skills-avancees-scripts-ressources/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Skills avancées (scripts) » (autres-outils › claude-code › skills-avancees-scripts-ressources) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Skills avancées (scripts)
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `skills-avancees-scripts-ressources`
- [ ] Page lue / pratiquée

#### 247. Skills
- **Lien :** `/docs/developper/autres-outils/claude-code/skills-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Skills » (autres-outils › claude-code › skills-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Skills
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `skills-claude-code`
- [ ] Page lue / pratiquée

#### 248. Skills de sécurité
- **Lien :** `/docs/developper/autres-outils/claude-code/skills-securite-audit-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Skills de sécurité » (autres-outils › claude-code › skills-securite-audit-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Skills de sécurité
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `skills-securite-audit-code`
- [ ] Page lue / pratiquée

#### 249. Subagents
- **Lien :** `/docs/developper/autres-outils/claude-code/subagents-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Subagents » (autres-outils › claude-code › subagents-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Subagents
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `subagents-claude-code`
- [ ] Page lue / pratiquée

#### 250. Premier workflow réel
- **Lien :** `/docs/developper/autres-outils/claude-code/workflow-reel-cli/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Premier workflow réel » (autres-outils › claude-code › workflow-reel-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Premier workflow réel
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `workflow-reel-cli`
- [ ] Page lue / pratiquée

#### 251. Workflows concrets
- **Lien :** `/docs/developper/autres-outils/claude-code/workflows-concrets-claude-code/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Workflows concrets » (autres-outils › claude-code › workflows-concrets-claude-code) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Workflows concrets
  - Où ça s’applique dans un flux DevOps (autres-outils)
  - Commandes / réglages à retester pour `workflows-concrets-claude-code`
- [ ] Page lue / pratiquée

#### 252. Le parcours agents IA
- **Lien :** `/docs/developper/programmation/python/agentique/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Le parcours agents IA » (programmation › python › agentique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le parcours agents IA
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agentique`
- [ ] Page lue / pratiquée

#### 253. Choisir un framework d'agents
- **Lien :** `/docs/developper/programmation/python/agents-comparatif/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Choisir un framework d'agents » (programmation › python › agents-comparatif) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Choisir un framework d'agents
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-comparatif`
- [ ] Page lue / pratiquée

#### 254. Function calling et outils
- **Lien :** `/docs/developper/programmation/python/agents-function-calling/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Function calling et outils » (programmation › python › agents-function-calling) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Function calling et outils
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-function-calling`
- [ ] Page lue / pratiquée

#### 255. Orchestrer avec LangGraph
- **Lien :** `/docs/developper/programmation/python/agents-langgraph/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Orchestrer avec LangGraph » (programmation › python › agents-langgraph) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Orchestrer avec LangGraph
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-langgraph`
- [ ] Page lue / pratiquée

#### 256. Connecter un agent au MCP
- **Lien :** `/docs/developper/programmation/python/agents-mcp/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Connecter un agent au MCP » (programmation › python › agents-mcp) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Connecter un agent au MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-mcp`
- [ ] Page lue / pratiquée

#### 257. La mémoire des agents
- **Lien :** `/docs/developper/programmation/python/agents-memoire/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « La mémoire des agents » (programmation › python › agents-memoire) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La mémoire des agents
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-memoire`
- [ ] Page lue / pratiquée

#### 258. LangGraph multi-agents
- **Lien :** `/docs/developper/programmation/python/agents-multi/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « LangGraph multi-agents » (programmation › python › agents-multi) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : LangGraph multi-agents
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-multi`
- [ ] Page lue / pratiquée

#### 259. Patterns agentiques avancés
- **Lien :** `/docs/developper/programmation/python/agents-patterns/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Patterns agentiques avancés » (programmation › python › agents-patterns) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Patterns agentiques avancés
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-patterns`
- [ ] Page lue / pratiquée

#### 260. Construire avec PydanticAI
- **Lien :** `/docs/developper/programmation/python/agents-pydanticai/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Construire avec PydanticAI » (programmation › python › agents-pydanticai) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Construire avec PydanticAI
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-pydanticai`
- [ ] Page lue / pratiquée

#### 261. Sandbox d'exécution de code
- **Lien :** `/docs/developper/programmation/python/agents-sandbox/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Sandbox d'exécution de code » (programmation › python › agents-sandbox) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sandbox d'exécution de code
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-sandbox`
- [ ] Page lue / pratiquée

#### 262. smolagents : agents qui codent
- **Lien :** `/docs/developper/programmation/python/agents-smolagents/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « smolagents : agents qui codent » (programmation › python › agents-smolagents) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : smolagents : agents qui codent
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents-smolagents`
- [ ] Page lue / pratiquée

#### 263. Comprendre les agents
- **Lien :** `/docs/developper/programmation/python/agents/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Comprendre les agents » (programmation › python › agents) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comprendre les agents
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `agents`
- [ ] Page lue / pratiquée

#### 264. Interface web avec Chainlit
- **Lien :** `/docs/developper/programmation/python/chainlit/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Interface web avec Chainlit » (programmation › python › chainlit) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Interface web avec Chainlit
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `chainlit`
- [ ] Page lue / pratiquée

#### 265. Chroma
- **Lien :** `/docs/developper/programmation/python/chroma/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Chroma » (programmation › python › chroma) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chroma
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `chroma`
- [ ] Page lue / pratiquée

#### 266. Chunking sémantique
- **Lien :** `/docs/developper/programmation/python/chunking-semantique/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Chunking sémantique » (programmation › python › chunking-semantique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chunking sémantique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `chunking-semantique`
- [ ] Page lue / pratiquée

#### 267. Comparatif des backends d'inférence
- **Lien :** `/docs/developper/programmation/python/comparatif-backends-inference/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Comparatif des backends d'inférence » (programmation › python › comparatif-backends-inference) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comparatif des backends d'inférence
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `comparatif-backends-inference`
- [ ] Page lue / pratiquée

#### 268. ContextForge : passerelle MCP
- **Lien :** `/docs/developper/programmation/python/contextforge/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « ContextForge : passerelle MCP » (programmation › python › contextforge) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : ContextForge : passerelle MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `contextforge`
- [ ] Page lue / pratiquée

#### 269. Embeddings & similarité
- **Lien :** `/docs/developper/programmation/python/embeddings/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Embeddings & similarité » (programmation › python › embeddings) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Embeddings & similarité
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `embeddings`
- [ ] Page lue / pratiquée

#### 270. FAISS
- **Lien :** `/docs/developper/programmation/python/faiss/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « FAISS » (programmation › python › faiss) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : FAISS
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `faiss`
- [ ] Page lue / pratiquée

#### 271. Quand fine-tuner (et quand l'éviter)
- **Lien :** `/docs/developper/programmation/python/fine-tuning/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Quand fine-tuner (et quand l'éviter) » (programmation › python › fine-tuning) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Quand fine-tuner (et quand l'éviter)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `fine-tuning`
- [ ] Page lue / pratiquée

#### 272. Optimiser vos docs pour l'IA Générative
- **Lien :** `/docs/developper/programmation/python/generative-engine_optimisation/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Optimiser vos docs pour l'IA Générative » (programmation › python › generative-engine_optimisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Optimiser vos docs pour l'IA Générative
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `generative-engine_optimisation`
- [ ] Page lue / pratiquée

#### 273. Hugging Face Transformers
- **Lien :** `/docs/developper/programmation/python/hugging-face/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Hugging Face Transformers » (programmation › python › hugging-face) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Hugging Face Transformers
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `hugging-face`
- [ ] Page lue / pratiquée

#### 274. Panorama IA
- **Lien :** `/docs/developper/programmation/python/ia-panorama/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Panorama IA » (programmation › python › ia-panorama) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Panorama IA
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ia-panorama`
- [ ] Page lue / pratiquée

#### 275. Introduction
- **Lien :** `/docs/developper/programmation/python/ia/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Introduction » (programmation › python › ia) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ia`
- [ ] Page lue / pratiquée

#### 276. Comprendre l'inférence d'un LLM
- **Lien :** `/docs/developper/programmation/python/inference-llm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Comprendre l'inférence d'un LLM » (programmation › python › inference-llm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comprendre l'inférence d'un LLM
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `inference-llm`
- [ ] Page lue / pratiquée

#### 277. Appels asynchrones
- **Lien :** `/docs/developper/programmation/python/litellm-async/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Appels asynchrones » (programmation › python › litellm-async) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Appels asynchrones
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `litellm-async`
- [ ] Page lue / pratiquée

#### 278. Embeddings et recherche sémantique
- **Lien :** `/docs/developper/programmation/python/litellm-embeddings/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Embeddings et recherche sémantique » (programmation › python › litellm-embeddings) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Embeddings et recherche sémantique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `litellm-embeddings`
- [ ] Page lue / pratiquée

#### 279. Proxy Server
- **Lien :** `/docs/developper/programmation/python/litellm-proxy-server/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Proxy Server » (programmation › python › litellm-proxy-server) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Proxy Server
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `litellm-proxy-server`
- [ ] Page lue / pratiquée

#### 280. Router : production et fiabilité
- **Lien :** `/docs/developper/programmation/python/litellm-router/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Router : production et fiabilité » (programmation › python › litellm-router) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Router : production et fiabilité
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `litellm-router`
- [ ] Page lue / pratiquée

#### 281. Introduction à LiteLLM
- **Lien :** `/docs/developper/programmation/python/litellm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Introduction à LiteLLM » (programmation › python › litellm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction à LiteLLM
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `litellm`
- [ ] Page lue / pratiquée

#### 282. llama.cpp : serveur d'inférence
- **Lien :** `/docs/developper/programmation/python/llama-cpp/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « llama.cpp : serveur d'inférence » (programmation › python › llama-cpp) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : llama.cpp : serveur d'inférence
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `llama-cpp`
- [ ] Page lue / pratiquée

#### 283. Anatomie d'un LLM
- **Lien :** `/docs/developper/programmation/python/llm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Anatomie d'un LLM » (programmation › python › llm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Anatomie d'un LLM
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `llm`
- [ ] Page lue / pratiquée

#### 284. Construire un client MCP
- **Lien :** `/docs/developper/programmation/python/mcp-client/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Construire un client MCP » (programmation › python › mcp-client) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Construire un client MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-client`
- [ ] Page lue / pratiquée

#### 285. Déployer en production
- **Lien :** `/docs/developper/programmation/python/mcp-deploiement/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Déployer en production » (programmation › python › mcp-deploiement) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Déployer en production
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-deploiement`
- [ ] Page lue / pratiquée

#### 286. Authentifier avec OAuth 2.1
- **Lien :** `/docs/developper/programmation/python/mcp-oauth/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Authentifier avec OAuth 2.1 » (programmation › python › mcp-oauth) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Authentifier avec OAuth 2.1
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-oauth`
- [ ] Page lue / pratiquée

#### 287. Décortiquer le protocole
- **Lien :** `/docs/developper/programmation/python/mcp-protocole/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Décortiquer le protocole » (programmation › python › mcp-protocole) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Décortiquer le protocole
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-protocole`
- [ ] Page lue / pratiquée

#### 288. Sécuriser un serveur MCP
- **Lien :** `/docs/developper/programmation/python/mcp-securite/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Sécuriser un serveur MCP » (programmation › python › mcp-securite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécuriser un serveur MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-securite`
- [ ] Page lue / pratiquée

#### 289. Industrialiser un serveur
- **Lien :** `/docs/developper/programmation/python/mcp-serveur-avance/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Industrialiser un serveur » (programmation › python › mcp-serveur-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Industrialiser un serveur
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-serveur-avance`
- [ ] Page lue / pratiquée

#### 290. Créer un serveur MCP
- **Lien :** `/docs/developper/programmation/python/mcp-serveur/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Créer un serveur MCP » (programmation › python › mcp-serveur) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Créer un serveur MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-serveur`
- [ ] Page lue / pratiquée

#### 291. Tester et déboguer un serveur
- **Lien :** `/docs/developper/programmation/python/mcp-tests/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Tester et déboguer un serveur » (programmation › python › mcp-tests) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Tester et déboguer un serveur
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-tests`
- [ ] Page lue / pratiquée

#### 292. Choisir un transport
- **Lien :** `/docs/developper/programmation/python/mcp-transports/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Choisir un transport » (programmation › python › mcp-transports) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Choisir un transport
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp-transports`
- [ ] Page lue / pratiquée

#### 293. Comprendre le MCP
- **Lien :** `/docs/developper/programmation/python/mcp/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Comprendre le MCP » (programmation › python › mcp) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comprendre le MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `mcp`
- [ ] Page lue / pratiquée

#### 294. Pourquoi c'est différent
- **Lien :** `/docs/developper/programmation/python/observabilite-llm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Pourquoi c'est différent » (programmation › python › observabilite-llm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Pourquoi c'est différent
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `observabilite-llm`
- [ ] Page lue / pratiquée

#### 295. Ollama : SDK Python et Structured Output
- **Lien :** `/docs/developper/programmation/python/ollama-avance/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama : SDK Python et Structured Output » (programmation › python › ollama-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama : SDK Python et Structured Output
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-avance`
- [ ] Page lue / pratiquée

#### 296. Ollama : dépannage et configuration
- **Lien :** `/docs/developper/programmation/python/ollama-depannage/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama : dépannage et configuration » (programmation › python › ollama-depannage) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama : dépannage et configuration
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-depannage`
- [ ] Page lue / pratiquée

#### 297. Ollama : choisir son modèle 2026 2026
- **Lien :** `/docs/developper/programmation/python/ollama-models-2026/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama : choisir son modèle 2026 2026 » (programmation › python › ollama-models-2026) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama : choisir son modèle 2026 2026
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-models-2026`
- [ ] Page lue / pratiquée

#### 298. Ollama avec Python (API, SDK, litellm)
- **Lien :** `/docs/developper/programmation/python/ollama-python/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama avec Python (API, SDK, litellm) » (programmation › python › ollama-python) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama avec Python (API, SDK, litellm)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-python`
- [ ] Page lue / pratiquée

#### 299. Ollama : sorties structurées (JSON / Pydantic) 2026
- **Lien :** `/docs/developper/programmation/python/ollama-structured-outputs/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama : sorties structurées (JSON / Pydantic) 2026 » (programmation › python › ollama-structured-outputs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama : sorties structurées (JSON / Pydantic) 2026
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-structured-outputs`
- [ ] Page lue / pratiquée

#### 300. Ollama : tool calling et agents locaux 2026
- **Lien :** `/docs/developper/programmation/python/ollama-tool-calling/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama : tool calling et agents locaux 2026 » (programmation › python › ollama-tool-calling) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama : tool calling et agents locaux 2026
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-tool-calling`
- [ ] Page lue / pratiquée

#### 301. Ollama : vision (Gemma 4, Llama 3.2) 2026
- **Lien :** `/docs/developper/programmation/python/ollama-vision/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Ollama : vision (Gemma 4, Llama 3.2) 2026 » (programmation › python › ollama-vision) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Ollama : vision (Gemma 4, Llama 3.2) 2026
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama-vision`
- [ ] Page lue / pratiquée

#### 302. Lancer un LLM en local (Ollama)
- **Lien :** `/docs/developper/programmation/python/ollama/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Lancer un LLM en local (Ollama) » (programmation › python › ollama) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Lancer un LLM en local (Ollama)
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `ollama`
- [ ] Page lue / pratiquée

#### 303. OpenTelemetry GenAI + Tempo
- **Lien :** `/docs/developper/programmation/python/otel-genai/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « OpenTelemetry GenAI + Tempo » (programmation › python › otel-genai) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OpenTelemetry GenAI + Tempo
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `otel-genai`
- [ ] Page lue / pratiquée

#### 304. pgvector
- **Lien :** `/docs/developper/programmation/python/pgvector/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « pgvector » (programmation › python › pgvector) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : pgvector
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `pgvector`
- [ ] Page lue / pratiquée

#### 305. Prompt Engineering
- **Lien :** `/docs/developper/programmation/python/prompt-engineering/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Prompt Engineering » (programmation › python › prompt-engineering) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Prompt Engineering
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `prompt-engineering`
- [ ] Page lue / pratiquée

#### 306. Pousser le prompting plus loin
- **Lien :** `/docs/developper/programmation/python/prompting-avance/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Pousser le prompting plus loin » (programmation › python › prompting-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Pousser le prompting plus loin
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `prompting-avance`
- [ ] Page lue / pratiquée

#### 307. Qdrant
- **Lien :** `/docs/developper/programmation/python/qdrant/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Qdrant » (programmation › python › qdrant) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Qdrant
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `qdrant`
- [ ] Page lue / pratiquée

#### 308. Quantifier un modèle
- **Lien :** `/docs/developper/programmation/python/quantification-llm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Quantifier un modèle » (programmation › python › quantification-llm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Quantifier un modèle
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `quantification-llm`
- [ ] Page lue / pratiquée

#### 309. Quantifier un LLM en pratique
- **Lien :** `/docs/developper/programmation/python/quantification-pratique/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Quantifier un LLM en pratique » (programmation › python › quantification-pratique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Quantifier un LLM en pratique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `quantification-pratique`
- [ ] Page lue / pratiquée

#### 310. RAG agentique
- **Lien :** `/docs/developper/programmation/python/rag-agentique/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « RAG agentique » (programmation › python › rag-agentique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : RAG agentique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-agentique`
- [ ] Page lue / pratiquée

#### 311. Optimiser un RAG
- **Lien :** `/docs/developper/programmation/python/rag-avance/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Optimiser un RAG » (programmation › python › rag-avance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Optimiser un RAG
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-avance`
- [ ] Page lue / pratiquée

#### 312. Chunking & indexation
- **Lien :** `/docs/developper/programmation/python/rag-chunking/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Chunking & indexation » (programmation › python › rag-chunking) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chunking & indexation
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-chunking`
- [ ] Page lue / pratiquée

#### 313. Comprendre le RAG
- **Lien :** `/docs/developper/programmation/python/rag-introduction/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Comprendre le RAG » (programmation › python › rag-introduction) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comprendre le RAG
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-introduction`
- [ ] Page lue / pratiquée

#### 314. RAG par la pratique
- **Lien :** `/docs/developper/programmation/python/rag-pratique/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « RAG par la pratique » (programmation › python › rag-pratique) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : RAG par la pratique
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-pratique`
- [ ] Page lue / pratiquée

#### 315. Déployer un RAG en production
- **Lien :** `/docs/developper/programmation/python/rag-production/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Déployer un RAG en production » (programmation › python › rag-production) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Déployer un RAG en production
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-production`
- [ ] Page lue / pratiquée

#### 316. Affiner avec le re-ranking
- **Lien :** `/docs/developper/programmation/python/rag-reranking/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Affiner avec le re-ranking » (programmation › python › rag-reranking) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Affiner avec le re-ranking
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `rag-reranking`
- [ ] Page lue / pratiquée

#### 317. Sécuriser une application LLM
- **Lien :** `/docs/developper/programmation/python/securite-llm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Sécuriser une application LLM » (programmation › python › securite-llm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécuriser une application LLM
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `securite-llm`
- [ ] Page lue / pratiquée

#### 318. Servir un LLM en production
- **Lien :** `/docs/developper/programmation/python/servir-llm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Servir un LLM en production » (programmation › python › servir-llm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Servir un LLM en production
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `servir-llm`
- [ ] Page lue / pratiquée

#### 319. SGLang : RadixAttention
- **Lien :** `/docs/developper/programmation/python/sglang/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « SGLang : RadixAttention » (programmation › python › sglang) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SGLang : RadixAttention
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `sglang`
- [ ] Page lue / pratiquée

#### 320. L'assistant documentaire
- **Lien :** `/docs/developper/programmation/python/stack-assistant/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « L'assistant documentaire » (programmation › python › stack-assistant) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : L'assistant documentaire
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `stack-assistant`
- [ ] Page lue / pratiquée

#### 321. Sécuriser l'exposition
- **Lien :** `/docs/developper/programmation/python/stack-exposition/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Sécuriser l'exposition » (programmation › python › stack-exposition) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécuriser l'exposition
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `stack-exposition`
- [ ] Page lue / pratiquée

#### 322. Observabilité FinOps par MCP
- **Lien :** `/docs/developper/programmation/python/stack-finops/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Observabilité FinOps par MCP » (programmation › python › stack-finops) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Observabilité FinOps par MCP
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `stack-finops`
- [ ] Page lue / pratiquée

#### 323. Le socle self-hosted
- **Lien :** `/docs/developper/programmation/python/stack-socle/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Le socle self-hosted » (programmation › python › stack-socle) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le socle self-hosted
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `stack-socle`
- [ ] Page lue / pratiquée

#### 324. Architecture de la stack
- **Lien :** `/docs/developper/programmation/python/stack-souveraine/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « Architecture de la stack » (programmation › python › stack-souveraine) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Architecture de la stack
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `stack-souveraine`
- [ ] Page lue / pratiquée

#### 325. vLLM : haute performance
- **Lien :** `/docs/developper/programmation/python/vllm/`
- **Pourquoi ici :** Dans la phase « MCP / IA avancé », « vLLM : haute performance » (programmation › python › vllm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : vLLM : haute performance
  - Où ça s’applique dans un flux DevOps (programmation)
  - Commandes / réglages à retester pour `vllm`
- [ ] Page lue / pratiquée

## Compétences acquises

- Concevoir et consommer une API REST simple
- Maîtriser Git au quotidien (branches, merge/rebase, revue, recovery)
- Écrire des scripts et petits services Python testés et empaquetés
- Gérer dépendances et artefacts (proxy, registry, renovate)
- Lire YAML/HCL/SQL/Rego au niveau ops
- Utiliser un IDE et des outils de build ; optionnellement agents MCP/IA
- Préparer le terrain pour la CI/CD (`13`) et l’AppSec (`05`)

## Checklist globale

- [ ] Phase A — Bases transverses terminée
- [ ] Phase B — Git et versioning terminée
- [ ] Phase C — Python fondamentaux terminée
- [ ] Phase D — Python intermédiaire terminée
- [ ] Phase E — Python DevOps terminée
- [ ] Phase F — Artefacts et dépendances terminée
- [ ] Phase G — Autres langages (au moins YAML/HCL/SQL) terminée
- [ ] Phase H — Outillage développeur terminée
- [ ] Phase I — MCP/IA (optionnelle / avancée) terminée ou reportée
- [ ] Dossier validé
