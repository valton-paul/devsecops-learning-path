# Rapport — 01 Culture DevSecOps

Sources : [Programme DevSecOps](https://blog.stephane-robert.info/docs/devops/) · [Fondamentaux](https://blog.stephane-robert.info/docs/devops/fondamentaux/)

## En une phrase

Le DevOps (puis DevSecOps) est une **culture de responsabilité partagée** pour livrer plus vite et plus sûrement — pas un outil, pas un poste, pas une équipe isolée.

## Ce que j’ai retenu

### 1. Le problème d’origine

Avant le DevOps, Dev et Ops avaient des objectifs contradictoires (features vs stabilité). Résultat : gros lots, déploiements rares et risqués, culture du blâme. Le cycle toxique : plus on déploie rarement → plus chaque release est grosse → plus elle échoue → plus on ralentit.

→ [Culture DevOps](https://blog.stephane-robert.info/docs/devops/fondamentaux/culture-devops/)

### 2. Three Ways + CALMS (les deux grilles de lecture)

**Three Ways** (Gene Kim) = comment le travail doit circuler :

1. **Flow** — faire avancer le travail Dev → Ops → client sans embouteillage (petits lots, moins de WIP, automatiser)
2. **Feedback** — détecter les problèmes le plus tôt possible (tests, CI, monitoring) car plus c’est tard, plus c’est cher
3. **Learning** — transformer chaque incident en amélioration (postmortems sans blâme, expérimentation)

**CALMS** = les conditions culturelles sans lesquelles le flux reste théorique :

| Lettre | Sens | En pratique |
| --- | --- | --- |
| **C**ulture | Objectif commun, pas de silos | « You build it, you run it » |
| **A**utomation | Automatiser le répétitif / critique | CI/CD, IaC, tests |
| **L**ean | Chasser le gaspillage (attente, transferts, bugs) | Réduire la taille des lots |
| **M**easurement | Décider avec des données | DORA, SLO |
| **S**haring | Diffuser le savoir | Doc, pair, postmortems |

Sans culture partagée, un pipeline CI/CD ne change rien. Sans flux et mesure, une bonne ambiance ne livre pas.

→ [Three Ways & CALMS](https://blog.stephane-robert.info/docs/devops/fondamentaux/three-ways-calms/)

### 3. Agile ≠ DevOps ≠ SRE

| Approche | Question | Idée clé |
| --- | --- | --- |
| **Agile** (2001) | Construit-on le *bon* produit ? | Itérations courtes, feedback utilisateur |
| **DevOps** (2009) | Livrons-nous en prod sans friction ? | Casser le mur Dev/Ops, automatiser le delivery |
| **SRE** (Google, 2003) | Le service reste-t-il *assez* fiable ? | Fiabilité chiffrée + arbitrage vitesse/stabilité |

Ils se complètent : « terminé » passe de *code fini* → *en production* → *SLO respecté*.

#### SRE — Site Reliability Engineering

Le **SRE** applique une démarche d’ingénierie logicielle aux problèmes d’exploitation. Là où DevOps dit « collaborez et automatisez », le SRE répond à : *comment savoir si c’est assez fiable, et qui décide entre features et stabilité ?*

Vocabulaire SRE à retenir :

| Terme | Définition |
| --- | --- |
| **SLI** (Service Level Indicator) | Ce qu’on mesure (ex. latence p99, taux d’erreur) |
| **SLO** (Service Level Objective) | L’objectif interne (ex. 99,9 % des requêtes < 200 ms) |
| **SLA** (Service Level Agreement) | L’engagement contractuel envers le client (souvent plus large / moins strict que le SLO) |
| **Error budget** | La « marge d’erreur » restante (100 % − SLO). S’il reste du budget → on peut déployer / expérimenter. S’il est épuisé → on gèle les features et on stabilise |
| **Toil** | Travail manuel, répétitif, automatisable, qui n’améliore pas le système sur la durée (redémarrer à la main, recopier des logs…). Le SRE vise à le réduire (souvent cible historique : ≤ 50 % du temps) |

En une phrase : le SRE remplace le débat d’opinion « on déploie ou pas ? » par un **chiffre** (l’error budget).

→ [Agile, DevOps et SRE](https://blog.stephane-robert.info/docs/devops/fondamentaux/devops-agile-sre/)

### 4. Anti-patterns à éviter

- Recruter un « DevOps Engineer » pour créer un 3ᵉ silo
- Acheter des outils sans changer les comportements
- Automatiser des processus qu’on ne comprend pas
- Culture du blâme après incident

→ [Anti-patterns DevOps](https://blog.stephane-robert.info/docs/devops/fondamentaux/anti-patterns-devops/)

### 5. Mesurer : métriques DORA

**DORA** (DevOps Research and Assessment) fournit des indicateurs pour mesurer la performance de livraison, plutôt que de se fier aux impressions.

Les 4 métriques historiques :

| Métrique | Ce qu’elle dit |
| --- | --- |
| **Deployment Frequency** | À quelle fréquence on met en prod |
| **Lead Time for Changes** | Délai commit → production |
| **Change Failure Rate** | Part des déploiements qui causent un incident / rollback |
| **Failed Deployment Recovery Time** (ex-MTTR) | Temps pour rétablir le service après un échec |

Depuis 2024–2025 : ajout du **Rework Rate** (part de travail qui consiste à corriger ce qu’on vient de casser). L’IA est vue comme un **amplificateur** : elle accélère une équipe mature… et aggrave le chaos d’une équipe fragile.

→ [Implémentation / mesure](https://blog.stephane-robert.info/docs/devops/implementation/)

### 6. Autres termes qui reviendront partout

| Terme | Sens court |
| --- | --- |
| **DevSecOps** | Intégrer la sécurité *dans* le flux DevOps (conception, pipeline, supply chain), pas en contrôle final |
| **Shift-left** | Déplacer tests / contrôles sécu plus tôt dans le cycle (là où corriger coûte moins) |
| **Value stream** | Parcours réel d’une idée jusqu’à la valeur en prod ; sert à trouver les goulots |
| **Postmortem blameless** | Analyse d’incident pour améliorer le *système*, pas pour punir une personne |
| **Platform Engineering** | Construire une plateforme interne en libre-service (golden paths) pour que les équipes produit ne réinventent pas l’infra |
| **GitOps** | Git comme source de vérité de l’état désiré ; un opérateur (Argo CD, Flux…) réconcilie le cluster |

## Les 4 piliers du socle (suite du parcours site)

1. **Comprendre** — culture, frameworks, DORA  
2. **Accélérer** — value stream, feedback, shift-left  
3. **Sécuriser** — DevSecOps, supply chain, OWASP  
4. **Fiabiliser** — SRE, SLO/SLI, observabilité, postmortems  

## Comment ça se traduit dans ce dépôt

Après cartographie du site (~2033 pages), la culture du `01` n’est pas un chapitre isolé : chaque dossier technique incarne un pan de CALMS / Three Ways.

| Idée culturelle | Où ça se pratique ici |
| --- | --- |
| Flow (petits lots, moins de friction) | `09` IaC → `10` conteneurs → `13` CI/CD |
| Feedback (détecter tôt) | `11` observabilité, tests/`04`, gates dans `13` |
| Learning (postmortems, pas de blâme) | `06` documenter (runbooks, ADR, postmortems) |
| Automation / Lean (réduire le toil) | `02` Linux (scripts, systemd) puis `09` |
| Measurement (DORA, SLO) | `11` + `13` ; error budgets côté pratiques SRE |
| Sécurité dès la conception (shift-left) | `05` après le socle `02`+`03`, pas en contrôle final |
| « Terminé = en prod / fiable » | `07` services, `12` cloud, pratiques SRE |

Ordre pédagogique retenu (≠ menu du site) : **culture → Linux → réseau (+ doc tôt) → dev/Git → virtuel/services → sécu → IaC → conteneurs → CI/CD → obs/cloud**.

## Suite prévue

Enchaîner sur `02-administration-linux` (`parcours.md`) : premier terrain où Automation, Lean et Feedback deviennent des gestes concrets — pas des slogans.
