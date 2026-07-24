# Parcours — 07-administrer-des-services

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/services/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier

Administrer des services, c’est faire tourner durablement ce dont les applications dépendent : web, bases de données, identité, stockage, exposition réseau, ordonnancement et forges DevOps. Ce dossier transforme un Linux correctement administré (`02`) et un réseau compris (`03`) en plateforme opérationnelle.

L’objectif n’est pas d’installer tous les logiciels listés, mais de savoir **choisir, installer, sécuriser, sauvegarder et exposer** une pile minimale crédible (ex. Nginx + PostgreSQL + Keycloak + MinIO + Traefik), puis d’étendre vers forges Git et ordonnanceurs.

Ces compétences alimentent la suite : virtualisation/conteneurs (`08`/`10`), IaC (`09`) pour reproduire les services, observabilité (`11`) pour les surveiller, cloud (`12`) pour les équivalents managés.

## Prérequis

- Dossiers locaux : `02-administration-linux`, `03-reseaux`
- Concepts : systemd, paquets, firewall de base, DNS/HTTP/TLS, SSH, notions de ports et reverse-proxy
- Utile en parallèle : SQL du dossier `04` (autres-langages) avant d’administrer PostgreSQL/MySQL

## Logique pédagogique (pourquoi cet ordre)

Le site présente les services par familles sans imposer un ordre d’apprentissage. Ici : **web → BDD → identité → stockage → réseau de services → scheduling → tooling DevOps**. On expose d’abord quelque chose (web), on y branche des données, on authentifie, on stocke, puis on durcit l’exposition (HAProxy/Traefik/DNS), avant d’automatiser jobs et forges.

PostgreSQL est priorisé avant MySQL comme premier SGBD pédagogique (écosystème DevOps / cloud-native). Les forges (Gitea → Forgejo → GitLab) viennent en fin : elles agrègent déjà web, BDD et runners.

## Ordre de lecture conseillé

### Phase A — Services web
Servir du HTTP localement : Nginx (référence), Caddy (TLS facile), Apache (héritage).

#### 1. Administrer des services — vue d’ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/services/](https://blog.stephane-robert.info/docs/services/)
- **Pourquoi ici :** Dans la phase « Services web », « Svc » (services) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Svc
  - Où ça s’applique dans un flux DevOps (services)
  - Commandes / réglages à retester pour `services`
- [ ] Page lue / pratiquée

#### 2. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/web/](https://blog.stephane-robert.info/docs/services/web/)
- **Pourquoi ici :** Dans la phase « Services web », « Introduction » (web) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (web)
  - Commandes / réglages à retester pour `web`
- [ ] Page lue / pratiquée

#### 3. Nginx
- **Lien :** [https://blog.stephane-robert.info/docs/services/web/nginx/](https://blog.stephane-robert.info/docs/services/web/nginx/)
- **Pourquoi ici :** Dans la phase « Services web », « Nginx » (web › nginx) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Nginx
  - Où ça s’applique dans un flux DevOps (web)
  - Commandes / réglages à retester pour `nginx`
- [ ] Page lue / pratiquée

#### 4. Caddy Web Server
- **Lien :** [https://blog.stephane-robert.info/docs/services/web/caddy/](https://blog.stephane-robert.info/docs/services/web/caddy/)
- **Pourquoi ici :** Dans la phase « Services web », « Caddy Web Server » (web › caddy) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Caddy Web Server
  - Où ça s’applique dans un flux DevOps (web)
  - Commandes / réglages à retester pour `caddy`
- [ ] Page lue / pratiquée

#### 5. httpd
- **Lien :** [https://blog.stephane-robert.info/docs/services/web/apache/](https://blog.stephane-robert.info/docs/services/web/apache/)
- **Pourquoi ici :** Dans la phase « Services web », « httpd » (web › apache) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : httpd
  - Où ça s’applique dans un flux DevOps (web)
  - Commandes / réglages à retester pour `apache`
- [ ] Page lue / pratiquée

### Phase B — Bases de données
Données persistantes : fondamentaux relationnels, PostgreSQL en profondeur, puis MySQL, SQLite et intro vectorielle.

#### 6. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/](https://blog.stephane-robert.info/docs/services/bdd/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Introduction » (bdd) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `bdd`
- [ ] Page lue / pratiquée

#### 7. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Introduction » (bdd › relationnelles) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `relationnelles`
- [ ] Page lue / pratiquée

#### 8. PostgreSQL
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/)
- **Pourquoi ici :** Dans la phase « Bases de données », « PostgreSQL » (bdd › relationnelles › postgresql) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : PostgreSQL
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `postgresql`
- [ ] Page lue / pratiquée

#### 9. Découvrir PostgreSQL
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/decouvrir-postgresql/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/decouvrir-postgresql/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Découvrir PostgreSQL » (bdd › relationnelles › postgresql › decouvrir-postgresql) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Découvrir PostgreSQL
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `decouvrir-postgresql`
- [ ] Page lue / pratiquée

#### 10. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/installation/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/installation/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Installation » (bdd › relationnelles › postgresql › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 11. Prise en main de psql
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/prise-en-main-psql/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/prise-en-main-psql/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Prise en main de psql » (bdd › relationnelles › postgresql › prise-en-main-psql) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Prise en main de psql
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `prise-en-main-psql`
- [ ] Page lue / pratiquée

#### 12. Configuration
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/configuration/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/configuration/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Configuration » (bdd › relationnelles › postgresql › configuration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configuration
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `configuration`
- [ ] Page lue / pratiquée

#### 13. Sécurisation
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/securisation/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/securisation/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Sécurisation » (bdd › relationnelles › postgresql › securisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécurisation
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `securisation`
- [ ] Page lue / pratiquée

#### 14. Sauvegarde et restauration
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/sauvegarde-restauration/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/sauvegarde-restauration/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Sauvegarde et restauration » (bdd › relationnelles › postgresql › sauvegarde-restauration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegarde et restauration
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `sauvegarde-restauration`
- [ ] Page lue / pratiquée

#### 15. Réplication
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/replication/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/replication/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Réplication » (bdd › relationnelles › postgresql › replication) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Réplication
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `replication`
- [ ] Page lue / pratiquée

#### 16. Monitoring et maintenance
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/monitoring-maintenance/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/postgresql/monitoring-maintenance/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Monitoring et maintenance » (bdd › relationnelles › postgresql › monitoring-maintenance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Monitoring et maintenance
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `monitoring-maintenance`
- [ ] Page lue / pratiquée

#### 17. MySQL
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/)
- **Pourquoi ici :** Dans la phase « Bases de données », « MySQL » (bdd › relationnelles › mysql) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : MySQL
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `mysql`
- [ ] Page lue / pratiquée

#### 18. Découvrir MySQL
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/decouvrir-mysql/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/decouvrir-mysql/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Découvrir MySQL » (bdd › relationnelles › mysql › decouvrir-mysql) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Découvrir MySQL
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `decouvrir-mysql`
- [ ] Page lue / pratiquée

#### 19. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/installation/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/installation/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Installation » (bdd › relationnelles › mysql › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 20. Prise en main de mysql
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/prise-en-main-mysql-cli/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/prise-en-main-mysql-cli/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Prise en main de mysql » (bdd › relationnelles › mysql › prise-en-main-mysql-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Prise en main de mysql
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `prise-en-main-mysql-cli`
- [ ] Page lue / pratiquée

#### 21. Configuration
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/configuration/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/configuration/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Configuration » (bdd › relationnelles › mysql › configuration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configuration
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `configuration`
- [ ] Page lue / pratiquée

#### 22. Sécurisation
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/securisation/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/securisation/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Sécurisation » (bdd › relationnelles › mysql › securisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécurisation
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `securisation`
- [ ] Page lue / pratiquée

#### 23. Sauvegarde et restauration
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/sauvegarde-restauration/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/sauvegarde-restauration/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Sauvegarde et restauration » (bdd › relationnelles › mysql › sauvegarde-restauration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegarde et restauration
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `sauvegarde-restauration`
- [ ] Page lue / pratiquée

#### 24. Réplication
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/replication/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/replication/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Réplication » (bdd › relationnelles › mysql › replication) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Réplication
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `replication`
- [ ] Page lue / pratiquée

#### 25. Monitoring et maintenance
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/monitoring-maintenance/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/mysql/monitoring-maintenance/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Monitoring et maintenance » (bdd › relationnelles › mysql › monitoring-maintenance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Monitoring et maintenance
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `monitoring-maintenance`
- [ ] Page lue / pratiquée

#### 26. SQLite
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/relationnelles/sqlite/](https://blog.stephane-robert.info/docs/services/bdd/relationnelles/sqlite/)
- **Pourquoi ici :** Dans la phase « Bases de données », « SQLite » (bdd › relationnelles › sqlite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SQLite
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `sqlite`
- [ ] Page lue / pratiquée

#### 27. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/bdd/vectorielles/](https://blog.stephane-robert.info/docs/services/bdd/vectorielles/)
- **Pourquoi ici :** Dans la phase « Bases de données », « Introduction » (bdd › vectorielles) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (bdd)
  - Commandes / réglages à retester pour `vectorielles`
- [ ] Page lue / pratiquée

### Phase C — Identité et accès
Qui accède à quoi : IAM, protocoles (OAuth2/OIDC/SAML), puis Keycloak / authentik / LLDAP.

#### 28. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/](https://blog.stephane-robert.info/docs/services/identite/)
- **Pourquoi ici :** Dans la phase « Identité », « Introduction » (identite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `identite`
- [ ] Page lue / pratiquée

#### 29. Bases de l'IAM
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/bases-iam/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/bases-iam/)
- **Pourquoi ici :** Dans la phase « Identité », « Bases de l'IAM » (identite › fondamentaux › bases-iam) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Bases de l'IAM
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `bases-iam`
- [ ] Page lue / pratiquée

#### 30. Autorisation (RBAC, ABAC, ReBAC)
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/autorisation/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/autorisation/)
- **Pourquoi ici :** Dans la phase « Identité », « Autorisation (RBAC, ABAC, ReBAC) » (identite › fondamentaux › autorisation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Autorisation (RBAC, ABAC, ReBAC)
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `autorisation`
- [ ] Page lue / pratiquée

#### 31. LDAP et annuaires
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/ldap-annuaires/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/ldap-annuaires/)
- **Pourquoi ici :** Dans la phase « Identité », « LDAP et annuaires » (identite › fondamentaux › ldap-annuaires) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : LDAP et annuaires
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `ldap-annuaires`
- [ ] Page lue / pratiquée

#### 32. OAuth 2.0
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/oauth2/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/oauth2/)
- **Pourquoi ici :** Dans la phase « Identité », « OAuth 2.0 » (identite › fondamentaux › oauth2) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OAuth 2.0
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `oauth2`
- [ ] Page lue / pratiquée

#### 33. OpenID Connect
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/oidc/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/oidc/)
- **Pourquoi ici :** Dans la phase « Identité », « OpenID Connect » (identite › fondamentaux › oidc) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OpenID Connect
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `oidc`
- [ ] Page lue / pratiquée

#### 34. SAML 2.0
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/saml/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/saml/)
- **Pourquoi ici :** Dans la phase « Identité », « SAML 2.0 » (identite › fondamentaux › saml) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SAML 2.0
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `saml`
- [ ] Page lue / pratiquée

#### 35. SCIM
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/scim/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/scim/)
- **Pourquoi ici :** Dans la phase « Identité », « SCIM » (identite › fondamentaux › scim) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SCIM
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `scim`
- [ ] Page lue / pratiquée

#### 36. MFA et WebAuthn
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/mfa-webauthn/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/mfa-webauthn/)
- **Pourquoi ici :** Dans la phase « Identité », « MFA et WebAuthn » (identite › fondamentaux › mfa-webauthn) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : MFA et WebAuthn
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `mfa-webauthn`
- [ ] Page lue / pratiquée

#### 37. Sécurité opérationnelle
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/fondamentaux/securite-operationnelle/](https://blog.stephane-robert.info/docs/services/identite/fondamentaux/securite-operationnelle/)
- **Pourquoi ici :** Dans la phase « Identité », « Sécurité opérationnelle » (identite › fondamentaux › securite-operationnelle) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécurité opérationnelle
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `securite-operationnelle`
- [ ] Page lue / pratiquée

#### 38. LLDAP
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/lldap/](https://blog.stephane-robert.info/docs/services/identite/lldap/)
- **Pourquoi ici :** Dans la phase « Identité », « LLDAP » (identite › lldap) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : LLDAP
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `lldap`
- [ ] Page lue / pratiquée

#### 39. Keycloak
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/](https://blog.stephane-robert.info/docs/services/identite/keycloak/)
- **Pourquoi ici :** Dans la phase « Identité », « Keycloak » (identite › keycloak) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Keycloak
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `keycloak`
- [ ] Page lue / pratiquée

#### 40. Plan de formation
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/formation/](https://blog.stephane-robert.info/docs/services/identite/keycloak/formation/)
- **Pourquoi ici :** Dans la phase « Identité », « Plan de formation » (identite › keycloak › formation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Plan de formation
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `formation`
- [ ] Page lue / pratiquée

#### 41. Installation de Keycloak
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/installation/](https://blog.stephane-robert.info/docs/services/identite/keycloak/installation/)
- **Pourquoi ici :** Dans la phase « Identité », « Installation de Keycloak » (identite › keycloak › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation de Keycloak
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 42. Administration de Keycloak
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/administration/](https://blog.stephane-robert.info/docs/services/identite/keycloak/administration/)
- **Pourquoi ici :** Dans la phase « Identité », « Administration de Keycloak » (identite › keycloak › administration) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Administration de Keycloak
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `administration`
- [ ] Page lue / pratiquée

#### 43. Fédérer un annuaire LDAP/AD
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/federation-ldap/](https://blog.stephane-robert.info/docs/services/identite/keycloak/federation-ldap/)
- **Pourquoi ici :** Dans la phase « Identité », « Fédérer un annuaire LDAP/AD » (identite › keycloak › federation-ldap) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Fédérer un annuaire LDAP/AD
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `federation-ldap`
- [ ] Page lue / pratiquée

#### 44. Sécuriser une application (OIDC)
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/securiser-application-oidc/](https://blog.stephane-robert.info/docs/services/identite/keycloak/securiser-application-oidc/)
- **Pourquoi ici :** Dans la phase « Identité », « Sécuriser une application (OIDC) » (identite › keycloak › securiser-application-oidc) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécuriser une application (OIDC)
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `securiser-application-oidc`
- [ ] Page lue / pratiquée

#### 45. Déployer sur Kubernetes (Operator)
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/keycloak/kubernetes/](https://blog.stephane-robert.info/docs/services/identite/keycloak/kubernetes/)
- **Pourquoi ici :** Dans la phase « Identité », « Déployer sur Kubernetes (Operator) » (identite › keycloak › kubernetes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Déployer sur Kubernetes (Operator)
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `kubernetes`
- [ ] Page lue / pratiquée

#### 46. Comprendre authentik
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/authentik/comprendre/](https://blog.stephane-robert.info/docs/services/identite/authentik/comprendre/)
- **Pourquoi ici :** Dans la phase « Identité », « Comprendre authentik » (identite › authentik › comprendre) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comprendre authentik
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `comprendre`
- [ ] Page lue / pratiquée

#### 47. Installation Docker Compose
- **Lien :** [https://blog.stephane-robert.info/docs/services/identite/authentik/installation-docker-compose/](https://blog.stephane-robert.info/docs/services/identite/authentik/installation-docker-compose/)
- **Pourquoi ici :** Dans la phase « Identité », « Installation Docker Compose » (identite › authentik › installation-docker-compose) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation Docker Compose
  - Où ça s’applique dans un flux DevOps (identite)
  - Commandes / réglages à retester pour `installation-docker-compose`
- [ ] Page lue / pratiquée

### Phase D — Stockage
Du partage classique (NFS/SMB/iSCSI) au objet S3-compatible, puis distribué et stockage K8s.

#### 48. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/](https://blog.stephane-robert.info/docs/services/stockage/)
- **Pourquoi ici :** Dans la phase « Stockage », « Introduction » (stockage) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `stockage`
- [ ] Page lue / pratiquée

#### 49. NFS
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/nfs/](https://blog.stephane-robert.info/docs/services/stockage/nfs/)
- **Pourquoi ici :** Dans la phase « Stockage », « NFS » (stockage › nfs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : NFS
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `nfs`
- [ ] Page lue / pratiquée

#### 50. SMB/CIFS (Samba)
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/smb/](https://blog.stephane-robert.info/docs/services/stockage/smb/)
- **Pourquoi ici :** Dans la phase « Stockage », « SMB/CIFS (Samba) » (stockage › smb) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SMB/CIFS (Samba)
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `smb`
- [ ] Page lue / pratiquée

#### 51. iSCSI
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/iscsi/](https://blog.stephane-robert.info/docs/services/stockage/iscsi/)
- **Pourquoi ici :** Dans la phase « Stockage », « iSCSI » (stockage › iscsi) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : iSCSI
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `iscsi`
- [ ] Page lue / pratiquée

#### 52. Le Stockage Objet MinIO
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/minio/](https://blog.stephane-robert.info/docs/services/stockage/minio/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Objet MinIO » (stockage › minio) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Objet MinIO
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `minio`
- [ ] Page lue / pratiquée

#### 53. Comparatif S3 (alternatives à MinIO)
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/comparatif-s3/](https://blog.stephane-robert.info/docs/services/stockage/comparatif-s3/)
- **Pourquoi ici :** Dans la phase « Stockage », « Comparatif S3 (alternatives à MinIO) » (stockage › comparatif-s3) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Comparatif S3 (alternatives à MinIO)
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `comparatif-s3`
- [ ] Page lue / pratiquée

#### 54. Le Stockage Objet Garage
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/garage/](https://blog.stephane-robert.info/docs/services/stockage/garage/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Objet Garage » (stockage › garage) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Objet Garage
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `garage`
- [ ] Page lue / pratiquée

#### 55. Le Stockage Objet RustFS
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/rustfs/](https://blog.stephane-robert.info/docs/services/stockage/rustfs/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Objet RustFS » (stockage › rustfs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Objet RustFS
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `rustfs`
- [ ] Page lue / pratiquée

#### 56. Le Stockage Distribué SeaweedFS
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/seaweedfs/](https://blog.stephane-robert.info/docs/services/stockage/seaweedfs/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Distribué SeaweedFS » (stockage › seaweedfs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Distribué SeaweedFS
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `seaweedfs`
- [ ] Page lue / pratiquée

#### 57. Le Stockage Distribué GlusterFS
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/glusterfs/](https://blog.stephane-robert.info/docs/services/stockage/glusterfs/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Distribué GlusterFS » (stockage › glusterfs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Distribué GlusterFS
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `glusterfs`
- [ ] Page lue / pratiquée

#### 58. Le Stockage Distribué Ceph
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/ceph/](https://blog.stephane-robert.info/docs/services/stockage/ceph/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Distribué Ceph » (stockage › ceph) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Distribué Ceph
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `ceph`
- [ ] Page lue / pratiquée

#### 59. Synchronisation de fichiers Syncthing
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/syncthing/](https://blog.stephane-robert.info/docs/services/stockage/syncthing/)
- **Pourquoi ici :** Dans la phase « Stockage », « Synchronisation de fichiers Syncthing » (stockage › syncthing) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Synchronisation de fichiers Syncthing
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `syncthing`
- [ ] Page lue / pratiquée

#### 60. Le Stockage Kubernetes Longhorn
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/longhorn/](https://blog.stephane-robert.info/docs/services/stockage/longhorn/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Kubernetes Longhorn » (stockage › longhorn) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Kubernetes Longhorn
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `longhorn`
- [ ] Page lue / pratiquée

#### 61. Le Stockage Kubernetes OpenEBS
- **Lien :** [https://blog.stephane-robert.info/docs/services/stockage/openebs/](https://blog.stephane-robert.info/docs/services/stockage/openebs/)
- **Pourquoi ici :** Dans la phase « Stockage », « Le Stockage Kubernetes OpenEBS » (stockage › openebs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Stockage Kubernetes OpenEBS
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `openebs`
- [ ] Page lue / pratiquée

### Phase E — Réseau au service des applications
SSH, temps (NTP), DNS (PowerDNS), reverse-proxy / load-balancer (HAProxy, Traefik).

#### 62. Configuration d'un serveur SSH
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/ssh/](https://blog.stephane-robert.info/docs/services/reseau/ssh/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Configuration d'un serveur SSH » (reseau › ssh) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configuration d'un serveur SSH
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `ssh`
- [ ] Page lue / pratiquée

#### 63. Chrony et NTP
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/chrony/](https://blog.stephane-robert.info/docs/services/reseau/chrony/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Chrony et NTP » (reseau › chrony) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chrony et NTP
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `chrony`
- [ ] Page lue / pratiquée

#### 64. Installation de PowerDNS
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/powerdns/](https://blog.stephane-robert.info/docs/services/reseau/powerdns/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Installation de PowerDNS » (reseau › powerdns) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation de PowerDNS
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `powerdns`
- [ ] Page lue / pratiquée

#### 65. Poweradmin : interface web
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/powerdns/poweradmin/](https://blog.stephane-robert.info/docs/services/reseau/powerdns/poweradmin/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Poweradmin : interface web » (reseau › powerdns › poweradmin) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Poweradmin : interface web
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `poweradmin`
- [ ] Page lue / pratiquée

#### 66. PowerDNS-Admin (legacy)
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/powerdns/powerdns-admin/](https://blog.stephane-robert.info/docs/services/reseau/powerdns/powerdns-admin/)
- **Pourquoi ici :** Dans la phase « Réseau services », « PowerDNS-Admin (legacy) » (reseau › powerdns › powerdns-admin) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : PowerDNS-Admin (legacy)
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `powerdns-admin`
- [ ] Page lue / pratiquée

#### 67. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/reverse-proxy/](https://blog.stephane-robert.info/docs/services/reseau/reverse-proxy/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Introduction » (reseau › reverse-proxy) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `reverse-proxy`
- [ ] Page lue / pratiquée

#### 68. Exposer des Services Web avec HAProxy
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/haproxy/](https://blog.stephane-robert.info/docs/services/reseau/haproxy/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Exposer des Services Web avec HAProxy » (reseau › haproxy) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Exposer des Services Web avec HAProxy
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `haproxy`
- [ ] Page lue / pratiquée

#### 69. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik/](https://blog.stephane-robert.info/docs/services/reseau/traefik/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Introduction » (reseau › traefik) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik`
- [ ] Page lue / pratiquée

#### 70. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-installation/](https://blog.stephane-robert.info/docs/services/reseau/traefik-installation/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Installation » (reseau › traefik-installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-installation`
- [ ] Page lue / pratiquée

#### 71. Docker
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-docker/](https://blog.stephane-robert.info/docs/services/reseau/traefik-docker/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Docker » (reseau › traefik-docker) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Docker
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-docker`
- [ ] Page lue / pratiquée

#### 72. SSL/TLS & Let's Encrypt
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-tls-acme/](https://blog.stephane-robert.info/docs/services/reseau/traefik-tls-acme/)
- **Pourquoi ici :** Dans la phase « Réseau services », « SSL/TLS & Let's Encrypt » (reseau › traefik-tls-acme) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SSL/TLS & Let's Encrypt
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-tls-acme`
- [ ] Page lue / pratiquée

#### 73. Middlewares
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-middlewares/](https://blog.stephane-robert.info/docs/services/reseau/traefik-middlewares/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Middlewares » (reseau › traefik-middlewares) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Middlewares
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-middlewares`
- [ ] Page lue / pratiquée

#### 74. Sécurité
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-securite/](https://blog.stephane-robert.info/docs/services/reseau/traefik-securite/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Sécurité » (reseau › traefik-securite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sécurité
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-securite`
- [ ] Page lue / pratiquée

#### 75. Observabilité
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-observability/](https://blog.stephane-robert.info/docs/services/reseau/traefik-observability/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Observabilité » (reseau › traefik-observability) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Observabilité
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-observability`
- [ ] Page lue / pratiquée

#### 76. Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/services/reseau/traefik-kubernetes/](https://blog.stephane-robert.info/docs/services/reseau/traefik-kubernetes/)
- **Pourquoi ici :** Dans la phase « Réseau services », « Kubernetes » (reseau › traefik-kubernetes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Kubernetes
  - Où ça s’applique dans un flux DevOps (reseau)
  - Commandes / réglages à retester pour `traefik-kubernetes`
- [ ] Page lue / pratiquée

### Phase F — Scheduling et orchestration de jobs
Planifier et piloter des tâches : cron distribué, Rundeck, Airflow.

#### 77. dkron : cron distribué et HA
- **Lien :** [https://blog.stephane-robert.info/docs/services/scheduling/dkron/](https://blog.stephane-robert.info/docs/services/scheduling/dkron/)
- **Pourquoi ici :** Dans la phase « Scheduling », « dkron : cron distribué et HA » (scheduling › dkron) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : dkron : cron distribué et HA
  - Où ça s’applique dans un flux DevOps (scheduling)
  - Commandes / réglages à retester pour `dkron`
- [ ] Page lue / pratiquée

#### 78. Rundeck : l'ordonnanceur
- **Lien :** [https://blog.stephane-robert.info/docs/services/scheduling/rundeck/](https://blog.stephane-robert.info/docs/services/scheduling/rundeck/)
- **Pourquoi ici :** Dans la phase « Scheduling », « Rundeck : l'ordonnanceur » (scheduling › rundeck) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Rundeck : l'ordonnanceur
  - Où ça s’applique dans un flux DevOps (scheduling)
  - Commandes / réglages à retester pour `rundeck`
- [ ] Page lue / pratiquée

#### 79. Installer Rundeck 6
- **Lien :** [https://blog.stephane-robert.info/docs/services/scheduling/rundeck/installer/](https://blog.stephane-robert.info/docs/services/scheduling/rundeck/installer/)
- **Pourquoi ici :** Dans la phase « Scheduling », « Installer Rundeck 6 » (scheduling › rundeck › installer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer Rundeck 6
  - Où ça s’applique dans un flux DevOps (scheduling)
  - Commandes / réglages à retester pour `installer`
- [ ] Page lue / pratiquée

#### 80. Introduction sur Apache Airflow
- **Lien :** [https://blog.stephane-robert.info/docs/services/scheduling/apache-airflow/](https://blog.stephane-robert.info/docs/services/scheduling/apache-airflow/)
- **Pourquoi ici :** Dans la phase « Scheduling », « Introduction sur Apache Airflow » (scheduling › apache-airflow) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction sur Apache Airflow
  - Où ça s’applique dans un flux DevOps (scheduling)
  - Commandes / réglages à retester pour `apache-airflow`
- [ ] Page lue / pratiquée

### Phase G — Tooling DevOps, CMDB et processus
Forges self-managed, runners, gestion d’infra (CMDB/IPAM), supervision de processus.

#### 81. Introduction à Gitea self-managed
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitea/](https://blog.stephane-robert.info/docs/services/devops/gitea/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Introduction à Gitea self-managed » (devops › gitea) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction à Gitea self-managed
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `gitea`
- [ ] Page lue / pratiquée

#### 82. Gitea : présentation de la forge Git
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitea/presentation/](https://blog.stephane-robert.info/docs/services/devops/gitea/presentation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Gitea : présentation de la forge Git » (devops › gitea › presentation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Gitea : présentation de la forge Git
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `presentation`
- [ ] Page lue / pratiquée

#### 83. Installer Gitea sur Linux
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitea/installation/](https://blog.stephane-robert.info/docs/services/devops/gitea/installation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Installer Gitea sur Linux » (devops › gitea › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer Gitea sur Linux
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 84. Configuration initiale
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitea/configuration-initiale/](https://blog.stephane-robert.info/docs/services/devops/gitea/configuration-initiale/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Configuration initiale » (devops › gitea › configuration-initiale) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configuration initiale
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `configuration-initiale`
- [ ] Page lue / pratiquée

#### 85. Sauvegarder et restaurer Gitea
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitea/sauvegarder-restaurer/](https://blog.stephane-robert.info/docs/services/devops/gitea/sauvegarder-restaurer/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Sauvegarder et restaurer Gitea » (devops › gitea › sauvegarder-restaurer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegarder et restaurer Gitea
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `sauvegarder-restaurer`
- [ ] Page lue / pratiquée

#### 86. Mettre à jour Gitea
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitea/upgrade/](https://blog.stephane-robert.info/docs/services/devops/gitea/upgrade/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Mettre à jour Gitea » (devops › gitea › upgrade) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mettre à jour Gitea
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `upgrade`
- [ ] Page lue / pratiquée

#### 87. Introduction à Forgejo self-managed
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/forgejo/](https://blog.stephane-robert.info/docs/services/devops/forgejo/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Introduction à Forgejo self-managed » (devops › forgejo) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction à Forgejo self-managed
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `forgejo`
- [ ] Page lue / pratiquée

#### 88. Forgejo : présentation de la forge Git
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/forgejo/presentation/](https://blog.stephane-robert.info/docs/services/devops/forgejo/presentation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Forgejo : présentation de la forge Git » (devops › forgejo › presentation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Forgejo : présentation de la forge Git
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `presentation`
- [ ] Page lue / pratiquée

#### 89. Installer Forgejo sur Linux
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/forgejo/installation/](https://blog.stephane-robert.info/docs/services/devops/forgejo/installation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Installer Forgejo sur Linux » (devops › forgejo › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer Forgejo sur Linux
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 90. Configuration initiale
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/forgejo/configuration-initiale/](https://blog.stephane-robert.info/docs/services/devops/forgejo/configuration-initiale/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Configuration initiale » (devops › forgejo › configuration-initiale) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configuration initiale
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `configuration-initiale`
- [ ] Page lue / pratiquée

#### 91. Sauvegarder et restaurer Forgejo
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/forgejo/sauvegarder-restaurer/](https://blog.stephane-robert.info/docs/services/devops/forgejo/sauvegarder-restaurer/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Sauvegarder et restaurer Forgejo » (devops › forgejo › sauvegarder-restaurer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegarder et restaurer Forgejo
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `sauvegarder-restaurer`
- [ ] Page lue / pratiquée

#### 92. Mettre à jour Forgejo
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/forgejo/upgrade/](https://blog.stephane-robert.info/docs/services/devops/forgejo/upgrade/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Mettre à jour Forgejo » (devops › forgejo › upgrade) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mettre à jour Forgejo
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `upgrade`
- [ ] Page lue / pratiquée

#### 93. Introduction à GitLab self-managed
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/](https://blog.stephane-robert.info/docs/services/devops/gitlab/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Introduction à GitLab self-managed » (devops › gitlab) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction à GitLab self-managed
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `gitlab`
- [ ] Page lue / pratiquée

#### 94. GitLab : plateforme DevSecOps complète
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/presentation/](https://blog.stephane-robert.info/docs/services/devops/gitlab/presentation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « GitLab : plateforme DevSecOps complète » (devops › gitlab › presentation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : GitLab : plateforme DevSecOps complète
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `presentation`
- [ ] Page lue / pratiquée

#### 95. Installer GitLab CE sur Linux
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/installation/](https://blog.stephane-robert.info/docs/services/devops/gitlab/installation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Installer GitLab CE sur Linux » (devops › gitlab › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installer GitLab CE sur Linux
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 96. Configuration initiale
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/configuration-initiale/](https://blog.stephane-robert.info/docs/services/devops/gitlab/configuration-initiale/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Configuration initiale » (devops › gitlab › configuration-initiale) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Configuration initiale
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `configuration-initiale`
- [ ] Page lue / pratiquée

#### 97. GitLab Runner : installation et configuration
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/runner/](https://blog.stephane-robert.info/docs/services/devops/gitlab/runner/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « GitLab Runner : installation et configuration » (devops › gitlab › runner) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : GitLab Runner : installation et configuration
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `runner`
- [ ] Page lue / pratiquée

#### 98. Runners GitLab sur Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/runner-kubernetes/](https://blog.stephane-robert.info/docs/services/devops/gitlab/runner-kubernetes/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Runners GitLab sur Kubernetes » (devops › gitlab › runner-kubernetes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Runners GitLab sur Kubernetes
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `runner-kubernetes`
- [ ] Page lue / pratiquée

#### 99. Sauvegarder et restaurer GitLab
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/sauvegarder-restaurer/](https://blog.stephane-robert.info/docs/services/devops/gitlab/sauvegarder-restaurer/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Sauvegarder et restaurer GitLab » (devops › gitlab › sauvegarder-restaurer) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegarder et restaurer GitLab
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `sauvegarder-restaurer`
- [ ] Page lue / pratiquée

#### 100. Mettre à jour GitLab
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/gitlab/upgrade/](https://blog.stephane-robert.info/docs/services/devops/gitlab/upgrade/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Mettre à jour GitLab » (devops › gitlab › upgrade) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mettre à jour GitLab
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `upgrade`
- [ ] Page lue / pratiquée

#### 101. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/garm/](https://blog.stephane-robert.info/docs/services/devops/garm/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Vue d'ensemble » (devops › garm) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `garm`
- [ ] Page lue / pratiquée

#### 102. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/garm/installation/](https://blog.stephane-robert.info/docs/services/devops/garm/installation/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Installation » (devops › garm › installation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Installation
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `installation`
- [ ] Page lue / pratiquée

#### 103. Intégration Gitea
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/garm/integration-gitea/](https://blog.stephane-robert.info/docs/services/devops/garm/integration-gitea/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Intégration Gitea » (devops › garm › integration-gitea) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Intégration Gitea
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `integration-gitea`
- [ ] Page lue / pratiquée

#### 104. Plane : alternative open-source à Jira
- **Lien :** [https://blog.stephane-robert.info/docs/services/devops/plane/](https://blog.stephane-robert.info/docs/services/devops/plane/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Plane : alternative open-source à Jira » (devops › plane) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Plane : alternative open-source à Jira
  - Où ça s’applique dans un flux DevOps (devops)
  - Commandes / réglages à retester pour `plane`
- [ ] Page lue / pratiquée

#### 105. CMDB : La cartographie de l'infrastructure
- **Lien :** [https://blog.stephane-robert.info/docs/services/gestion/cmdb/](https://blog.stephane-robert.info/docs/services/gestion/cmdb/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « CMDB : La cartographie de l'infrastructure » (gestion › cmdb) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : CMDB : La cartographie de l'infrastructure
  - Où ça s’applique dans un flux DevOps (gestion)
  - Commandes / réglages à retester pour `cmdb`
- [ ] Page lue / pratiquée

#### 106. IPAM : Gestion des Adresses IP
- **Lien :** [https://blog.stephane-robert.info/docs/services/gestion/ipam/](https://blog.stephane-robert.info/docs/services/gestion/ipam/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « IPAM : Gestion des Adresses IP » (gestion › ipam) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : IPAM : Gestion des Adresses IP
  - Où ça s’applique dans un flux DevOps (gestion)
  - Commandes / réglages à retester pour `ipam`
- [ ] Page lue / pratiquée

#### 107. Processus
- **Lien :** [https://blog.stephane-robert.info/docs/services/processus/](https://blog.stephane-robert.info/docs/services/processus/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Processus » (processus) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Processus
  - Où ça s’applique dans un flux DevOps (processus)
  - Commandes / réglages à retester pour `processus`
- [ ] Page lue / pratiquée

#### 108. Supervisor
- **Lien :** [https://blog.stephane-robert.info/docs/services/processus/supervisor/](https://blog.stephane-robert.info/docs/services/processus/supervisor/)
- **Pourquoi ici :** Dans la phase « DevOps tooling », « Supervisor » (processus › supervisor) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Supervisor
  - Où ça s’applique dans un flux DevOps (processus)
  - Commandes / réglages à retester pour `supervisor`
- [ ] Page lue / pratiquée

## Compétences acquises

- Déployer et configurer un serveur web (Nginx/Caddy/Apache)
- Administrer PostgreSQL (et comparer MySQL) : install, sécu, backup, réplication
- Mettre en place une IdP (Keycloak/authentik) avec OIDC
- Choisir un stockage fichier/objet adapté (NFS, MinIO, Ceph…)
- Exposer des services via Traefik/HAProxy avec TLS
- Installer une forge Git self-managed et ses runners
- Ordonnancer des jobs (Rundeck/Airflow/dkron)

## Checklist globale

- [ ] Phase A — Services web terminée
- [ ] Phase B — Bases de données terminée
- [ ] Phase C — Identité terminée
- [ ] Phase D — Stockage terminée
- [ ] Phase E — Réseau services terminée
- [ ] Phase F — Scheduling terminée
- [ ] Phase G — Tooling DevOps terminée
- [ ] Dossier validé
