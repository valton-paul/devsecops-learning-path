# Parcours — 09-infrastructure-as-code

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/infra-as-code/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier
Ce dossier enseigne à décrire, versionner et faire converger une infrastructure par le code plutôt que par des clics ou des scripts jetables.

Public cible : profil débutant → intermédiaire qui sait déjà naviguer sous Linux et utiliser Git, et qui veut automatiser la configuration des machines puis le provisionnement cloud/VM.

Dans la formation DevSecOps globale, l'IaC est le pont entre l'admin système (02), le développement (04), la virtualisation (08) et la suite conteneurs / CI-CD (10, 13). Sans IaC reproductible, les pipelines et la sécurité « as code » restent fragiles.

## Prérequis
- Dossiers locaux : `02-administration-linux`, `04-developper-des-applications` (Git), idéalement `08-virtualisation`
- Concepts : shell, SSH, YAML de base, notions de VM/cloud
- Si dépendance externe : labs Ansible s'appuient souvent sur KVM/Proxmox (voir dossier 08)

## Logique pédagogique (pourquoi cet ordre)
Le menu du site mélange fondamentaux, Ansible (très fourni), alternatives et Terraform. Ici on impose un ordre débutant→intermédiaire : d'abord les concepts IaC, ensuite la gestion de configuration avec Ansible en fil conducteur (pratique avant catalogues de modules Galaxy/modules), puis le provisionnement avec Terraform, enfin Terragrunt/OpenTofu/Pulumi/Packer. Les catalogues très longs sont regroupés en sous-phases « catalogue / approfondissement » sans omettre une seule page.

## Ordre de lecture conseillé

### Phase A — Fondamentaux IaC
Vocabulaire et principes avant tout outil. S'appuie sur Linux (02), Git (04) et idéalement la virtualisation (08) pour les labs.

#### 1. IaC
- **Lien :** `/docs/infra-as-code/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. « IaC » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - IaC
  - infra as code
- [ ] Page lue / pratiquée

#### 2. Fondamentaux
- **Lien :** `/docs/infra-as-code/fondamentaux/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. « Fondamentaux » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Fondamentaux
  - fondamentaux
- [ ] Page lue / pratiquée

#### 3. Comprendre l'Infrastructure as Code
- **Lien :** `/docs/infra-as-code/fondamentaux/comprendre-iac/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Comprendre l'Infrastructure as Code » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Comprendre l'Infrastructure as Code
  - comprendre iac
- [ ] Page lue / pratiquée

#### 4. Pourquoi l'IaC change l'exploitation
- **Lien :** `/docs/infra-as-code/fondamentaux/pourquoi-iac/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Pourquoi l'IaC change l'exploitation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pourquoi l'IaC change l'exploitation
  - pourquoi iac
- [ ] Page lue / pratiquée

#### 5. Déclaratif vs impératif
- **Lien :** `/docs/infra-as-code/fondamentaux/declaratif-vs-imperatif/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Déclaratif vs impératif » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déclaratif vs impératif
  - declaratif vs imperatif
- [ ] Page lue / pratiquée

#### 6. Idempotence, convergence et dérive
- **Lien :** `/docs/infra-as-code/fondamentaux/idempotence-convergence-derive/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Idempotence, convergence et dérive » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Idempotence, convergence et dérive
  - idempotence convergence derive
- [ ] Page lue / pratiquée

#### 7. Provisionnement vs gestion de configuration
- **Lien :** `/docs/infra-as-code/fondamentaux/provisionnement-vs-gestion-configuration/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Provisionnement vs gestion de configuration » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Provisionnement vs gestion de configuration
  - provisionnement vs gestion configuration
- [ ] Page lue / pratiquée

#### 8. Terraform vs Ansible : où s'arrête chaque outil ?
- **Lien :** `/docs/infra-as-code/fondamentaux/terraform-vs-ansible/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Terraform vs Ansible : où s'arrête chaque outil ? » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terraform vs Ansible : où s'arrête chaque outil ?
  - terraform vs ansible
- [ ] Page lue / pratiquée

#### 9. Choisir le bon type d'outil
- **Lien :** `/docs/infra-as-code/fondamentaux/choisir-type-outil/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Choisir le bon type d'outil » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Choisir le bon type d'outil
  - choisir type outil
- [ ] Page lue / pratiquée

#### 10. Organiser un projet IaC
- **Lien :** `/docs/infra-as-code/fondamentaux/organiser-projet/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Organiser un projet IaC » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Organiser un projet IaC
  - organiser projet
- [ ] Page lue / pratiquée

#### 11. Gérer les secrets en IaC
- **Lien :** `/docs/infra-as-code/fondamentaux/secrets/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Gérer les secrets en IaC » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les secrets en IaC
  - secrets
- [ ] Page lue / pratiquée

#### 12. State et données sensibles
- **Lien :** `/docs/infra-as-code/fondamentaux/state-donnees-sensibles/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « State et données sensibles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - State et données sensibles
  - state donnees sensibles
- [ ] Page lue / pratiquée

#### 13. Valider et relire son code IaC
- **Lien :** `/docs/infra-as-code/fondamentaux/validation-revue-code/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Valider et relire son code IaC » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Valider et relire son code IaC
  - validation revue code
- [ ] Page lue / pratiquée

#### 14. Tests et contrôles automatiques
- **Lien :** `/docs/infra-as-code/fondamentaux/tests-controles/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Tests et contrôles automatiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tests et contrôles automatiques
  - tests controles
- [ ] Page lue / pratiquée

#### 15. Anti-patterns IaC qui créent la dette
- **Lien :** `/docs/infra-as-code/fondamentaux/anti-patterns-iac/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Anti-patterns IaC qui créent la dette » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Anti-patterns IaC qui créent la dette
  - anti patterns iac
- [ ] Page lue / pratiquée

#### 16. Éviter la dette technique en IaC
- **Lien :** `/docs/infra-as-code/fondamentaux/dette-technique/`
- **Pourquoi ici :** Socle conceptuel IaC avant tout outil : vocabulaire, pièges et choix d'approche. La page « Éviter la dette technique en IaC » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Éviter la dette technique en IaC
  - dette technique
- [ ] Page lue / pratiquée

### Phase B — Gestion de configuration (Ansible d'abord)
Ansible est le fil conducteur : découverte → pratique → inventaires → code → modules → rôles → industrialisation. Les catalogues de modules sont regroupés en sous-phase dédiée. Les alternatives viennent ensuite.

**B1 — Découvrir Ansible**
Présentation, architecture, installation et CLI.

#### 17. Introduction
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/`
- **Pourquoi ici :** Entrée gestion de configuration : carte avant de plonger dans Ansible. « Introduction » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Introduction
  - gestion de configuration
- [ ] Page lue / pratiquée

#### 18. Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/`
- **Pourquoi ici :** Point d'entrée Ansible sur le site. La page « Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Ansible
  - ansible
- [ ] Page lue / pratiquée

#### 19. Mon parcours Suivi
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/parcours/`
- **Pourquoi ici :** Parcours site Ansible : jalon ; suivre plutôt l'ordre de ce fichier. La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

#### 20. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - decouvrir
- [ ] Page lue / pratiquée

#### 21. Le fichier ansible.cfg
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/ansible-config-fichier/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Le fichier ansible.cfg » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Le fichier ansible.cfg
  - ansible config fichier
- [ ] Page lue / pratiquée

#### 22. Ansible vs Terraform vs Puppet
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/ansible-vs-terraform-vs-puppet/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Ansible vs Terraform vs Puppet » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Ansible vs Terraform vs Puppet
  - ansible vs terraform vs puppet
- [ ] Page lue / pratiquée

#### 23. Architecture d'Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/architecture-ansible/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Architecture d'Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Architecture d'Ansible
  - architecture ansible
- [ ] Page lue / pratiquée

#### 24. Déclaratif vs impératif
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/declaratif-vs-imperatif/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Déclaratif vs impératif » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déclaratif vs impératif
  - declaratif vs imperatif
- [ ] Page lue / pratiquée

#### 25. Installer Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/installation-ansible/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Installer Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer Ansible
  - installation ansible
- [ ] Page lue / pratiquée

#### 26. Présentation d'Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/presentation-ansible/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Présentation d'Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation d'Ansible
  - presentation ansible
- [ ] Page lue / pratiquée

#### 27. Prise en main de la CLI
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/prise-en-main-cli/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). La page « Prise en main de la CLI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Prise en main de la CLI
  - prise en main cli
- [ ] Page lue / pratiquée

#### 28. Quiz Découvrir
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/decouvrir/quiz/`
- **Pourquoi ici :** Découverte Ansible (premier outil de config management du parcours). « Quiz Découvrir » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Découvrir
  - Auto-évaluation
- [ ] Page lue / pratiquée

**B2 — Premiers pas**
Lab : connexion SSH, inventaire, premier playbook, lint, vault minimal.

#### 29. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - premiers pas
- [ ] Page lue / pratiquée

#### 30. Commandes ad-hoc
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/ad-hoc-commands/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Commandes ad-hoc » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Commandes ad-hoc
  - ad hoc commands
- [ ] Page lue / pratiquée

#### 31. ansible-lint (réflexe à prendre)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/ansible-lint/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « ansible-lint (réflexe à prendre) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ansible-lint (réflexe à prendre)
  - ansible lint
- [ ] Page lue / pratiquée

#### 32. Debug premières erreurs
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/debug-premiers-erreurs/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Debug premières erreurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug premières erreurs
  - debug premiers erreurs
- [ ] Page lue / pratiquée

#### 33. Modules essentiels (cheat-sheet)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/modules-essentiels/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Modules essentiels (cheat-sheet) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Modules essentiels (cheat-sheet)
  - modules essentiels
- [ ] Page lue / pratiquée

#### 34. Premier inventaire
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/premier-inventaire/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Premier inventaire » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier inventaire
  - premier inventaire
- [ ] Page lue / pratiquée

#### 35. Premier playbook
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/premier-playbook/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Premier playbook » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier playbook
  - premier playbook
- [ ] Page lue / pratiquée

#### 36. Première connexion SSH
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/premiere-connexion-ssh/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Première connexion SSH » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Première connexion SSH
  - premiere connexion ssh
- [ ] Page lue / pratiquée

#### 37. Premiers pas Ansible Vault
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/premiers-pas-ansible-vault/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Premiers pas Ansible Vault » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premiers pas Ansible Vault
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 38. Préparer le lab KVM
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/preparer-lab-kvm/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. Lab « Préparer le lab KVM » : pratiquer maintenant pour ancrer la théorie de la phase.
- **À retenir :**
  - Préparer le lab KVM
  - Mise en pratique guidée
- [ ] Page lue / pratiquée

#### 39. Sous le capot — managed nodes
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/preparer-noeuds-geres/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. La page « Sous le capot — managed nodes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sous le capot — managed nodes
  - preparer noeuds geres
- [ ] Page lue / pratiquée

#### 40. Quiz Premiers pas
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/premiers-pas/quiz/`
- **Pourquoi ici :** Premiers pas concrets : SSH, inventaire, playbook — ancrage avant le code avancé. « Quiz Premiers pas » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Premiers pas
  - Auto-évaluation
- [ ] Page lue / pratiquée

**B3 — Inventaires**
Statiques puis dynamiques ; group_vars/host_vars.

#### 41. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - inventaires
- [ ] Page lue / pratiquée

#### 42. Inventaire INI
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/statiques-ini/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Inventaire INI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Inventaire INI
  - statiques ini
- [ ] Page lue / pratiquée

#### 43. Inventaire YAML
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/statiques-yaml/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Inventaire YAML » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Inventaire YAML
  - statiques yaml
- [ ] Page lue / pratiquée

#### 44. group_vars et host_vars
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/group-vars-host-vars/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « group_vars et host_vars » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - group_vars et host_vars
  - group vars host vars
- [ ] Page lue / pratiquée

#### 45. Patterns d'hôtes
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/patterns-hotes/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Patterns d'hôtes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Patterns d'hôtes
  - patterns hotes
- [ ] Page lue / pratiquée

#### 46. Vérifier l'inventaire
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/verifier-inventaire/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Vérifier l'inventaire » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Vérifier l'inventaire
  - verifier inventaire
- [ ] Page lue / pratiquée

#### 47. Inventaires multiples
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/inventaires-multiples/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Inventaires multiples » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Inventaires multiples
  - inventaires multiples
- [ ] Page lue / pratiquée

#### 48. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - dynamiques
- [ ] Page lue / pratiquée

#### 49. Concepts des plugins
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/concepts-plugins/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Concepts des plugins » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts des plugins
  - concepts plugins
- [ ] Page lue / pratiquée

#### 50. Écrire un script custom
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/ecrire-script-custom/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Écrire un script custom » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Écrire un script custom
  - ecrire script custom
- [ ] Page lue / pratiquée

#### 51. Modules runtime (add_host, group_by)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/modules-runtime-inventaire/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Modules runtime (add_host, group_by) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Modules runtime (add_host, group_by)
  - modules runtime inventaire
- [ ] Page lue / pratiquée

#### 52. Plugin AWS EC2
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/plugin-aws-ec2/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Plugin AWS EC2 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plugin AWS EC2
  - plugin aws ec2
- [ ] Page lue / pratiquée

#### 53. Plugin libvirt (KVM)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/plugin-libvirt-kvm/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Plugin libvirt (KVM) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plugin libvirt (KVM)
  - plugin libvirt kvm
- [ ] Page lue / pratiquée

#### 54. Plugin NetBox
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/plugin-netbox/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Plugin NetBox » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plugin NetBox
  - plugin netbox
- [ ] Page lue / pratiquée

#### 55. Plugin Proxmox
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/inventaires/dynamiques/plugin-proxmox/`
- **Pourquoi ici :** Inventaires : sans hôtes/groupes fiables, aucun playbook n'est répétable. La page « Plugin Proxmox » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plugin Proxmox
  - plugin proxmox
- [ ] Page lue / pratiquée

**B4 — Écrire du code**
Playbooks, variables/facts, templates Jinja2, contrôle de flux.

#### 56. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - ecrire code
- [ ] Page lue / pratiquée

#### 57. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - controle flux
- [ ] Page lue / pratiquée

#### 58. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - playbooks
- [ ] Page lue / pratiquée

#### 59. Quiz Écrire du code
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/quiz/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. « Quiz Écrire du code » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Écrire du code
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 60. Structure d'un projet
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/structure-projet/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Structure d'un projet » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structure d'un projet
  - structure projet
- [ ] Page lue / pratiquée

#### 61. Style guide
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/style-guide/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Style guide » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Style guide
  - style guide
- [ ] Page lue / pratiquée

#### 62. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/templates-jinja2/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - templates jinja2
- [ ] Page lue / pratiquée

#### 63. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - variables facts
- [ ] Page lue / pratiquée

#### 64. YAML pour Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/yaml-pour-ansible/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « YAML pour Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - YAML pour Ansible
  - yaml pour ansible
- [ ] Page lue / pratiquée

#### 65. any_errors_fatal
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/any-errors-fatal/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « any_errors_fatal » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - any_errors_fatal
  - any errors fatal
- [ ] Page lue / pratiquée

#### 66. Block / rescue / always
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/block-rescue-always/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Block / rescue / always » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Block / rescue / always
  - block rescue always
- [ ] Page lue / pratiquée

#### 67. Boucles — loop
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/boucles-loop/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Boucles — loop » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Boucles — loop
  - boucles loop
- [ ] Page lue / pratiquée

#### 68. Boucles legacy with_*
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/boucles-with-deprecated/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Boucles legacy with_* » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Boucles legacy with_*
  - boucles with deprecated
- [ ] Page lue / pratiquée

#### 69. Conditions — when
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/conditions-when/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Conditions — when » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Conditions — when
  - conditions when
- [ ] Page lue / pratiquée

#### 70. failed_when et changed_when
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/failed-when-changed-when/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « failed_when et changed_when » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - failed_when et changed_when
  - failed when changed when
- [ ] Page lue / pratiquée

#### 71. ignore_errors
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/controle-flux/ignore-errors/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « ignore_errors » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ignore_errors
  - ignore errors
- [ ] Page lue / pratiquée

#### 72. Async et poll
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/async-poll/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Async et poll » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Async et poll
  - async poll
- [ ] Page lue / pratiquée

#### 73. Check mode et diff
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/checkmode-diff/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Check mode et diff » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Check mode et diff
  - checkmode diff
- [ ] Page lue / pratiquée

#### 74. Délégation
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/delegation/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Délégation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Délégation
  - delegation
- [ ] Page lue / pratiquée

#### 75. Handlers
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/handlers/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Handlers » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Handlers
  - handlers
- [ ] Page lue / pratiquée

#### 76. Import vs Include
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/import-include/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Import vs Include » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Import vs Include
  - import include
- [ ] Page lue / pratiquée

#### 77. Modules built-in
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/modules-builtin/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Modules built-in » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Modules built-in
  - modules builtin
- [ ] Page lue / pratiquée

#### 78. Parallélisme et stratégies
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/parallelisme-strategies/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Parallélisme et stratégies » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Parallélisme et stratégies
  - parallelisme strategies
- [ ] Page lue / pratiquée

#### 79. Plays et tasks
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/plays-et-tasks/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Plays et tasks » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plays et tasks
  - plays et tasks
- [ ] Page lue / pratiquée

#### 80. Tags
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/playbooks/tags/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Tags » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tags
  - tags
- [ ] Page lue / pratiquée

#### 81. Filtres Jinja2 avancés
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/templates-jinja2/filtres-jinja/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Filtres Jinja2 avancés » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Filtres Jinja2 avancés
  - filtres jinja
- [ ] Page lue / pratiquée

#### 82. Jinja2 — syntaxe de base
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/templates-jinja2/jinja2-base/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Jinja2 — syntaxe de base » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Jinja2 — syntaxe de base
  - jinja2 base
- [ ] Page lue / pratiquée

#### 83. lineinfile vs template
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/templates-jinja2/lineinfile-vs-template/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « lineinfile vs template » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - lineinfile vs template
  - lineinfile vs template
- [ ] Page lue / pratiquée

#### 84. Module template
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/templates-jinja2/module-template/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Module template » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Module template
  - module template
- [ ] Page lue / pratiquée

#### 85. Tests Jinja2
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/templates-jinja2/tests-jinja/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Tests Jinja2 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tests Jinja2
  - tests jinja
- [ ] Page lue / pratiquée

#### 86. Custom facts (facts.d)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/custom-facts/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Custom facts (facts.d) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Custom facts (facts.d)
  - custom facts
- [ ] Page lue / pratiquée

#### 87. Facts et magic vars
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/facts-magic-vars/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Facts et magic vars » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Facts et magic vars
  - facts magic vars
- [ ] Page lue / pratiquée

#### 88. Filtres Jinja2 essentiels
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/filtres-jinja-essentiels/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Filtres Jinja2 essentiels » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Filtres Jinja2 essentiels
  - filtres jinja essentiels
- [ ] Page lue / pratiquée

#### 89. Lookups
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/lookups/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Lookups » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Lookups
  - lookups
- [ ] Page lue / pratiquée

#### 90. Précédence (22 niveaux RHCE)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/precedence-variables/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Précédence (22 niveaux RHCE) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Précédence (22 niveaux RHCE)
  - precedence variables
- [ ] Page lue / pratiquée

#### 91. register et set_fact
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/register-set-fact/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « register et set_fact » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - register et set_fact
  - register set fact
- [ ] Page lue / pratiquée

#### 92. Types collections
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/types-collections/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Types collections » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Types collections
  - types collections
- [ ] Page lue / pratiquée

#### 93. Variables — déclaration
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/ecrire-code/variables-facts/variables-base/`
- **Pourquoi ici :** Écriture de playbooks : YAML, variables, Jinja2, flux — après le premier playbook. La page « Variables — déclaration » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables — déclaration
  - variables base
- [ ] Page lue / pratiquée

**B5 — Modules (tronc pratique)**
Les modules du quotidien avant le catalogue exhaustif.

#### 94. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Vue d'ensemble » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Vue d'ensemble
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 95. Trouver le bon module
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/trouver-le-bon-module/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Trouver le bon module » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Trouver le bon module
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 96. archive et unarchive
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/archive-unarchive/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « archive et unarchive » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : archive et unarchive
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 97. Module blockinfile
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/module-blockinfile/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module blockinfile » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module blockinfile
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 98. Module copy
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/module-copy/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module copy » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module copy
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 99. Module fetch
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/module-fetch/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module fetch » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module fetch
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 100. Module file
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/module-file/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module file » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module file
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 101. Module lineinfile
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/module-lineinfile/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module lineinfile » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module lineinfile
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 102. Module replace
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/fichiers/module-replace/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module replace » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module replace
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 103. Module cron
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/paquets-services/module-cron/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module cron » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module cron
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 104. Module dnf — options
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/paquets-services/module-dnf-options/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module dnf — options » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module dnf — options
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 105. Module package
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/paquets-services/module-package/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module package » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module package
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 106. Module systemd_service
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/paquets-services/module-systemd/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module systemd_service » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module systemd_service
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 107. Module yum_repository
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/paquets-services/module-yum-repository/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module yum_repository » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module yum_repository
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 108. Multi-distribution
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/paquets-services/multi-distro-packages/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Multi-distribution » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Multi-distribution
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 109. Module authorized_key
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/utilisateurs/module-authorized-key/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module authorized_key » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module authorized_key
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 110. Module group
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/utilisateurs/module-group/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module group » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module group
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 111. Module sudoers
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/utilisateurs/module-sudoers/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module sudoers » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module sudoers
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 112. Module user
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/utilisateurs/module-user/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Module user » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module user
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 113. raw, command, shell, script
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/complements/raw-command-shell/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « raw, command, shell, script » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : raw, command, shell, script
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 114. debug, setup, add_host, group_by
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/complements/utils-ansible/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « debug, setup, add_host, group_by » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : debug, setup, add_host, group_by
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 115. Windows (WinRM, OpenSSH)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/complements/windows/`
- **Pourquoi ici :** Modules Ansible du tronc pratique (usages quotidiens) avant le catalogue exhaustif. Référence catalogue « Windows (WinRM, OpenSSH) » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Windows (WinRM, OpenSSH)
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

**B6 — Catalogue / approfondissement modules**
Toutes les pages modules restantes (réseau, système, diagnostic, etc.) : aucune omise.

#### 116. Modules assert et fail
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/diagnostic/module-assert-fail/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Modules assert et fail » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Modules assert et fail
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 117. Module find
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/diagnostic/module-find/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module find » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module find
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 118. Module service_facts
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/diagnostic/module-service-facts/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module service_facts » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module service_facts
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 119. Module stat
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/diagnostic/module-stat/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module stat » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module stat
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 120. Modules wait_for et pause
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/diagnostic/module-wait-for-pause/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Modules wait_for et pause » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Modules wait_for et pause
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 121. Module get_url
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/reseau/module-get-url/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module get_url » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module get_url
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 122. Module uri
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/reseau/module-uri/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module uri » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module uri
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 123. LVM (lvg + lvol + filesystem)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/lvm-storage/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « LVM (lvg + lvol + filesystem) » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : LVM (lvg + lvol + filesystem)
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 124. Module filesystem
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-filesystem/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module filesystem » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module filesystem
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 125. Module firewalld
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-firewalld/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module firewalld » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module firewalld
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 126. Module getent
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-getent/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module getent » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module getent
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 127. Module hostname
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-hostname/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module hostname » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module hostname
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 128. Module mount
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-mount/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module mount » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module mount
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 129. Module parted
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-parted/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module parted » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module parted
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 130. Module reboot
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-reboot/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module reboot » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module reboot
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 131. Module SELinux
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-selinux/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module SELinux » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module SELinux
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

#### 132. Module sysctl
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/modules/systeme/module-sysctl/`
- **Pourquoi ici :** Catalogue / approfondissement modules Ansible : chaque page est une référence ; à consulter selon le besoin après le tronc. Référence catalogue « Module sysctl » : garder sous le coude et ouvrir quand le besoin concret apparaît.
- **À retenir :**
  - Référence : Module sysctl
  - À consulter selon le besoin
- [ ] Page lue / pratiquée

**B7 — Rôles, tests et CI**
Structure de rôles, Galaxy CLI, Molecule, publication.

#### 133. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - roles
- [ ] Page lue / pratiquée

#### 134. ansible-galaxy CLI
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/ansible-galaxy-cli/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « ansible-galaxy CLI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ansible-galaxy CLI
  - ansible galaxy cli
- [ ] Page lue / pratiquée

#### 135. ansible-lint production
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/ansible-lint-production-profile/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « ansible-lint production » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ansible-lint production
  - ansible lint production profile
- [ ] Page lue / pratiquée

#### 136. argument_specs.yml
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/argument-specs/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « argument_specs.yml » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - argument_specs.yml
  - argument specs
- [ ] Page lue / pratiquée

#### 137. Auditer un rôle existant
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/auditer-role-existant/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Auditer un rôle existant » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Auditer un rôle existant
  - auditer role existant
- [ ] Page lue / pratiquée

#### 138. CI GitHub Actions
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/ci-github-actions/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « CI GitHub Actions » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CI GitHub Actions
  - ci github actions
- [ ] Page lue / pratiquée

#### 139. CI GitLab
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/ci-gitlab/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « CI GitLab » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CI GitLab
  - ci gitlab
- [ ] Page lue / pratiquée

#### 140. Consommer un rôle
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/consommer-role/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Consommer un rôle » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Consommer un rôle
  - consommer role
- [ ] Page lue / pratiquée

#### 141. Créer son premier rôle
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/creer-premier-role/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Créer son premier rôle » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Créer son premier rôle
  - creer premier role
- [ ] Page lue / pratiquée

#### 142. Découvrir les rôles
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/decouvrir-roles/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Découvrir les rôles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Découvrir les rôles
  - decouvrir roles
- [ ] Page lue / pratiquée

#### 143. Dépendances entre rôles
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/dependencies/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Dépendances entre rôles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Dépendances entre rôles
  - dependencies
- [ ] Page lue / pratiquée

#### 144. Handlers et meta
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/handlers-meta/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Handlers et meta » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Handlers et meta
  - handlers meta
- [ ] Page lue / pratiquée

#### 145. Installer rôles Galaxy
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/installer-roles-galaxy/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Installer rôles Galaxy » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer rôles Galaxy
  - installer roles galaxy
- [ ] Page lue / pratiquée

#### 146. Installer et configurer Molecule
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/molecule-installation-config/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Installer et configurer Molecule » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer et configurer Molecule
  - molecule installation config
- [ ] Page lue / pratiquée

#### 147. Scenarios multi-distro
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/molecule-scenarios-multi-distro/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Scenarios multi-distro » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Scenarios multi-distro
  - molecule scenarios multi distro
- [ ] Page lue / pratiquée

#### 148. Cycle TDD complet
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/molecule-tdd-cycle/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Cycle TDD complet » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cycle TDD complet
  - molecule tdd cycle
- [ ] Page lue / pratiquée

#### 149. RHEL System Roles
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/rhel-system-roles/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « RHEL System Roles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - RHEL System Roles
  - rhel system roles
- [ ] Page lue / pratiquée

#### 150. Structure standard
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/structure-standard/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Structure standard » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structure standard
  - structure standard
- [ ] Page lue / pratiquée

#### 151. Introduction TDD Molecule
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/tdd-molecule-introduction/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Introduction TDD Molecule » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction TDD Molecule
  - tdd molecule introduction
- [ ] Page lue / pratiquée

#### 152. Tests avec testinfra
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/tests-testinfra/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Tests avec testinfra » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tests avec testinfra
  - tests testinfra
- [ ] Page lue / pratiquée

#### 153. Tests tox multi-versions
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/tests-tox-multiversion/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Tests tox multi-versions » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tests tox multi-versions
  - tests tox multiversion
- [ ] Page lue / pratiquée

#### 154. Variables : defaults vs vars
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/variables-defaults-vars/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Variables : defaults vs vars » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables : defaults vs vars
  - variables defaults vars
- [ ] Page lue / pratiquée

#### 155. Versionner et publier
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/roles/versionner-publier/`
- **Pourquoi ici :** Rôles + Molecule : réutilisation et tests après maîtrise du code de base. La page « Versionner et publier » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Versionner et publier
  - versionner publier
- [ ] Page lue / pratiquée

**B8 — Collections, EE, Vault, AWX**
Industrialisation de l'écosystème Ansible.

#### 156. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/collections/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - collections
- [ ] Page lue / pratiquée

#### 157. Créer une collection custom
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/collections/creer-collection-custom/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Créer une collection custom » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Créer une collection custom
  - creer collection custom
- [ ] Page lue / pratiquée

#### 158. Découvrir une collection
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/collections/decouvrir-collection/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Découvrir une collection » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Découvrir une collection
  - decouvrir collection
- [ ] Page lue / pratiquée

#### 159. Migration rôle → collection
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/collections/migration-role/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Migration rôle → collection » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Migration rôle → collection
  - migration role
- [ ] Page lue / pratiquée

#### 160. Pipeline CI matrice
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/collections/pipeline-ci/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Pipeline CI matrice » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pipeline CI matrice
  - pipeline ci
- [ ] Page lue / pratiquée

#### 161. requirements.yml multi-sources
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/collections/requirements-yml/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « requirements.yml multi-sources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - requirements.yml multi-sources
  - requirements yml
- [ ] Page lue / pratiquée

#### 162. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - execution environments
- [ ] Page lue / pratiquée

#### 163. Debug d'un EE cassé
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/debug-ee-casse/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Debug d'un EE cassé » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug d'un EE cassé
  - debug ee casse
- [ ] Page lue / pratiquée

#### 164. Construire un EE custom
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/ee-builder/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Construire un EE custom » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Construire un EE custom
  - ee builder
- [ ] Page lue / pratiquée

#### 165. Exécution en CI/CD
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/exec-playbook/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Exécution en CI/CD » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Exécution en CI/CD
  - exec playbook
- [ ] Page lue / pratiquée

#### 166. Installation et configuration
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/installation-config/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Installation et configuration » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation et configuration
  - installation config
- [ ] Page lue / pratiquée

#### 167. Inspecter un EE
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/lookup-doc/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Inspecter un EE » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Inspecter un EE
  - lookup doc
- [ ] Page lue / pratiquée

#### 168. Modes interactifs (TUI / stdout)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/modes-interactifs/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Modes interactifs (TUI / stdout) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Modes interactifs (TUI / stdout)
  - modes interactifs
- [ ] Page lue / pratiquée

#### 169. Présentation des EE
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/execution-environments/presentation/`
- **Pourquoi ici :** Collections Galaxy et Execution Environments : écosystème après les rôles. La page « Présentation des EE » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation des EE
  - presentation
- [ ] Page lue / pratiquée

#### 170. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 171. Introduction à Ansible Vault
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/ansible-vault-introduction/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « Introduction à Ansible Vault » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction à Ansible Vault
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 172. Chiffrer fichier ou variable
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/chiffrer-fichier-variable/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « Chiffrer fichier ou variable » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Chiffrer fichier ou variable
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 173. HashiCorp Vault / OpenBao
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/integration-hashicorp-vault/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « HashiCorp Vault / OpenBao » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - HashiCorp Vault / OpenBao
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 174. Passbolt (équipes)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/integration-passbolt/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « Passbolt (équipes) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Passbolt (équipes)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 175. Playbooks mixtes
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/playbooks-mixtes/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « Playbooks mixtes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Playbooks mixtes
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 176. Vault dans les rôles
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/vault-dans-roles/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « Vault dans les rôles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Vault dans les rôles
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 177. Vault-id multiples (dev/prod)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/secrets-vault/vault-id-multiples/`
- **Pourquoi ici :** Ansible Vault / secrets : obligatoire dès que le code est versionné hors lab. La page « Vault-id multiples (dev/prod) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Vault-id multiples (dev/prod)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 178. AWX : concepts et avenir
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « AWX : concepts et avenir » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - AWX : concepts et avenir
  - awx
- [ ] Page lue / pratiquée

#### 179. Administrer AWX
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/administration/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « Administrer AWX » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Administrer AWX
  - administration
- [ ] Page lue / pratiquée

#### 180. Utiliser AWX au quotidien
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/utilisation/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « Utiliser AWX au quotidien » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Utiliser AWX au quotidien
  - utilisation
- [ ] Page lue / pratiquée

#### 181. Installer avec l'operator
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/administration/installation-kubernetes-operator/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « Installer avec l'operator » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer avec l'operator
  - installation kubernetes operator
- [ ] Page lue / pratiquée

#### 182. Installer Ascender sur k3s
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/administration/installer-ascender-k3s/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « Installer Ascender sur k3s » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer Ascender sur k3s
  - installer ascender k3s
- [ ] Page lue / pratiquée

#### 183. Premières actions d'administration
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/administration/premieres-actions/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « Premières actions d'administration » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premières actions d'administration
  - premieres actions
- [ ] Page lue / pratiquée

#### 184. Premiers pas
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/awx/utilisation/premiers-pas/`
- **Pourquoi ici :** AWX : exécution collaborative après maîtrise CLI et playbooks. La page « Premiers pas » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premiers pas
  - premiers pas
- [ ] Page lue / pratiquée

**B9 — Pratiques, sécurité, troubleshooting**

#### 185. Pratiques — Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/pratiques/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Pratiques — Vue d'ensemble » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pratiques — Vue d'ensemble
  - pratiques
- [ ] Page lue / pratiquée

#### 186. ansible-pull (GitOps Edge / IoT)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/pratiques/ansible-pull-gitops/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « ansible-pull (GitOps Edge / IoT) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ansible-pull (GitOps Edge / IoT)
  - ansible pull gitops
- [ ] Page lue / pratiquée

#### 187. Build images en parallèle
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/pratiques/build-images-paralleles/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Build images en parallèle » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Build images en parallèle
  - build images paralleles
- [ ] Page lue / pratiquée

#### 188. Versionner avec Git
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/pratiques/versionner-git/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Versionner avec Git » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Versionner avec Git
  - versionner git
- [ ] Page lue / pratiquée

#### 189. Sécurité Ansible — Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/securite/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. « Sécurité Ansible — Vue d'ensemble » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Sécurité Ansible — Vue d'ensemble
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 190. Outillage — Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/outillage/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Outillage — Vue d'ensemble » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Outillage — Vue d'ensemble
  - outillage
- [ ] Page lue / pratiquée

#### 191. Extension VS Code Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/outillage/extension-vscode/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Extension VS Code Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Extension VS Code Ansible
  - extension vscode
- [ ] Page lue / pratiquée

#### 192. Steampunk Spotter
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/outillage/steampunk-spotter/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Steampunk Spotter » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Steampunk Spotter
  - steampunk spotter
- [ ] Page lue / pratiquée

#### 193. Développement — Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/developpement/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Développement — Vue d'ensemble » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Développement — Vue d'ensemble
  - developpement
- [ ] Page lue / pratiquée

#### 194. Développer des action plugins
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/developpement/action-plugins/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Développer des action plugins » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Développer des action plugins
  - action plugins
- [ ] Page lue / pratiquée

#### 195. Écrire des filter plugins
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/developpement/filter-plugins/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Écrire des filter plugins » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Écrire des filter plugins
  - filter plugins
- [ ] Page lue / pratiquée

#### 196. Développer des modules Python
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/developpement/modules-python/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Développer des modules Python » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Développer des modules Python
  - modules python
- [ ] Page lue / pratiquée

#### 197. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/troubleshooting/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - troubleshooting
- [ ] Page lue / pratiquée

#### 198. Débogueur interactif
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/troubleshooting/debugger-interactif/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Débogueur interactif » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Débogueur interactif
  - debugger interactif
- [ ] Page lue / pratiquée

#### 199. Idempotence et tuning
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/troubleshooting/idempotence-cassee/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Idempotence et tuning » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Idempotence et tuning
  - idempotence cassee
- [ ] Page lue / pratiquée

#### 200. Verbosité (-v à -vvvv)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/troubleshooting/verbosite-vvv/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Verbosité (-v à -vvvv) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Verbosité (-v à -vvvv)
  - verbosite vvv
- [ ] Page lue / pratiquée

#### 201. Changelog de la formation
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/changelog/`
- **Pourquoi ici :** Pratiques, sécu, outillage et debug Ansible. La page « Changelog de la formation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Changelog de la formation
  - changelog
- [ ] Page lue / pratiquée

**B10 — Certifications Ansible**

#### 202. Choisir sa certification
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Choisir sa certification » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Choisir sa certification
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 203. Préparer l'EX374
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/ex374/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Préparer l'EX374 » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Préparer l'EX374
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 204. Préparer l'EX467
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/ex467/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Préparer l'EX467 » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Préparer l'EX467
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 205. RHCE
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/rhce/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « RHCE » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - RHCE
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 206. Aide-mémoire RHCE
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/rhce/commandes-essentielles/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Aide-mémoire RHCE » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Aide-mémoire RHCE
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 207. Doc pendant l'examen
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/rhce/documentation-pendant-examen/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Doc pendant l'examen » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Doc pendant l'examen
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 208. Exercices RHCE
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/rhce/exercices/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Exercices RHCE » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Exercices RHCE
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 209. Workflow VS Code + Dev Container
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/ansible/certifications/rhce/workflow-vscode-devcontainer-navigator/`
- **Pourquoi ici :** Certifications Ansible : après pratique solide (pas avant les labs). « Workflow VS Code + Dev Container » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Workflow VS Code + Dev Container
  - Périmètre examen
- [ ] Page lue / pratiquée

**B12 — Alternatives (Chef, Salt, Rudder, Puppet)**
Élargir la culture config management après le track Ansible.

#### 210. Alternatives à Ansible
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/alternatives-ansible/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Alternatives à Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Alternatives à Ansible
  - alternatives ansible
- [ ] Page lue / pratiquée

#### 211. Chef
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Chef » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Chef
  - chef
- [ ] Page lue / pratiquée

#### 212. Les attributs
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/attributs/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les attributs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les attributs
  - attributs
- [ ] Page lue / pratiquée

#### 213. Exploiter Chef sans serveur
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/chef-sans-serveur/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Exploiter Chef sans serveur » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Exploiter Chef sans serveur
  - chef sans serveur
- [ ] Page lue / pratiquée

#### 214. chef-vault : secrets par nœud
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/chef-vault/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « chef-vault : secrets par nœud » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - chef-vault : secrets par nœud
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 215. ChefSpec : tests unitaires
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/chefspec/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « ChefSpec : tests unitaires » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ChefSpec : tests unitaires
  - chefspec
- [ ] Page lue / pratiquée

#### 216. CI/CD des cookbooks
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/ci-cd-cookbooks/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « CI/CD des cookbooks » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CI/CD des cookbooks
  - ci cd cookbooks
- [ ] Page lue / pratiquée

#### 217. Conformité continue
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/conformite-continue/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Conformité continue » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Conformité continue
  - conformite continue
- [ ] Page lue / pratiquée

#### 218. Cookbooks communautaires
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/cookbooks-communautaires/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Cookbooks communautaires » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cookbooks communautaires
  - cookbooks communautaires
- [ ] Page lue / pratiquée

#### 219. Cookstyle : linter
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/cookstyle/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Cookstyle : linter » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cookstyle : linter
  - cookstyle
- [ ] Page lue / pratiquée

#### 220. Les secrets avec des data bags chiffrés
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/data-bags-secrets/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les secrets avec des data bags chiffrés » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les secrets avec des data bags chiffrés
  - data bags secrets
- [ ] Page lue / pratiquée

#### 221. Déboguer Chef
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/debogage/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Déboguer Chef » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déboguer Chef
  - debogage
- [ ] Page lue / pratiquée

#### 222. Dépendances de cookbooks
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/dependances-cookbooks/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Dépendances de cookbooks » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Dépendances de cookbooks
  - dependances cookbooks
- [ ] Page lue / pratiquée

#### 223. Déployer sur une VM (knife-zero)
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/deployer-vm-knife-zero/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Déployer sur une VM (knife-zero) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déployer sur une VM (knife-zero)
  - deployer vm knife zero
- [ ] Page lue / pratiquée

#### 224. Idempotence et mode unifié
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/idempotence-mode-unifie/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Idempotence et mode unifié » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Idempotence et mode unifié
  - idempotence mode unifie
- [ ] Page lue / pratiquée

#### 225. InSpec : vérifier sur la VM
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/inspec/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « InSpec : vérifier sur la VM » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - InSpec : vérifier sur la VM
  - inspec
- [ ] Page lue / pratiquée

#### 226. Installer un serveur CINC
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/installer-cinc-server/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Installer un serveur CINC » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer un serveur CINC
  - installer cinc server
- [ ] Page lue / pratiquée

#### 227. Installer CINC Workstation
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/installer-cinc-workstation/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Installer CINC Workstation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer CINC Workstation
  - installer cinc workstation
- [ ] Page lue / pratiquée

#### 228. Test Kitchen : boucler avec verify
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/kitchen-verify/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Test Kitchen : boucler avec verify » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Test Kitchen : boucler avec verify
  - kitchen verify
- [ ] Page lue / pratiquée

#### 229. Local mode ou serveur ?
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/local-mode-ou-serveur/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Local mode ou serveur ? » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Local mode ou serveur ?
  - local mode ou serveur
- [ ] Page lue / pratiquée

#### 230. Mode pull : convergence planifiée et recherche
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/mode-pull-recherche/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Mode pull : convergence planifiée et recherche » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mode pull : convergence planifiée et recherche
  - mode pull recherche
- [ ] Page lue / pratiquée

#### 231. Notifications et ordre d'exécution
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/notifications/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Notifications et ordre d'exécution » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Notifications et ordre d'exécution
  - notifications
- [ ] Page lue / pratiquée

#### 232. Ohai et portabilité multi-distribution
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/ohai-multi-distribution/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Ohai et portabilité multi-distribution » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Ohai et portabilité multi-distribution
  - ohai multi distribution
- [ ] Page lue / pratiquée

#### 233. Survivre dans un parc Chef legacy
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/parc-legacy/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Survivre dans un parc Chef legacy » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Survivre dans un parc Chef legacy
  - parc legacy
- [ ] Page lue / pratiquée

#### 234. Mon parcours Suivi
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/parcours/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

#### 235. Quel avenir pour Chef et CINC ?
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/perennite-cinc/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Quel avenir pour Chef et CINC ? » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Quel avenir pour Chef et CINC ?
  - perennite cinc
- [ ] Page lue / pratiquée

#### 236. Policy groups : promouvoir en production
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/policy-groups-promotion/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Policy groups : promouvoir en production » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Policy groups : promouvoir en production
  - policy groups promotion
- [ ] Page lue / pratiquée

#### 237. Policyfiles : verrouiller et déployer
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/policyfiles/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Policyfiles : verrouiller et déployer » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Policyfiles : verrouiller et déployer
  - policyfiles
- [ ] Page lue / pratiquée

#### 238. Premier cookbook avec Test Kitchen
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/premier-cookbook/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Premier cookbook avec Test Kitchen » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier cookbook avec Test Kitchen
  - premier cookbook
- [ ] Page lue / pratiquée

#### 239. Recettes et DSL Ruby
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/recettes-dsl/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Recettes et DSL Ruby » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Recettes et DSL Ruby
  - recettes dsl
- [ ] Page lue / pratiquée

#### 240. Ressources personnalisées
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/ressources-personnalisees/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Ressources personnalisées » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Ressources personnalisées
  - ressources personnalisees
- [ ] Page lue / pratiquée

#### 241. Les ressources
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/ressources/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les ressources
  - ressources
- [ ] Page lue / pratiquée

#### 242. Structurer un cookbook
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/structurer-cookbook/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Structurer un cookbook » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structurer un cookbook
  - structurer cookbook
- [ ] Page lue / pratiquée

#### 243. Templates et fichiers
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/chef/templates-fichiers/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Templates et fichiers » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Templates et fichiers
  - templates fichiers
- [ ] Page lue / pratiquée

#### 244. Présentation
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Présentation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation
  - salt
- [ ] Page lue / pratiquée

#### 245. Bonnes pratiques
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/bonnes-pratiques/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Bonnes pratiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Bonnes pratiques
  - bonnes pratiques
- [ ] Page lue / pratiquée

#### 246. Projet final : une VM née conforme
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/capstone/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Projet final : une VM née conforme » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Projet final : une VM née conforme
  - capstone
- [ ] Page lue / pratiquée

#### 247. Les commandes distantes
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/commandes-distantes/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les commandes distantes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les commandes distantes
  - commandes distantes
- [ ] Page lue / pratiquée

#### 248. Découvrir Salt
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/decouvrir/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Découvrir Salt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Découvrir Salt
  - decouvrir
- [ ] Page lue / pratiquée

#### 249. Le bus d'événements
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/event-bus/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Le bus d'événements » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Le bus d'événements
  - event bus
- [ ] Page lue / pratiquée

#### 250. Gestion des fichiers
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/gestion-fichiers/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Gestion des fichiers » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des fichiers
  - gestion fichiers
- [ ] Page lue / pratiquée

#### 251. Les grains
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/grains/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les grains » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les grains
  - grains
- [ ] Page lue / pratiquée

#### 252. Jinja
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/jinja/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Jinja » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Jinja
  - jinja
- [ ] Page lue / pratiquée

#### 253. Les modules Salt
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/modules/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les modules Salt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les modules Salt
  - modules
- [ ] Page lue / pratiquée

#### 254. Orchestration
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/orchestration/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Orchestration » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Orchestration
  - orchestration
- [ ] Page lue / pratiquée

#### 255. Mon parcours Suivi
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/parcours/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

#### 256. Les pillars
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/pillars/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les pillars » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les pillars
  - pillars
- [ ] Page lue / pratiquée

#### 257. Salt en production
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/production/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Salt en production » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Salt en production
  - production
- [ ] Page lue / pratiquée

#### 258. Salt SSH
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/salt-ssh/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Salt SSH » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Salt SSH
  - salt ssh
- [ ] Page lue / pratiquée

#### 259. Gestion des secrets
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/secrets/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Gestion des secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des secrets
  - secrets
- [ ] Page lue / pratiquée

#### 260. Les states
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/salt/states/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les states » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les states
  - states
- [ ] Page lue / pratiquée

#### 261. Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Rudder
  - rudder
- [ ] Page lue / pratiquée

#### 262. Automatiser le durcissement avec Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/cis-benchmarks/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Automatiser le durcissement avec Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Automatiser le durcissement avec Rudder
  - cis benchmarks
- [ ] Page lue / pratiquée

#### 263. La conformité avec Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/compliance/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « La conformité avec Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - La conformité avec Rudder
  - compliance
- [ ] Page lue / pratiquée

#### 264. Concepts clés de Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/concepts/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Concepts clés de Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts clés de Rudder
  - concepts
- [ ] Page lue / pratiquée

#### 265. Gérer les CVE avec Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/cve/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Gérer les CVE avec Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les CVE avec Rudder
  - cve
- [ ] Page lue / pratiquée

#### 266. Installation de Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/installation/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Installation de Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation de Rudder
  - installation
- [ ] Page lue / pratiquée

#### 267. Durcissez vos serveurs avec OpenScap
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/openscap/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Durcissez vos serveurs avec OpenScap » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Durcissez vos serveurs avec OpenScap
  - openscap
- [ ] Page lue / pratiquée

#### 268. Premier cas d'usage avec Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/premier-cas-usage/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Premier cas d'usage avec Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier cas d'usage avec Rudder
  - premier cas usage
- [ ] Page lue / pratiquée

#### 269. Les campagnes de Patch avec Rudder
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/rudder/system-updates/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Les campagnes de Patch avec Rudder » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les campagnes de Patch avec Rudder
  - system updates
- [ ] Page lue / pratiquée

#### 270. Puppet
- **Lien :** `/docs/infra-as-code/gestion-de-configuration/puppet/`
- **Pourquoi ici :** Alternatives config management : culture large après Ansible (ne pas tout re-pratiquer). La page « Puppet » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Puppet
  - puppet
- [ ] Page lue / pratiquée

### Phase C — Provisionnement (Terraform puis alternatives)
Terraform en track principal : découvrir → premières infras → HCL → state → modules → environnements/HCP → AWS → certifs. Puis Terragrunt, OpenTofu, Pulumi, Packer.

**C1 — Entrée provisionnement & découvrir Terraform**

#### 271. Introduction
- **Lien :** `/docs/infra-as-code/provisionnement/`
- **Pourquoi ici :** Carte des outils de provisionnement. « Introduction » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Introduction
  - provisionnement
- [ ] Page lue / pratiquée

#### 272. Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terraform
  - terraform
- [ ] Page lue / pratiquée

#### 273. Mon parcours Suivi
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/parcours/`
- **Pourquoi ici :** Jalon parcours site Terraform. La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

#### 274. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - decouvrir
- [ ] Page lue / pratiquée

#### 275. La CLI Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/cli-terraform/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « La CLI Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - La CLI Terraform
  - cli terraform
- [ ] Page lue / pratiquée

#### 276. Déclaratif vs impératif
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/declaratif-vs-imperatif/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Déclaratif vs impératif » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déclaratif vs impératif
  - declaratif vs imperatif
- [ ] Page lue / pratiquée

#### 277. Installer Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/installer-terraform/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Installer Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer Terraform
  - installer terraform
- [ ] Page lue / pratiquée

#### 278. Présentation de Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/presentation-terraform/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Présentation de Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation de Terraform
  - presentation terraform
- [ ] Page lue / pratiquée

#### 279. Providers, resources, data sources
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/providers-resources-data-sources/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Providers, resources, data sources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Providers, resources, data sources
  - providers resources data sources
- [ ] Page lue / pratiquée

#### 280. Quiz Découvrir Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/quiz/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). « Quiz Découvrir Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Découvrir Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 281. Structure d'un projet
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/structure-projet-terraform/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Structure d'un projet » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structure d'un projet
  - structure projet terraform
- [ ] Page lue / pratiquée

#### 282. Terraform vs OpenTofu
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/terraform-vs-opentofu/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Terraform vs OpenTofu » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terraform vs OpenTofu
  - terraform vs opentofu
- [ ] Page lue / pratiquée

#### 283. Le workflow Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/decouvrir/workflow-terraform/`
- **Pourquoi ici :** Découverte Terraform : provisionnement déclaratif après fondamentaux IaC (+ Ansible utile). La page « Le workflow Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Le workflow Terraform
  - workflow terraform
- [ ] Page lue / pratiquée

**C2 — Premières infrastructures**

#### 284. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - premieres infras
- [ ] Page lue / pratiquée

#### 285. Provider Ansible
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/ansible/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Provider Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Provider Ansible
  - ansible
- [ ] Page lue / pratiquée

#### 286. Déboguer un apply
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/debug-apply/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Déboguer un apply » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déboguer un apply
  - debug apply
- [ ] Page lue / pratiquée

#### 287. Détruire proprement
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/destroy-propre/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Détruire proprement » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Détruire proprement
  - destroy propre
- [ ] Page lue / pratiquée

#### 288. Première infrastructure
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/premiere-infrastructure/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Première infrastructure » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Première infrastructure
  - premiere infrastructure
- [ ] Page lue / pratiquée

#### 289. Quiz Premières infrastructures Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/quiz/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. « Quiz Premières infrastructures Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Premières infrastructures Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 290. Créer un réseau virtuel
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/reseau-virtuel/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Créer un réseau virtuel » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Créer un réseau virtuel
  - reseau virtuel
- [ ] Page lue / pratiquée

#### 291. Variables et outputs
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/variables-outputs/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Variables et outputs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables et outputs
  - variables outputs
- [ ] Page lue / pratiquée

#### 292. Créer une VM avec libvirt
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/premieres-infras/vm-libvirt/`
- **Pourquoi ici :** Premières infras : workflow init / plan / apply. La page « Créer une VM avec libvirt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Créer une VM avec libvirt
  - vm libvirt
- [ ] Page lue / pratiquée

**C3 — Écrire du code HCL**

#### 293. Vue d'ensemble
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - ecrire code
- [ ] Page lue / pratiquée

#### 294. Blocs dynamiques
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/blocs-dynamiques/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Blocs dynamiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Blocs dynamiques
  - blocs dynamiques
- [ ] Page lue / pratiquée

#### 295. Boucles for : transformer les collections
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/boucles-for-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Boucles for : transformer les collections » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Boucles for : transformer les collections
  - boucles for terraform
- [ ] Page lue / pratiquée

#### 296. Conditions et ternaires
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/conditions-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Conditions et ternaires » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Conditions et ternaires
  - conditions terraform
- [ ] Page lue / pratiquée

#### 297. count : N ressources identiques
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/count-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « count : N ressources identiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - count : N ressources identiques
  - count terraform
- [ ] Page lue / pratiquée

#### 298. Les data sources
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/data-sources/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Les data sources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les data sources
  - data sources
- [ ] Page lue / pratiquée

#### 299. Déclarer des ressources
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/declarer-ressources/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Déclarer des ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déclarer des ressources
  - declarer ressources
- [ ] Page lue / pratiquée

#### 300. depends_on : dépendances explicites
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/depends-on/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « depends_on : dépendances explicites » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - depends_on : dépendances explicites
  - depends on
- [ ] Page lue / pratiquée

#### 301. Expressions Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/expressions-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Expressions Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Expressions Terraform
  - expressions terraform
- [ ] Page lue / pratiquée

#### 302. Fichiers tfvars
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/fichiers-tfvars/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Fichiers tfvars » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Fichiers tfvars
  - fichiers tfvars
- [ ] Page lue / pratiquée

#### 303. Les fonctions Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/fonctions-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Les fonctions Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les fonctions Terraform
  - fonctions terraform
- [ ] Page lue / pratiquée

#### 304. for_each : instances nommées
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/for-each-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « for_each : instances nommées » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - for_each : instances nommées
  - for each terraform
- [ ] Page lue / pratiquée

#### 305. lifecycle : cycle de vie des ressources
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/lifecycle-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « lifecycle : cycle de vie des ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - lifecycle : cycle de vie des ressources
  - lifecycle terraform
- [ ] Page lue / pratiquée

#### 306. Locals Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/locals-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Locals Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Locals Terraform
  - locals terraform
- [ ] Page lue / pratiquée

#### 307. Outputs Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/outputs-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Outputs Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Outputs Terraform
  - outputs terraform
- [ ] Page lue / pratiquée

#### 308. Les providers Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/providers-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Les providers Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les providers Terraform
  - providers terraform
- [ ] Page lue / pratiquée

#### 309. Quiz Écrire du code Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/quiz/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. « Quiz Écrire du code Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Écrire du code Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 310. Style guide Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/style-guide-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Style guide Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Style guide Terraform
  - style guide terraform
- [ ] Page lue / pratiquée

#### 311. Variables Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/variables-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Variables Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables Terraform
  - variables terraform
- [ ] Page lue / pratiquée

#### 312. Contraintes de version Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/version-constraints-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Contraintes de version Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Contraintes de version Terraform
  - version constraints terraform
- [ ] Page lue / pratiquée

#### 313. Ressources éphémères
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/gestion-donnees-sensibles/ephemeral-values/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Ressources éphémères » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Ressources éphémères
  - ephemeral values
- [ ] Page lue / pratiquée

#### 314. sensitive : masquer les valeurs
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/gestion-donnees-sensibles/sensitive-terraform/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « sensitive : masquer les valeurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - sensitive : masquer les valeurs
  - sensitive terraform
- [ ] Page lue / pratiquée

#### 315. Arguments write-only
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/ecrire-code/gestion-donnees-sensibles/write-only-arguments/`
- **Pourquoi ici :** Écrire du HCL : variables, expressions, meta-arguments. La page « Arguments write-only » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Arguments write-only
  - write only arguments
- [ ] Page lue / pratiquée

**C4 — State**

#### 316. Gérer le state
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « Gérer le state » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer le state
  - state
- [ ] Page lue / pratiquée

#### 317. Backends Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/backends-terraform/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « Backends Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Backends Terraform
  - backends terraform
- [ ] Page lue / pratiquée

#### 318. Comprendre le state
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/comprendre-state/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « Comprendre le state » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Comprendre le state
  - comprendre state
- [ ] Page lue / pratiquée

#### 319. Diagnostiquer le state
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/diagnostiquer-state/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « Diagnostiquer le state » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Diagnostiquer le state
  - diagnostiquer state
- [ ] Page lue / pratiquée

#### 320. Quiz Gérer le state Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/quiz/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. « Quiz Gérer le state Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Gérer le state Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 321. Sauvegarder et restaurer
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/sauvegarder-restaurer-state/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « Sauvegarder et restaurer » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sauvegarder et restaurer
  - sauvegarder restaurer state
- [ ] Page lue / pratiquée

#### 322. terraform state list
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/terraform-state-list/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « terraform state list » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - terraform state list
  - terraform state list
- [ ] Page lue / pratiquée

#### 323. terraform state mv
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/terraform-state-mv/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « terraform state mv » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - terraform state mv
  - terraform state mv
- [ ] Page lue / pratiquée

#### 324. terraform state rm
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/terraform-state-rm/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « terraform state rm » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - terraform state rm
  - terraform state rm
- [ ] Page lue / pratiquée

#### 325. terraform state show
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/terraform-state-show/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « terraform state show » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - terraform state show
  - terraform state show
- [ ] Page lue / pratiquée

#### 326. Verrouillage du state
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/state/verrouillage-state/`
- **Pourquoi ici :** State : backend, lock, drift — cœur opérationnel avant de scaler. La page « Verrouillage du state » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Verrouillage du state
  - verrouillage state
- [ ] Page lue / pratiquée

**C5 — Modules Terraform**
Création, composition et registry de modules (volume modéré : une seule sous-phase).

#### 327. Vue d'ensemble modules
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). Vue d'ensemble / jalon « Vue d'ensemble modules » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble modules
  - modules
- [ ] Page lue / pratiquée

#### 328. Anti-patterns
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/anti-patterns-modules/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Anti-patterns » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Anti-patterns
  - anti patterns modules
- [ ] Page lue / pratiquée

#### 329. Bonnes pratiques
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/bonnes-pratiques-modules/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Bonnes pratiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Bonnes pratiques
  - bonnes pratiques modules
- [ ] Page lue / pratiquée

#### 330. Créer un module
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/creation-modules/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Créer un module » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Créer un module
  - creation modules
- [ ] Page lue / pratiquée

#### 331. Module local partagé
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/module-local/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Module local partagé » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Module local partagé
  - module local
- [ ] Page lue / pratiquée

#### 332. Module du Registry
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/module-registry/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Module du Registry » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Module du Registry
  - module registry
- [ ] Page lue / pratiquée

#### 333. Quiz Créer des modules Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/quiz/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). « Quiz Créer des modules Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Créer des modules Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 334. Structure d'un module
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/structure-module/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Structure d'un module » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structure d'un module
  - structure module
- [ ] Page lue / pratiquée

#### 335. Tester un module
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/tester-module/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Tester un module » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tester un module
  - tester module
- [ ] Page lue / pratiquée

#### 336. Variables et outputs
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/variables-outputs-module/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Variables et outputs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables et outputs
  - variables outputs module
- [ ] Page lue / pratiquée

#### 337. Versionner ses modules
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/modules/versionner-modules/`
- **Pourquoi ici :** Modules Terraform : créer, composer, publier (tronc). La page « Versionner ses modules » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Versionner ses modules
  - versionner modules
- [ ] Page lue / pratiquée

**C6 — Environnements & HCP Terraform**

#### 338. Gérer les environnements
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Gérer les environnements » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les environnements
  - environnements
- [ ] Page lue / pratiquée

#### 339. Monorepo vs repo par stack
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/monorepo-vs-repo-par-stack/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Monorepo vs repo par stack » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Monorepo vs repo par stack
  - monorepo vs repo par stack
- [ ] Page lue / pratiquée

#### 340. Organiser un dépôt Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/organiser-repo-terraform/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Organiser un dépôt Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Organiser un dépôt Terraform
  - organiser repo terraform
- [ ] Page lue / pratiquée

#### 341. Quand utiliser les workspaces
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/quand-utiliser-workspaces/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Quand utiliser les workspaces » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Quand utiliser les workspaces
  - quand utiliser workspaces
- [ ] Page lue / pratiquée

#### 342. Quiz Organiser les environnements Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/quiz/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. « Quiz Organiser les environnements Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz Organiser les environnements Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 343. Séparer dev, staging et prod
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/separer-environnements/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Séparer dev, staging et prod » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Séparer dev, staging et prod
  - separer environnements
- [ ] Page lue / pratiquée

#### 344. Variables par environnement
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/variables-par-environnement/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Variables par environnement » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables par environnement
  - variables par environnement
- [ ] Page lue / pratiquée

#### 345. Les Workspaces Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/environnements/workspace/`
- **Pourquoi ici :** Environnements multi-stages et collaboration. La page « Les Workspaces Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Workspaces Terraform
  - workspace
- [ ] Page lue / pratiquée

#### 346. Introduction
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - hcp terraform
- [ ] Page lue / pratiquée

#### 347. Credentials et partage
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/credentials-partage/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Credentials et partage » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Credentials et partage
  - credentials partage
- [ ] Page lue / pratiquée

#### 348. Policy as Code
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/policy-as-code/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Policy as Code » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Policy as Code
  - policy as code
- [ ] Page lue / pratiquée

#### 349. Découvrir HCP Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/presentation-hcp-terraform/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Découvrir HCP Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Découvrir HCP Terraform
  - presentation hcp terraform
- [ ] Page lue / pratiquée

#### 350. Projects et équipes
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/projects-equipes/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Projects et équipes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Projects et équipes
  - projects equipes
- [ ] Page lue / pratiquée

#### 351. Quiz HCP Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/quiz/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. « Quiz HCP Terraform » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz HCP Terraform
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 352. Remote runs
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/remote-runs/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Remote runs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Remote runs
  - remote runs
- [ ] Page lue / pratiquée

#### 353. Variables et variable sets
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/variable-sets/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Variables et variable sets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables et variable sets
  - variable sets
- [ ] Page lue / pratiquée

#### 354. Workspaces HCP
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/hcp-terraform/workspaces-hcp/`
- **Pourquoi ici :** HCP Terraform / Cloud : remote runs après maîtrise CLI. La page « Workspaces HCP » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Workspaces HCP
  - workspaces hcp
- [ ] Page lue / pratiquée

**C7 — Cas AWS**

#### 355. De libvirt à AWS
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « De libvirt à AWS » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - De libvirt à AWS
  - aws
- [ ] Page lue / pratiquée

#### 356. Backend S3 et remote state
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/backend-s3-remote-state/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « Backend S3 et remote state » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Backend S3 et remote state
  - backend s3 remote state
- [ ] Page lue / pratiquée

#### 357. IAM : rôle, policy, instance profile
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/iam-role-policy-instance-profile/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « IAM : rôle, policy, instance profile » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - IAM : rôle, policy, instance profile
  - iam role policy instance profile
- [ ] Page lue / pratiquée

#### 358. Import, moved, drift
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/import-moved-drift/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « Import, moved, drift » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Import, moved, drift
  - import moved drift
- [ ] Page lue / pratiquée

#### 359. Launch template et autoscaling
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/launch-template-autoscaling/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « Launch template et autoscaling » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Launch template et autoscaling
  - launch template autoscaling
- [ ] Page lue / pratiquée

#### 360. Provider AWS et première EC2
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/provider-aws-premiere-ec2/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « Provider AWS et première EC2 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Provider AWS et première EC2
  - provider aws premiere ec2
- [ ] Page lue / pratiquée

#### 361. AMI, subnet, security groups
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/aws/sg-subnet-instance/`
- **Pourquoi ici :** Cas AWS : après provider et state maîtrisés. La page « AMI, subnet, security groups » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - AMI, subnet, security groups
  - sg subnet instance
- [ ] Page lue / pratiquée

**C8 — Certifications Terraform**

#### 362. Choisir sa certification
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/`
- **Pourquoi ici :** Certifications Terraform. « Choisir sa certification » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Choisir sa certification
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 363. Associate
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/associate/`
- **Pourquoi ici :** Certifications Terraform. « Associate » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Associate
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 364. Professional
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/professional/`
- **Pourquoi ici :** Certifications Terraform. « Professional » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Professional
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 365. Commandes essentielles
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/associate/commandes-essentielles/`
- **Pourquoi ici :** Certifications Terraform. « Commandes essentielles » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Commandes essentielles
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 366. Exercices QCM
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/associate/exercices/`
- **Pourquoi ici :** Certifications Terraform. « Exercices QCM » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Exercices QCM
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 367. Commandes essentielles
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/professional/commandes-essentielles/`
- **Pourquoi ici :** Certifications Terraform. « Commandes essentielles » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Commandes essentielles
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 368. Exercices lab
- **Lien :** `/docs/infra-as-code/provisionnement/terraform/certifications/professional/exercices/`
- **Pourquoi ici :** Certifications Terraform. « Exercices lab » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Exercices lab
  - Périmètre examen
- [ ] Page lue / pratiquée

**C10 — Terragrunt, OpenTofu, Pulumi, Packer & autres**
Sujets avancés / alternatives de provisionnement après le track Terraform.

#### 369. Terragrunt
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Terragrunt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terragrunt
  - terragrunt
- [ ] Page lue / pratiquée

#### 370. Catalogues et scaffold
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/catalogues-et-scaffold/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Catalogues et scaffold » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Catalogues et scaffold
  - catalogues et scaffold
- [ ] Page lue / pratiquée

#### 371. Centraliser backend et provider
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/centraliser-backend-provider/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Centraliser backend et provider » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Centraliser backend et provider
  - centraliser backend provider
- [ ] Page lue / pratiquée

#### 372. Debug cache, hooks et logs
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/debug-cache-hooks-logs/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Debug cache, hooks et logs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug cache, hooks et logs
  - debug cache hooks logs
- [ ] Page lue / pratiquée

#### 373. Dependances et mock_outputs
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/dependances-et-mock-outputs/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Dependances et mock_outputs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Dependances et mock_outputs
  - dependances et mock outputs
- [ ] Page lue / pratiquée

#### 374. Installer Terragrunt
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/installer-terragrunt/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Installer Terragrunt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer Terragrunt
  - installer terragrunt
- [ ] Page lue / pratiquée

#### 375. Pourquoi utiliser Terragrunt
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/pourquoi-utiliser-terragrunt/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Pourquoi utiliser Terragrunt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pourquoi utiliser Terragrunt
  - pourquoi utiliser terragrunt
- [ ] Page lue / pratiquée

#### 376. Premier projet Terragrunt
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/premier-projet-terragrunt/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Premier projet Terragrunt » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier projet Terragrunt
  - premier projet terragrunt
- [ ] Page lue / pratiquée

#### 377. Run queue et filtres
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/run-all-run-queue-filtres/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Run queue et filtres » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Run queue et filtres
  - run all run queue filtres
- [ ] Page lue / pratiquée

#### 378. Stacks implicites ou explicites
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/stacks-implicites-explicites/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Stacks implicites ou explicites » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Stacks implicites ou explicites
  - stacks implicites explicites
- [ ] Page lue / pratiquée

#### 379. Structurer un live repo
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/structurer-live-repo/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Structurer un live repo » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structurer un live repo
  - structurer live repo
- [ ] Page lue / pratiquée

#### 380. Terragrunt en CI/CD
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/terragrunt-cicd/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « Terragrunt en CI/CD » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terragrunt en CI/CD
  - terragrunt cicd
- [ ] Page lue / pratiquée

#### 381. terragrunt.stack.hcl
- **Lien :** `/docs/infra-as-code/provisionnement/terragrunt/terragrunt-stack-hcl/`
- **Pourquoi ici :** Terragrunt : factorisation multi-env après aisance Terraform. La page « terragrunt.stack.hcl » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - terragrunt.stack.hcl
  - terragrunt stack hcl
- [ ] Page lue / pratiquée

#### 382. OpenTofu
- **Lien :** `/docs/infra-as-code/provisionnement/opentofu/`
- **Pourquoi ici :** OpenTofu : fork compatible, après le tronc Terraform. La page « OpenTofu » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - OpenTofu
  - opentofu
- [ ] Page lue / pratiquée

#### 383. Chiffrer state et plans
- **Lien :** `/docs/infra-as-code/provisionnement/opentofu/chiffrer-state-plans/`
- **Pourquoi ici :** OpenTofu : fork compatible, après le tronc Terraform. La page « Chiffrer state et plans » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Chiffrer state et plans
  - chiffrer state plans
- [ ] Page lue / pratiquée

#### 384. Migrer depuis Terraform
- **Lien :** `/docs/infra-as-code/provisionnement/opentofu/migrer-depuis-terraform/`
- **Pourquoi ici :** OpenTofu : fork compatible, après le tronc Terraform. La page « Migrer depuis Terraform » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Migrer depuis Terraform
  - migrer depuis terraform
- [ ] Page lue / pratiquée

#### 385. Refactor, import et removed
- **Lien :** `/docs/infra-as-code/provisionnement/opentofu/refactor-import-moved-removed/`
- **Pourquoi ici :** OpenTofu : fork compatible, après le tronc Terraform. La page « Refactor, import et removed » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Refactor, import et removed
  - refactor import moved removed
- [ ] Page lue / pratiquée

#### 386. Registry, CLI et OCI
- **Lien :** `/docs/infra-as-code/provisionnement/opentofu/registry-cli-oci/`
- **Pourquoi ici :** OpenTofu : fork compatible, après le tronc Terraform. La page « Registry, CLI et OCI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Registry, CLI et OCI
  - registry cli oci
- [ ] Page lue / pratiquée

#### 387. Variables dans backend et modules
- **Lien :** `/docs/infra-as-code/provisionnement/opentofu/variables-backend-sources-modules/`
- **Pourquoi ici :** OpenTofu : fork compatible, après le tronc Terraform. La page « Variables dans backend et modules » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables dans backend et modules
  - variables backend sources modules
- [ ] Page lue / pratiquée

#### 388. Pulumi
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Pulumi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pulumi
  - pulumi
- [ ] Page lue / pratiquée

#### 389. Concepts, stacks et state
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/concepts-stacks-state/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Concepts, stacks et state » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts, stacks et state
  - concepts stacks state
- [ ] Page lue / pratiquée

#### 390. Inputs, outputs, config et secrets
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/inputs-outputs-config-secrets/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Inputs, outputs, config et secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Inputs, outputs, config et secrets
  - inputs outputs config secrets
- [ ] Page lue / pratiquée

#### 391. Premiere VM KVM
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/premiere-stack-kvm/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Premiere VM KVM » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premiere VM KVM
  - premiere stack kvm
- [ ] Page lue / pratiquée

#### 392. Preparer le backend local
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/preparer-backend-local/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Preparer le backend local » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Preparer le backend local
  - preparer backend local
- [ ] Page lue / pratiquée

#### 393. Preview, tests et CI
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/preview-tests-ci/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Preview, tests et CI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Preview, tests et CI
  - preview tests ci
- [ ] Page lue / pratiquée

#### 394. Securiser Pulumi en equipe
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/securiser-pulumi/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. « Securiser Pulumi en equipe » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Securiser Pulumi en equipe
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 395. Structure de projet et composants
- **Lien :** `/docs/infra-as-code/provisionnement/pulumi/structure-projet-composants/`
- **Pourquoi ici :** Pulumi : IaC en langages généraux — comparaison. La page « Structure de projet et composants » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Structure de projet et composants
  - structure projet composants
- [ ] Page lue / pratiquée

#### 396. Packer
- **Lien :** `/docs/infra-as-code/provisionnement/packer/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Packer » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Packer
  - packer
- [ ] Page lue / pratiquée

#### 397. Bonnes pratiques
- **Lien :** `/docs/infra-as-code/provisionnement/packer/bonnes-pratiques/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Bonnes pratiques » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Bonnes pratiques
  - bonnes pratiques
- [ ] Page lue / pratiquée

#### 398. Concepts et architecture
- **Lien :** `/docs/infra-as-code/provisionnement/packer/concepts/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Concepts et architecture » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts et architecture
  - concepts
- [ ] Page lue / pratiquée

#### 399. Templates HCL2
- **Lien :** `/docs/infra-as-code/provisionnement/packer/hcl-templates/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Templates HCL2 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Templates HCL2
  - hcl templates
- [ ] Page lue / pratiquée

#### 400. Installation
- **Lien :** `/docs/infra-as-code/provisionnement/packer/installation/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation
  - installation
- [ ] Page lue / pratiquée

#### 401. Mon parcours Suivi
- **Lien :** `/docs/infra-as-code/provisionnement/packer/parcours/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

#### 402. Post-processors
- **Lien :** `/docs/infra-as-code/provisionnement/packer/post-processors/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Post-processors » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Post-processors
  - post processors
- [ ] Page lue / pratiquée

#### 403. Provisioners
- **Lien :** `/docs/infra-as-code/provisionnement/packer/provisioners/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Provisioners » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Provisioners
  - provisioners
- [ ] Page lue / pratiquée

#### 404. Variables et fonctions
- **Lien :** `/docs/infra-as-code/provisionnement/packer/variables-fonctions/`
- **Pourquoi ici :** Packer : golden images (lien utile avec virtualisation / conteneurs). La page « Variables et fonctions » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Variables et fonctions
  - variables fonctions
- [ ] Page lue / pratiquée

#### 405. CloudFormation
- **Lien :** `/docs/infra-as-code/provisionnement/cloudformation/`
- **Pourquoi ici :** Autres outils de provisionnement (culture, hors track principal). La page « CloudFormation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CloudFormation
  - cloudformation
- [ ] Page lue / pratiquée

#### 406. Vagrant
- **Lien :** `/docs/infra-as-code/provisionnement/vagrant/`
- **Pourquoi ici :** Autres outils de provisionnement (culture, hors track principal). La page « Vagrant » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Vagrant
  - vagrant
- [ ] Page lue / pratiquée

## Compétences acquises
- Expliquer idempotence, dérive et séparation provisionnement / configuration
- Écrire et exécuter des playbooks Ansible avec inventaires et rôles testés
- Gérer secrets (Vault) et industrialiser via collections / EE / AWX
- Provisionner avec Terraform (HCL, state, modules, multi-env)
- Situer Terragrunt, OpenTofu, Pulumi et Packer dans une stack IaC

## Checklist globale
- [ ] Phase A — Fondamentaux IaC terminée
- [ ] Phase B — Gestion de configuration (Ansible d'abord) terminée
- [ ] Phase C — Provisionnement (Terraform puis alternatives) terminée
- [ ] Dossier validé
