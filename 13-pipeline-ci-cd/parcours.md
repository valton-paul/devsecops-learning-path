# Parcours — 13-pipeline-ci-cd

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/pipeline-cicd/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier
Ce dossier transforme le code et l'infrastructure en flux de livraison automatisé : intégration continue, déploiement continu, GitOps et sécurisation du pipeline.

Public : intermédiaire qui sait déjà versionner (04), décrire de l'infra (09) et manipuler images/clusters (10). La sécurité n'est pas une option : les gates s'appuient sur `05-securite`.

Dans la formation, le CI/CD est le point de convergence : c'est là que l'IaC, les conteneurs et les contrôles AppSec deviennent une chaîne de confiance jusqu'à la production.

## Prérequis
- Dossiers locaux : `04-developper-des-applications`, `09-infrastructure-as-code`, `10-maitriser-la-conteneurisation`, `05-securite`
- Concepts : Git, YAML, images OCI, bases Kubernetes pour GitOps
- Si dépendance externe : un cluster local (kind/k3d) issu du dossier 10 pour Argo/Flux

## Logique pédagogique (pourquoi cet ordre)
Plutôt que de juxtaposer les outils comme le menu du site, on commence par le « pourquoi » (définitions, échecs, bonnes pratiques), puis un track principal GitHub Actions, le second track GitLab CI (théorie puis labs), ensuite GitOps (Argo puis Flux), Dagger/Jenkins, et enfin la sécurité transverse du pipeline. Ainsi chaque nouvel outil réutilise des concepts déjà ancrés.

## Ordre de lecture conseillé

### Phase A — Définir, comprendre les échecs, bonnes pratiques
Avant tout outil : vocabulaire CI/CD, causes d'échec, anti-patterns. Prérequis : Git/apps (04), IaC (09), conteneurs (10), sensibilisation sécu (05).

#### 1. CI/CD
- **Lien :** `/docs/pipeline-cicd/`
- **Pourquoi ici :** Entrée CI/CD du site. « CI/CD » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - CI/CD
  - pipeline cicd
- [ ] Page lue / pratiquée

#### 2. Qu'est-ce qu'une pipeline CI/CD ?
- **Lien :** `/docs/pipeline-cicd/definition/`
- **Pourquoi ici :** Cadre conceptuel : définir CI/CD et comprendre pourquoi les pipelines échouent — avant tout YAML d'outil. « Qu'est-ce qu'une pipeline CI/CD ? » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Qu'est-ce qu'une pipeline CI/CD ?
  - definition
- [ ] Page lue / pratiquée

#### 3. Approfondir : CI vs Delivery vs Deployment
- **Lien :** `/docs/pipeline-cicd/ci-vs-cd/`
- **Pourquoi ici :** Cadre conceptuel : définir CI/CD et comprendre pourquoi les pipelines échouent — avant tout YAML d'outil. « Approfondir : CI vs Delivery vs Deployment » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Approfondir : CI vs Delivery vs Deployment
  - ci vs cd
- [ ] Page lue / pratiquée

#### 4. Formes modernes de pipelines
- **Lien :** `/docs/pipeline-cicd/formes/`
- **Pourquoi ici :** Cadre conceptuel : définir CI/CD et comprendre pourquoi les pipelines échouent — avant tout YAML d'outil. « Formes modernes de pipelines » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Formes modernes de pipelines
  - formes
- [ ] Page lue / pratiquée

#### 5. Pourquoi les pipelines échouent
- **Lien :** `/docs/pipeline-cicd/pourquoi-echouent-elles/`
- **Pourquoi ici :** Cadre conceptuel : définir CI/CD et comprendre pourquoi les pipelines échouent — avant tout YAML d'outil. « Pourquoi les pipelines échouent » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Pourquoi les pipelines échouent
  - pourquoi echouent elles
- [ ] Page lue / pratiquée

#### 6. Confiance implicite
- **Lien :** `/docs/pipeline-cicd/confiance-implicite/`
- **Pourquoi ici :** Cadre conceptuel : définir CI/CD et comprendre pourquoi les pipelines échouent — avant tout YAML d'outil. « Confiance implicite » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Confiance implicite
  - confiance implicite
- [ ] Page lue / pratiquée

#### 7. Pourquoi bloquer ne suffit pas
- **Lien :** `/docs/pipeline-cicd/securite-punitive/`
- **Pourquoi ici :** Cadre conceptuel : définir CI/CD et comprendre pourquoi les pipelines échouent — avant tout YAML d'outil. « Pourquoi bloquer ne suffit pas » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Pourquoi bloquer ne suffit pas
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 8. Bonnes pratiques CI/CD
- **Lien :** `/docs/pipeline-cicd/bonnes-pratiques/`
- **Pourquoi ici :** Bonnes pratiques et anti-patterns : règles du jeu avant GitHub Actions / GitLab CI. « Bonnes pratiques CI/CD » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Bonnes pratiques CI/CD
  - bonnes pratiques
- [ ] Page lue / pratiquée

#### 9. Anti-patterns CI/CD
- **Lien :** `/docs/pipeline-cicd/anti-patterns/`
- **Pourquoi ici :** Bonnes pratiques et anti-patterns : règles du jeu avant GitHub Actions / GitLab CI. « Anti-patterns CI/CD » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Anti-patterns CI/CD
  - anti patterns
- [ ] Page lue / pratiquée

### Phase B — Track principal : GitHub Actions
Un seul outil approfondi en premier pour construire des réflexes transférables.

**B1 — Entrée & parcours GitHub Actions**

#### 10. Introduction
- **Lien :** `/docs/pipeline-cicd/github/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Introduction » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Introduction
  - github
- [ ] Page lue / pratiquée

#### 11. Mon parcours Suivi
- **Lien :** `/docs/pipeline-cicd/github/parcours/`
- **Pourquoi ici :** Jalon parcours site ; suivre l'ordre de ce fichier. La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

**B2 — Fondations**

#### 12. Introduction
- **Lien :** `/docs/pipeline-cicd/github/fondations/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - fondations
- [ ] Page lue / pratiquée

#### 13. La Marketplace
- **Lien :** `/docs/pipeline-cicd/github/fondations/marketplace/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « La Marketplace » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - La Marketplace
  - marketplace
- [ ] Page lue / pratiquée

#### 14. Gestion des Secrets
- **Lien :** `/docs/pipeline-cicd/github/fondations/secrets/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Gestion des Secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des Secrets
  - secrets
- [ ] Page lue / pratiquée

#### 15. Sécurité : les bases
- **Lien :** `/docs/pipeline-cicd/github/fondations/securite-bases/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Sécurité : les bases » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Sécurité : les bases
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 16. Qu'est-ce qu'un workflow ?
- **Lien :** `/docs/pipeline-cicd/github/fondations/workflow/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Qu'est-ce qu'un workflow ? » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Qu'est-ce qu'un workflow ?
  - workflow
- [ ] Page lue / pratiquée

**B3 — Workflows**

#### 17. Introduction
- **Lien :** `/docs/pipeline-cicd/github/workflows/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - workflows
- [ ] Page lue / pratiquée

#### 18. Actions composites
- **Lien :** `/docs/pipeline-cicd/github/workflows/composite-actions/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Actions composites » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Actions composites
  - composite actions
- [ ] Page lue / pratiquée

#### 19. Conditions (if)
- **Lien :** `/docs/pipeline-cicd/github/workflows/conditions-if/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Conditions (if) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Conditions (if)
  - conditions if
- [ ] Page lue / pratiquée

#### 20. Contexts et expressions
- **Lien :** `/docs/pipeline-cicd/github/workflows/contexts-expressions/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Contexts et expressions » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Contexts et expressions
  - contexts expressions
- [ ] Page lue / pratiquée

#### 21. Déclencheurs
- **Lien :** `/docs/pipeline-cicd/github/workflows/declencheurs/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Déclencheurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déclencheurs
  - declencheurs
- [ ] Page lue / pratiquée

#### 22. Matrix strategy
- **Lien :** `/docs/pipeline-cicd/github/workflows/matrix-strategy/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Matrix strategy » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Matrix strategy
  - matrix strategy
- [ ] Page lue / pratiquée

#### 23. Workflows réutilisables
- **Lien :** `/docs/pipeline-cicd/github/workflows/reusable-workflows/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Workflows réutilisables » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Workflows réutilisables
  - reusable workflows
- [ ] Page lue / pratiquée

#### 24. Variables et secrets
- **Lien :** `/docs/pipeline-cicd/github/workflows/variables-secrets/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Variables et secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables et secrets
  - variables secrets
- [ ] Page lue / pratiquée

**B4 — Runners**

#### 25. Introduction
- **Lien :** `/docs/pipeline-cicd/github/runners/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - runners
- [ ] Page lue / pratiquée

#### 26. Runners éphémères
- **Lien :** `/docs/pipeline-cicd/github/runners/ephemeres/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Runners éphémères » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Runners éphémères
  - ephemeres
- [ ] Page lue / pratiquée

#### 27. Hosted vs Self-hosted
- **Lien :** `/docs/pipeline-cicd/github/runners/hosted-vs-self-hosted/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Hosted vs Self-hosted » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Hosted vs Self-hosted
  - hosted vs self hosted
- [ ] Page lue / pratiquée

#### 28. Isolation
- **Lien :** `/docs/pipeline-cicd/github/runners/isolation/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Isolation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Isolation
  - isolation
- [ ] Page lue / pratiquée

#### 29. Maintenance
- **Lien :** `/docs/pipeline-cicd/github/runners/maintenance/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Maintenance » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Maintenance
  - maintenance
- [ ] Page lue / pratiquée

#### 30. Sécuriser les runners
- **Lien :** `/docs/pipeline-cicd/github/runners/securiser/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Sécuriser les runners » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Sécuriser les runners
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

**B5 — Optimiser**

#### 31. Introduction
- **Lien :** `/docs/pipeline-cicd/github/optimiser/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - optimiser
- [ ] Page lue / pratiquée

#### 32. Artifacts vs Cache
- **Lien :** `/docs/pipeline-cicd/github/optimiser/artifacts-vs-cache/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Artifacts vs Cache » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Artifacts vs Cache
  - artifacts vs cache
- [ ] Page lue / pratiquée

#### 33. Partager entre jobs (Artifacts)
- **Lien :** `/docs/pipeline-cicd/github/optimiser/artifacts/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Partager entre jobs (Artifacts) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Partager entre jobs (Artifacts)
  - artifacts
- [ ] Page lue / pratiquée

#### 34. Cache Java
- **Lien :** `/docs/pipeline-cicd/github/optimiser/cache-java/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Cache Java » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cache Java
  - cache java
- [ ] Page lue / pratiquée

#### 35. Cache Node.js
- **Lien :** `/docs/pipeline-cicd/github/optimiser/cache-node/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Cache Node.js » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cache Node.js
  - cache node
- [ ] Page lue / pratiquée

#### 36. Cache Python
- **Lien :** `/docs/pipeline-cicd/github/optimiser/cache-python/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Cache Python » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cache Python
  - cache python
- [ ] Page lue / pratiquée

#### 37. Accélérer avec le cache
- **Lien :** `/docs/pipeline-cicd/github/optimiser/cache/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Accélérer avec le cache » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Accélérer avec le cache
  - cache
- [ ] Page lue / pratiquée

#### 38. Concurrency
- **Lien :** `/docs/pipeline-cicd/github/optimiser/concurrency/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Concurrency » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concurrency
  - concurrency
- [ ] Page lue / pratiquée

#### 39. Debug des workflows
- **Lien :** `/docs/pipeline-cicd/github/optimiser/debug/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « Debug des workflows » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug des workflows
  - debug
- [ ] Page lue / pratiquée

**B6 — Outils locaux (act, actionlint, gh)**

#### 40. ACT (tests locaux)
- **Lien :** `/docs/pipeline-cicd/github/act/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « ACT (tests locaux) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ACT (tests locaux)
  - act
- [ ] Page lue / pratiquée

#### 41. ActionLint (linter)
- **Lien :** `/docs/pipeline-cicd/github/actionlint/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « ActionLint (linter) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ActionLint (linter)
  - actionlint
- [ ] Page lue / pratiquée

#### 42. GitHub CLI (gh)
- **Lien :** `/docs/pipeline-cicd/github/gh-cli/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). La page « GitHub CLI (gh) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - GitHub CLI (gh)
  - gh cli
- [ ] Page lue / pratiquée

**B7 — Sécurité GitHub Actions (lien 05)**
Permissions, OIDC, pinning, supply chain — croiser `05-securite`.

#### 43. Introduction
- **Lien :** `/docs/pipeline-cicd/github/securite/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Introduction » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Introduction
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 44. Attaques supply chain
- **Lien :** `/docs/pipeline-cicd/github/securite/attaques-supply-chain/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Attaques supply chain » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Attaques supply chain
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 45. Attestations
- **Lien :** `/docs/pipeline-cicd/github/securite/attestations/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Attestations » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Attestations
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 46. Checklist sécurité
- **Lien :** `/docs/pipeline-cicd/github/securite/checklist/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Checklist sécurité » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Checklist sécurité
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 47. Durcir avec Harden-Runner
- **Lien :** `/docs/pipeline-cicd/github/securite/harden-runner/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Durcir avec Harden-Runner » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Durcir avec Harden-Runner
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 48. Vue d'ensemble
- **Lien :** `/docs/pipeline-cicd/github/securite/lab/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Vue d'ensemble » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Vue d'ensemble
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 49. OIDC Cloud (AWS/Azure/GCP)
- **Lien :** `/docs/pipeline-cicd/github/securite/oidc-cloud/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « OIDC Cloud (AWS/Azure/GCP) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - OIDC Cloud (AWS/Azure/GCP)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 50. OIDC
- **Lien :** `/docs/pipeline-cicd/github/securite/oidc/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « OIDC » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - OIDC
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 51. Permissions
- **Lien :** `/docs/pipeline-cicd/github/securite/permissions/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Permissions » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Permissions
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 52. Épingler par SHA
- **Lien :** `/docs/pipeline-cicd/github/securite/pinner-sha/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Épingler par SHA » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Épingler par SHA
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 53. Scanner avec poutine
- **Lien :** `/docs/pipeline-cicd/github/securite/poutine/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Scanner avec poutine » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Scanner avec poutine
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 54. pull_request_target
- **Lien :** `/docs/pipeline-cicd/github/securite/pull-request-target/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « pull_request_target » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - pull_request_target
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 55. Vérifier les attestations
- **Lien :** `/docs/pipeline-cicd/github/securite/verifier-attestations/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Vérifier les attestations » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Vérifier les attestations
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 56. Auditer avec zizmor
- **Lien :** `/docs/pipeline-cicd/github/securite/zizmor/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « Auditer avec zizmor » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Auditer avec zizmor
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 57. 1. Bootstrap sécurisé
- **Lien :** `/docs/pipeline-cicd/github/securite/lab/bootstrap/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « 1. Bootstrap sécurisé » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - 1. Bootstrap sécurisé
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 58. 3. Build vérifiable
- **Lien :** `/docs/pipeline-cicd/github/securite/lab/build-verifiable/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « 3. Build vérifiable » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - 3. Build vérifiable
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 59. 2. Pipeline CI durci
- **Lien :** `/docs/pipeline-cicd/github/securite/lab/pipeline-ci/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « 2. Pipeline CI durci » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - 2. Pipeline CI durci
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 60. 4. Protection et gouvernance
- **Lien :** `/docs/pipeline-cicd/github/securite/lab/protection-gouvernance/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « 4. Protection et gouvernance » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - 4. Protection et gouvernance
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 61. 5. Scoring et durcissement
- **Lien :** `/docs/pipeline-cicd/github/securite/lab/scoring-durcissement/`
- **Pourquoi ici :** Track principal : GitHub Actions (fondations → workflows → runners → optimisation → sécu). « 5. Scoring et durcissement » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - 5. Scoring et durcissement
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

### Phase C — Second track : GitLab CI
Reprendre les mêmes idées sur GitLab, puis solidifier avec les labs.

**C1 — Entrée & parcours GitLab**

#### 62. GitLab CI/CD
- **Lien :** `/docs/pipeline-cicd/gitlab/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « GitLab CI/CD » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - GitLab CI/CD
  - gitlab
- [ ] Page lue / pratiquée

#### 63. Mon parcours Suivi
- **Lien :** `/docs/pipeline-cicd/gitlab/parcours/`
- **Pourquoi ici :** Jalon parcours site GitLab. La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

**C2 — Fondamentaux GitLab CI**

#### 64. Introduction
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - fondamentaux
- [ ] Page lue / pratiquée

#### 65. Artifacts et cache
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/artifacts-cache/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Artifacts et cache » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Artifacts et cache
  - artifacts cache
- [ ] Page lue / pratiquée

#### 66. Concepts de base
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/concepts-base/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Concepts de base » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts de base
  - concepts base
- [ ] Page lue / pratiquée

#### 67. Debug logs
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/debug-logs/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Debug logs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug logs
  - debug logs
- [ ] Page lue / pratiquée

#### 68. Debug pending
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/debug-pending/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Debug pending » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug pending
  - debug pending
- [ ] Page lue / pratiquée

#### 69. Debug skip
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/debug-skip/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Debug skip » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug skip
  - debug skip
- [ ] Page lue / pratiquée

#### 70. Déclencheurs
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/declencheurs/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Déclencheurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déclencheurs
  - declencheurs
- [ ] Page lue / pratiquée

#### 71. Environnements
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/environnements/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Environnements » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Environnements
  - environnements
- [ ] Page lue / pratiquée

#### 72. Premier pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/premier-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Premier pipeline » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier pipeline
  - premier pipeline
- [ ] Page lue / pratiquée

#### 73. Rapports qualité
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/rapports-qualite/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Rapports qualité » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Rapports qualité
  - rapports qualite
- [ ] Page lue / pratiquée

#### 74. Registries GitLab
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/registries/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Registries GitLab » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Registries GitLab
  - registries
- [ ] Page lue / pratiquée

#### 75. Conditions rules
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/rules/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Conditions rules » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Conditions rules
  - rules
- [ ] Page lue / pratiquée

#### 76. Les Runners
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/runners/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Les Runners » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Runners
  - runners
- [ ] Page lue / pratiquée

#### 77. Scanners de sécurité
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/securite-scanners/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Scanners de sécurité » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Scanners de sécurité
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 78. Synthèse pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/synthese-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Synthèse pipeline » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Synthèse pipeline
  - synthese pipeline
- [ ] Page lue / pratiquée

#### 79. Valider son pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/validation-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Valider son pipeline » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Valider son pipeline
  - validation pipeline
- [ ] Page lue / pratiquée

#### 80. Variables et secrets
- **Lien :** `/docs/pipeline-cicd/gitlab/fondamentaux/variables/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Variables et secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables et secrets
  - variables
- [ ] Page lue / pratiquée

**C3 — Industrialisation**

#### 81. Introduction
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - industrialisation
- [ ] Page lue / pratiquée

#### 82. Capstone industrialisation
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/capstone/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Capstone industrialisation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Capstone industrialisation
  - capstone
- [ ] Page lue / pratiquée

#### 83. Components & Catalog
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/components-catalog/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Components & Catalog » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Components & Catalog
  - components catalog
- [ ] Page lue / pratiquée

#### 84. DAG et parallélisme
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/dag-parallelisme/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « DAG et parallélisme » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - DAG et parallélisme
  - dag parallelisme
- [ ] Page lue / pratiquée

#### 85. Pipelines dynamiques
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/dynamique/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Pipelines dynamiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pipelines dynamiques
  - dynamique
- [ ] Page lue / pratiquée

#### 86. Extends et ancres YAML
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/extends-anchors/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Extends et ancres YAML » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Extends et ancres YAML
  - extends anchors
- [ ] Page lue / pratiquée

#### 87. Fiabilité
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/fiabilite/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Fiabilité » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Fiabilité
  - fiabilite
- [ ] Page lue / pratiquée

#### 88. Matrices (parallel:matrix)
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/matrices/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Matrices (parallel:matrix) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Matrices (parallel:matrix)
  - matrices
- [ ] Page lue / pratiquée

#### 89. Multi-projet
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/multi-projet/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Multi-projet » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Multi-projet
  - multi projet
- [ ] Page lue / pratiquée

#### 90. Pipelines parent-enfant
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/parent-enfant/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Pipelines parent-enfant » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pipelines parent-enfant
  - parent enfant
- [ ] Page lue / pratiquée

#### 91. Services et cache avancé
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/services-cache/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Services et cache avancé » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Services et cache avancé
  - services cache
- [ ] Page lue / pratiquée

#### 92. Templates include
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/templates/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Templates include » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Templates include
  - templates
- [ ] Page lue / pratiquée

#### 93. Workflows CI/CD
- **Lien :** `/docs/pipeline-cicd/gitlab/industrialisation/workflows/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Workflows CI/CD » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Workflows CI/CD
  - workflows
- [ ] Page lue / pratiquée

**C4 — Sécurité GitLab CI**

#### 94. Introduction
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Introduction » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Introduction
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 95. 7 attaques sur vos pipelines
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/attaques-pipelines/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « 7 attaques sur vos pipelines » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - 7 attaques sur vos pipelines
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 96. Audit et conformité
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/audit-conformite/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Audit et conformité » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Audit et conformité
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 97. Branches protégées et approbations
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/branches-protegees/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Branches protégées et approbations » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Branches protégées et approbations
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 98. Durcir vos pipelines
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/durcissement/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Durcir vos pipelines » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Durcir vos pipelines
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 99. Gérer les secrets
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/secrets/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Gérer les secrets » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Gérer les secrets
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 100. Supply chain (SBOM, attestations)
- **Lien :** `/docs/pipeline-cicd/gitlab/securite/supply-chain/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Supply chain (SBOM, attestations) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Supply chain (SBOM, attestations)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

**C5 — Outils GitLab**

#### 101. Présentation des outils
- **Lien :** `/docs/pipeline-cicd/gitlab/outils/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Présentation des outils » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation des outils
  - outils
- [ ] Page lue / pratiquée

#### 102. CLI GitLab (glab)
- **Lien :** `/docs/pipeline-cicd/gitlab/outils/cli/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « CLI GitLab (glab) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CLI GitLab (glab)
  - cli
- [ ] Page lue / pratiquée

#### 103. Plumber
- **Lien :** `/docs/pipeline-cicd/gitlab/outils/plumber/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. La page « Plumber » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plumber
  - plumber
- [ ] Page lue / pratiquée

**C6 — Labs GitLab (pratique)**
Enchaîner les labs pour ancrer le second track.

#### 104. Présentation des labs
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Présentation des labs » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Présentation des labs
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 105. Lab 01 — Premier pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-01-premier-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 01 — Premier pipeline » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 01 — Premier pipeline
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 106. Lab 02 — Lire un échec
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-02-lire-un-echec/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 02 — Lire un échec » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 02 — Lire un échec
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 107. Lab 03 — Images et runners
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-03-images-et-runners/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 03 — Images et runners » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 03 — Images et runners
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 108. Lab 04 — Artifacts et cache
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-04-artifacts-et-cache/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 04 — Artifacts et cache » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 04 — Artifacts et cache
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 109. Lab 05 — Sortir les secrets
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-05-sortir-les-secrets/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 05 — Sortir les secrets » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 05 — Sortir les secrets
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 110. Lab 06 — Contrôler l'exécution
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-06-controler-execution/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 06 — Contrôler l'exécution » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 06 — Contrôler l'exécution
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 111. Lab 07 — Valider pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-07-valider-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 07 — Valider pipeline » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 07 — Valider pipeline
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 112. Lab 08 — Déclencher pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-08-declencher-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 08 — Déclencher pipeline » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 08 — Déclencher pipeline
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 113. Lab 09 — Publier registry
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-09-publier-registry/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 09 — Publier registry » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 09 — Publier registry
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 114. Lab 10 — Rapports qualité
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-10-rapports-qualite/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 10 — Rapports qualité » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 10 — Rapports qualité
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 115. Lab 11 — Debugger job bloqué
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-11-debugger-job-bloque/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 11 — Debugger job bloqué » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 11 — Debugger job bloqué
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 116. Lab 12 — Accélérer pipeline
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-12-accelerer-pipeline/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 12 — Accélérer pipeline » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 12 — Accélérer pipeline
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 117. Lab 13 — DRY : extends et anchors
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-13-extends-anchors/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 13 — DRY : extends et anchors » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 13 — DRY : extends et anchors
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 118. Lab 14 — Templates partagés
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-14-templates-include/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 14 — Templates partagés » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 14 — Templates partagés
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 119. Lab 15 — Matrices multi-versions
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-15-matrices/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 15 — Matrices multi-versions » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 15 — Matrices multi-versions
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 120. Lab 16 — Pipeline parent-enfant
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-16-pipelines-dynamiques/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 16 — Pipeline parent-enfant » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 16 — Pipeline parent-enfant
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 121. Lab 17 — Workflows branches et MR
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-17-workflows/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 17 — Workflows branches et MR » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 17 — Workflows branches et MR
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 122. Lab 18 — Fiabilité et retry
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-18-fiabilite/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 18 — Fiabilité et retry » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 18 — Fiabilité et retry
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 123. Lab 19 — Capstone industriel
- **Lien :** `/docs/pipeline-cicd/gitlab/labs/lab-19-capstone-industriel/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. Lab « Lab 19 — Capstone industriel » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Lab 19 — Capstone industriel
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

**C7 — Certifications & reste GitLab**

#### 124. Vue d'ensemble
- **Lien :** `/docs/pipeline-cicd/gitlab/certifications/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « Vue d'ensemble » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Vue d'ensemble
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 125. GitLab CI/CD Associate
- **Lien :** `/docs/pipeline-cicd/gitlab/certifications/cicd-associate/`
- **Pourquoi ici :** Second track : GitLab CI — transférer les concepts, puis labs d'ancrage. « GitLab CI/CD Associate » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - GitLab CI/CD Associate
  - Périmètre examen
- [ ] Page lue / pratiquée

### Phase D — GitOps (Argo CD puis Flux)
Séparer build (CI) et déploiement continu déclaratif sur Kubernetes.

**D1 — Argo CD**

#### 126. Vue d'ensemble
- **Lien :** `/docs/pipeline-cicd/argocd/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). « Vue d'ensemble » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Vue d'ensemble
  - argocd
- [ ] Page lue / pratiquée

#### 127. Mon parcours
- **Lien :** `/docs/pipeline-cicd/argocd/parcours/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Mon parcours » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours
  - parcours
- [ ] Page lue / pratiquée

#### 128. Concepts et architecture
- **Lien :** `/docs/pipeline-cicd/argocd/concepts/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Concepts et architecture » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts et architecture
  - concepts
- [ ] Page lue / pratiquée

#### 129. Installation
- **Lien :** `/docs/pipeline-cicd/argocd/installation/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation
  - installation
- [ ] Page lue / pratiquée

#### 130. Première application
- **Lien :** `/docs/pipeline-cicd/argocd/premiere-application/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Première application » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Première application
  - premiere application
- [ ] Page lue / pratiquée

#### 131. Maîtriser la synchronisation
- **Lien :** `/docs/pipeline-cicd/argocd/sync-strategies/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Maîtriser la synchronisation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Maîtriser la synchronisation
  - sync strategies
- [ ] Page lue / pratiquée

#### 132. App of Apps
- **Lien :** `/docs/pipeline-cicd/argocd/app-of-apps/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « App of Apps » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - App of Apps
  - app of apps
- [ ] Page lue / pratiquée

#### 133. Multi-environnements
- **Lien :** `/docs/pipeline-cicd/argocd/multi-env/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Multi-environnements » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Multi-environnements
  - multi env
- [ ] Page lue / pratiquée

#### 134. Intégration CI/CD
- **Lien :** `/docs/pipeline-cicd/argocd/integration-ci/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Intégration CI/CD » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Intégration CI/CD
  - integration ci
- [ ] Page lue / pratiquée

#### 135. Déploiements progressifs
- **Lien :** `/docs/pipeline-cicd/argocd/progressive-delivery/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Déploiements progressifs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déploiements progressifs
  - progressive delivery
- [ ] Page lue / pratiquée

#### 136. Rollback et reprise
- **Lien :** `/docs/pipeline-cicd/argocd/rollback-reprise/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Rollback et reprise » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Rollback et reprise
  - rollback reprise
- [ ] Page lue / pratiquée

#### 137. Notifications
- **Lien :** `/docs/pipeline-cicd/argocd/notifications/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Notifications » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Notifications
  - notifications
- [ ] Page lue / pratiquée

#### 138. Superviser avec Prometheus
- **Lien :** `/docs/pipeline-cicd/argocd/monitoring/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Superviser avec Prometheus » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Superviser avec Prometheus
  - monitoring
- [ ] Page lue / pratiquée

#### 139. Admission Controllers
- **Lien :** `/docs/pipeline-cicd/argocd/admission-controllers/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Admission Controllers » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Admission Controllers
  - admission controllers
- [ ] Page lue / pratiquée

#### 140. Sécuriser ArgoCD
- **Lien :** `/docs/pipeline-cicd/argocd/securiser/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). « Sécuriser ArgoCD » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Sécuriser ArgoCD
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 141. Dépannage
- **Lien :** `/docs/pipeline-cicd/argocd/depannage/`
- **Pourquoi ici :** GitOps Argo CD : après une CI qui produit des artefacts et des bases K8s (10). La page « Dépannage » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Dépannage
  - depannage
- [ ] Page lue / pratiquée

**D2 — Flux CD**

#### 142. Vue d'ensemble
- **Lien :** `/docs/pipeline-cicd/fluxcd/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. « Vue d'ensemble » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Vue d'ensemble
  - fluxcd
- [ ] Page lue / pratiquée

#### 143. Concepts et architecture
- **Lien :** `/docs/pipeline-cicd/fluxcd/concepts/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Concepts et architecture » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts et architecture
  - concepts
- [ ] Page lue / pratiquée

#### 144. Bootstrap et installation
- **Lien :** `/docs/pipeline-cicd/fluxcd/installation/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Bootstrap et installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Bootstrap et installation
  - installation
- [ ] Page lue / pratiquée

#### 145. Première application
- **Lien :** `/docs/pipeline-cicd/fluxcd/premiere-application/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Première application » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Première application
  - premiere application
- [ ] Page lue / pratiquée

#### 146. Déploiements Helm
- **Lien :** `/docs/pipeline-cicd/fluxcd/helm/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Déploiements Helm » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déploiements Helm
  - helm
- [ ] Page lue / pratiquée

#### 147. Automatisation d'images
- **Lien :** `/docs/pipeline-cicd/fluxcd/image-automation/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Automatisation d'images » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Automatisation d'images
  - image automation
- [ ] Page lue / pratiquée

#### 148. Monitoring et alertes
- **Lien :** `/docs/pipeline-cicd/fluxcd/monitoring/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Monitoring et alertes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Monitoring et alertes
  - monitoring
- [ ] Page lue / pratiquée

#### 149. Multi-tenancy
- **Lien :** `/docs/pipeline-cicd/fluxcd/multi-tenancy/`
- **Pourquoi ici :** Flux CD : alternative GitOps à comparer après Argo. La page « Multi-tenancy » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Multi-tenancy
  - multi tenancy
- [ ] Page lue / pratiquée

### Phase E — Dagger & Jenkins
Pipelines portables (Dagger) et héritage Jenkins.

#### 150. Dagger
- **Lien :** `/docs/pipeline-cicd/dagger/`
- **Pourquoi ici :** Dagger : pipelines as code portables après un CI classique. « Dagger » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Dagger
  - dagger
- [ ] Page lue / pratiquée

#### 151. Introduction
- **Lien :** `/docs/pipeline-cicd/dagger/fondamentaux/`
- **Pourquoi ici :** Dagger : pipelines as code portables après un CI classique. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - fondamentaux
- [ ] Page lue / pratiquée

#### 152. Concepts
- **Lien :** `/docs/pipeline-cicd/dagger/fondamentaux/concepts/`
- **Pourquoi ici :** Dagger : pipelines as code portables après un CI classique. La page « Concepts » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts
  - concepts
- [ ] Page lue / pratiquée

#### 153. Connexion, cycle async, erreurs
- **Lien :** `/docs/pipeline-cicd/dagger/fondamentaux/connexion-async/`
- **Pourquoi ici :** Dagger : pipelines as code portables après un CI classique. La page « Connexion, cycle async, erreurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Connexion, cycle async, erreurs
  - connexion async
- [ ] Page lue / pratiquée

#### 154. Container API : images, exec, env
- **Lien :** `/docs/pipeline-cicd/dagger/fondamentaux/container-api/`
- **Pourquoi ici :** Dagger : pipelines as code portables après un CI classique. La page « Container API : images, exec, env » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Container API : images, exec, env
  - container api
- [ ] Page lue / pratiquée

#### 155. Installation
- **Lien :** `/docs/pipeline-cicd/dagger/fondamentaux/installation/`
- **Pourquoi ici :** Dagger : pipelines as code portables après un CI classique. La page « Installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation
  - installation
- [ ] Page lue / pratiquée

#### 156. Jenkins
- **Lien :** `/docs/pipeline-cicd/jenkins/`
- **Pourquoi ici :** Jenkins : héritage CI, culture utile en fin de parcours outils. « Jenkins » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Jenkins
  - jenkins
- [ ] Page lue / pratiquée

### Phase F — Sécurité transverse du pipeline & annexes
Gates sécu, scan de secrets, durcissement — lien explicite avec `05-securite`.

#### 157. Sécuriser une pipeline CI/CD
- **Lien :** `/docs/pipeline-cicd/securiser/`
- **Pourquoi ici :** Sécurité transverse du pipeline (dossier 05) : secrets, supply chain, gates. « Sécuriser une pipeline CI/CD » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Sécuriser une pipeline CI/CD
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 158. Secrets Scanning (guide complet)
- **Lien :** `/docs/pipeline-cicd/security/secrets-scanning/`
- **Pourquoi ici :** Sécurité transverse du pipeline (dossier 05) : secrets, supply chain, gates. « Secrets Scanning (guide complet) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Secrets Scanning (guide complet)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

## Compétences acquises
- Expliquer CI vs CD et éviter les anti-patterns de delivery
- Concevoir des workflows GitHub Actions robustes (cache, runners, sécu)
- Écrire et industrialiser des pipelines GitLab CI (y compris via labs)
- Mettre en place un déploiement GitOps avec Argo CD (et situer Flux)
- Ajouter des contrôles sécurité (secrets, supply chain, permissions) au pipeline

## Checklist globale
- [ ] Phase A — Définir, comprendre les échecs, bonnes pratiques terminée
- [ ] Phase B — Track principal : GitHub Actions terminée
- [ ] Phase C — Second track : GitLab CI terminée
- [ ] Phase D — GitOps (Argo CD puis Flux) terminée
- [ ] Phase E — Dagger & Jenkins terminée
- [ ] Phase F — Sécurité transverse du pipeline & annexes terminée
- [ ] Dossier validé
