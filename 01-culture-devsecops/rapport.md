# Rapport — 01 Culture DevSecOps

Sources : [Programme DevSecOps](https://blog.stephane-robert.info/docs/devops/) · [Fondamentaux](https://blog.stephane-robert.info/docs/devops/fondamentaux/)

## En une phrase

Le DevOps (puis DevSecOps) est une **culture de responsabilité partagée** pour livrer plus vite et plus sûrement — pas un outil, pas un poste, pas une équipe isolée.

## Ce que j’ai retenu

### 1. Le problème d’origine

Avant le DevOps, Dev et Ops avaient des objectifs contradictoires (features vs stabilité). Résultat : gros lots, déploiements rares et risqués, culture du blâme. Le cycle toxique : plus on déploie rarement → plus chaque release est grosse → plus elle échoue → plus on ralentit.

→ [Culture DevOps](https://blog.stephane-robert.info/docs/devops/fondamentaux/culture-devops/)

### 2. Two frameworks : Three Ways + CALMS

| Modèle | Rôle |
| --- | --- |
| **Three Ways** (Gene Kim) | Comment le travail circule : Flow → Feedback → Learning |
| **CALMS** | Conditions culturelles : Culture, Automation, Lean, Measurement, Sharing |

Sans culture partagée, un pipeline CI/CD ne change rien. Sans flux et mesure, une bonne ambiance ne livre pas.

→ [Three Ways & CALMS](https://blog.stephane-robert.info/docs/devops/fondamentaux/three-ways-calms/)

### 3. Agile ≠ DevOps ≠ SRE

| Approche | Question |
| --- | --- |
| **Agile** | Construit-on le bon produit ? |
| **DevOps** | Livrons-nous en prod sans friction ? |
| **SRE** | Le service reste-t-il fiable (SLO / error budget) ? |

Ils se complètent : « terminé » passe de *code fini* → *en production* → *SLO respecté*.

→ [Agile, DevOps et SRE](https://blog.stephane-robert.info/docs/devops/fondamentaux/devops-agile-sre/)

### 4. Anti-patterns à éviter

- Recruter un « DevOps Engineer » pour créer un 3ᵉ silo
- Acheter des outils sans changer les comportements
- Automatiser des processus qu’on ne comprend pas
- Culture du blâme après incident

→ [Anti-patterns DevOps](https://blog.stephane-robert.info/docs/devops/fondamentaux/anti-patterns-devops/)

### 5. Mesurer : DORA (+ Rework Rate)

Indicateurs historiques : fréquence de déploiement, lead time, taux d’échec des changements, temps de restauration. Depuis 2025 : ajout du **Rework Rate**, et l’IA est vue comme un **amplificateur** (elle accélère les bonnes pratiques… et les mauvaises).

→ [Implémentation / mesure](https://blog.stephane-robert.info/docs/devops/implementation/)

## Les 4 piliers du socle (suite du parcours)

1. **Comprendre** — culture, frameworks, DORA  
2. **Accélérer** — value stream, feedback, shift-left  
3. **Sécuriser** — DevSecOps, supply chain, OWASP  
4. **Fiabiliser** — SRE, SLO/SLI, observabilité, postmortems  