# Parcours — 12-cloud

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/cloud/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Checklist globale

- [ ] Phase A — Fondamentaux cloud terminée
- [ ] Phase B — Cloud-init terminée
- [ ] Phase C — OUTSCALE (jusqu’au capstone) terminée
- [ ] Phase D — Comparatif providers terminée
- [ ] Phase E — Sécurité et souveraineté terminée
- [ ] Phase F — Outils transverses terminée
- [ ] Dossier validé

## Vision du dossier

Le cloud n’est pas « la virtualisation chez quelqu’un d’autre » : c’est un modèle de responsabilité partagée, d’API, d’élasticité et d’économie (OPEX, egress, TCO). Ce dossier pose d’abord ces fondamentaux, puis un provider **pédagogique dense**, avant les comparatifs.

**OUTSCALE** est le track principal : 50+ pages structurées (découverte, fondations, Well-Architected avec souveraineté, IaC, capstone). AWS n’a que quelques pages d’appoint ici — utile en comparatif et pour la CLI, pas comme parcours complet du site.

Prérequis forts : Linux (`02`), IaC (`09`) et conteneurs (`10`). Sans eux, le capstone Outscale et les services managés (OKS) seront pénibles. La sécurité/souveraineté clôt le parcours avant les outils transverses (rclone, restic…).

## Prérequis

- Dossiers locaux : `02-administration-linux`, `09-infrastructure-as-code`, `10-maitriser-la-conteneurisation`
- Concepts : réseau (VPC/subnets ≈ nets), SSH/bastion, Terraform/Ansible, images, Kubernetes de base
- Utile : `07-administrer-des-services` (Nginx, HAProxy) pour le capstone

## Logique pédagogique (pourquoi cet ordre)

Ordre imposé : **fondamentaux cloud → cloud-init → provider pédagogique (OUTSCALE) → autres providers en comparatif → sécurité/souveraineté → outils**. On évite de commencer par AWS/Azure/GCP alors que le contenu Outscale est le seul vraiment progressif et souveraineté-aware.

Cloud-init vient tôt : c’est le pont entre images et instances (lien fort avec Packer/`09`). Le stockage générique (IOPS) est rattaché aux fondations avant le provider. Les outils S3/backup viennent en dernier pour consolider la pratique multi-cloud.

## Ordre de lecture conseillé

### Phase A — Fondamentaux cloud
Modèles, régions, responsabilité partagée, économie, architecture et limites — avant tout clic console.

#### 1. Cloud — vue d’ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/](https://blog.stephane-robert.info/docs/cloud/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Cloud » (cloud) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Cloud
  - Où ça s’applique dans un flux DevOps (cloud)
  - Commandes / réglages à retester pour `cloud`
- [ ] Page lue / pratiquée

#### 2. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Introduction » (fondamentaux) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `fondamentaux`
- [ ] Page lue / pratiquée

#### 3. Définition et Promesses
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/definition-promesses/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/definition-promesses/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Définition et Promesses » (fondamentaux › definition-promesses) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Définition et Promesses
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `definition-promesses`
- [ ] Page lue / pratiquée

#### 4. Modèles IaaS, PaaS, SaaS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/modeles-cloud-iaas-paas-saas/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/modeles-cloud-iaas-paas-saas/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Modèles IaaS, PaaS, SaaS » (fondamentaux › modeles-cloud-iaas-paas-saas) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Modèles IaaS, PaaS, SaaS
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `modeles-cloud-iaas-paas-saas`
- [ ] Page lue / pratiquée

#### 5. Modèles de déploiement
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/modeles-deploiement/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/modeles-deploiement/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Modèles de déploiement » (fondamentaux › modeles-deploiement) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Modèles de déploiement
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `modeles-deploiement`
- [ ] Page lue / pratiquée

#### 6. Régions et zones
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/regions-az-zones/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/regions-az-zones/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Régions et zones » (fondamentaux › regions-az-zones) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Régions et zones
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `regions-az-zones`
- [ ] Page lue / pratiquée

#### 7. Responsabilité partagée
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/responsabilites-partagees/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/responsabilites-partagees/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Responsabilité partagée » (fondamentaux › responsabilites-partagees) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Responsabilité partagée
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `responsabilites-partagees`
- [ ] Page lue / pratiquée

#### 8. Mutualisation et virtualisation
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/mutualisation-isolation-virtualisation-conteneurs/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/mutualisation-isolation-virtualisation-conteneurs/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Mutualisation et virtualisation » (fondamentaux › mutualisation-isolation-virtualisation-conteneurs) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mutualisation et virtualisation
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `mutualisation-isolation-virtualisation-conteneurs`
- [ ] Page lue / pratiquée

#### 9. Élasticité vs scalabilité
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/elasticite-vs-scalabilite/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/elasticite-vs-scalabilite/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Élasticité vs scalabilité » (fondamentaux › elasticite-vs-scalabilite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Élasticité vs scalabilité
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `elasticite-vs-scalabilite`
- [ ] Page lue / pratiquée

#### 10. Disponibilité vs durabilité (SLA)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/disponibilite-vs-durabilite-sla/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/disponibilite-vs-durabilite-sla/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Disponibilité vs durabilité (SLA) » (fondamentaux › disponibilite-vs-durabilite-sla) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Disponibilité vs durabilité (SLA)
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `disponibilite-vs-durabilite-sla`
- [ ] Page lue / pratiquée

#### 11. Résilience, HA et DR
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/resilience-ha-dr/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/resilience-ha-dr/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Résilience, HA et DR » (fondamentaux › resilience-ha-dr) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Résilience, HA et DR
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `resilience-ha-dr`
- [ ] Page lue / pratiquée

#### 12. Loose coupling et stateless design
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/loose-coupling-stateless-design/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/loose-coupling-stateless-design/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Loose coupling et stateless design » (fondamentaux › loose-coupling-stateless-design) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Loose coupling et stateless design
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `loose-coupling-stateless-design`
- [ ] Page lue / pratiquée

#### 13. Synchrone, asynchrone, eventual consistency
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/synchrone-asynchrone-eventual-consistency/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/synchrone-asynchrone-eventual-consistency/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Synchrone, asynchrone, eventual consistency » (fondamentaux › synchrone-asynchrone-eventual-consistency) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Synchrone, asynchrone, eventual consistency
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `synchrone-asynchrone-eventual-consistency`
- [ ] Page lue / pratiquée

#### 14. Idempotence cloud
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/idempotence-cloud/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/idempotence-cloud/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Idempotence cloud » (fondamentaux › idempotence-cloud) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Idempotence cloud
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `idempotence-cloud`
- [ ] Page lue / pratiquée

#### 15. API-First
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/api-first/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/api-first/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « API-First » (fondamentaux › api-first) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : API-First
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `api-first`
- [ ] Page lue / pratiquée

#### 16. Automation et orchestration
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/automation-orchestration-concepts/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/automation-orchestration-concepts/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Automation et orchestration » (fondamentaux › automation-orchestration-concepts) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Automation et orchestration
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `automation-orchestration-concepts`
- [ ] Page lue / pratiquée

#### 17. CAPEX vs OPEX
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/capex-vs-opex-economie-cloud/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/capex-vs-opex-economie-cloud/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « CAPEX vs OPEX » (fondamentaux › capex-vs-opex-economie-cloud) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : CAPEX vs OPEX
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `capex-vs-opex-economie-cloud`
- [ ] Page lue / pratiquée

#### 18. Pay-as-you-go : modèles tarifaires
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/pay-as-you-go-modeles-tarifaires/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/pay-as-you-go-modeles-tarifaires/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Pay-as-you-go : modèles tarifaires » (fondamentaux › pay-as-you-go-modeles-tarifaires) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Pay-as-you-go : modèles tarifaires
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `pay-as-you-go-modeles-tarifaires`
- [ ] Page lue / pratiquée

#### 19. TCO cloud vs on-premise
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/tco-cloud-vs-on-premise/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/tco-cloud-vs-on-premise/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « TCO cloud vs on-premise » (fondamentaux › tco-cloud-vs-on-premise) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : TCO cloud vs on-premise
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `tco-cloud-vs-on-premise`
- [ ] Page lue / pratiquée

#### 20. Egress et data transfer
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/egress-data-transfer-economics/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/egress-data-transfer-economics/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Egress et data transfer » (fondamentaux › egress-data-transfer-economics) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Egress et data transfer
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `egress-data-transfer-economics`
- [ ] Page lue / pratiquée

#### 21. Chiffrement at-rest, in-transit, in-use
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/chiffrement-fondamentaux-rest-transit/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/chiffrement-fondamentaux-rest-transit/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Chiffrement at-rest, in-transit, in-use » (fondamentaux › chiffrement-fondamentaux-rest-transit) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chiffrement at-rest, in-transit, in-use
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `chiffrement-fondamentaux-rest-transit`
- [ ] Page lue / pratiquée

#### 22. Zero Trust fondamentaux
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/zero-trust-fondamentaux/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/zero-trust-fondamentaux/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Zero Trust fondamentaux » (fondamentaux › zero-trust-fondamentaux) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Zero Trust fondamentaux
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `zero-trust-fondamentaux`
- [ ] Page lue / pratiquée

#### 23. Well-Architected Frameworks
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/well-architected-frameworks/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/well-architected-frameworks/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Well-Architected Frameworks » (fondamentaux › well-architected-frameworks) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Well-Architected Frameworks
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `well-architected-frameworks`
- [ ] Page lue / pratiquée

#### 24. Cloud Adoption Frameworks (CAF)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/cloud-adoption-frameworks/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/cloud-adoption-frameworks/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Cloud Adoption Frameworks (CAF) » (fondamentaux › cloud-adoption-frameworks) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Cloud Adoption Frameworks (CAF)
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `cloud-adoption-frameworks`
- [ ] Page lue / pratiquée

#### 25. Stratégies de migration 6R/7R
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/strategies-migration-6r-7r/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/strategies-migration-6r-7r/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Stratégies de migration 6R/7R » (fondamentaux › strategies-migration-6r-7r) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Stratégies de migration 6R/7R
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `strategies-migration-6r-7r`
- [ ] Page lue / pratiquée

#### 26. Containers managés (CaaS)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/containers-manages-caas/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/containers-manages-caas/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Containers managés (CaaS) » (fondamentaux › containers-manages-caas) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Containers managés (CaaS)
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `containers-manages-caas`
- [ ] Page lue / pratiquée

#### 27. Serverless et FaaS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/serverless-faas/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/serverless-faas/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Serverless et FaaS » (fondamentaux › serverless-faas) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Serverless et FaaS
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `serverless-faas`
- [ ] Page lue / pratiquée

#### 28. Edge computing
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/edge-computing-fondamentaux/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/edge-computing-fondamentaux/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Edge computing » (fondamentaux › edge-computing-fondamentaux) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Edge computing
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `edge-computing-fondamentaux`
- [ ] Page lue / pratiquée

#### 29. IA et ML services cloud
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/ia-ml-services-cloud-fondamentaux/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/ia-ml-services-cloud-fondamentaux/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « IA et ML services cloud » (fondamentaux › ia-ml-services-cloud-fondamentaux) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : IA et ML services cloud
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `ia-ml-services-cloud-fondamentaux`
- [ ] Page lue / pratiquée

#### 30. Monitoring et observability
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/monitoring-observability-concepts/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/monitoring-observability-concepts/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Monitoring et observability » (fondamentaux › monitoring-observability-concepts) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Monitoring et observability
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `monitoring-observability-concepts`
- [ ] Page lue / pratiquée

#### 31. Green cloud et sustainability
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/green-cloud-sustainability/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/green-cloud-sustainability/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Green cloud et sustainability » (fondamentaux › green-cloud-sustainability) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Green cloud et sustainability
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `green-cloud-sustainability`
- [ ] Page lue / pratiquée

#### 32. Limites et compromis
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/fondamentaux/limites-compromis/](https://blog.stephane-robert.info/docs/cloud/fondamentaux/limites-compromis/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Limites et compromis » (fondamentaux › limites-compromis) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Limites et compromis
  - Où ça s’applique dans un flux DevOps (fondamentaux)
  - Commandes / réglages à retester pour `limites-compromis`
- [ ] Page lue / pratiquée

#### 33. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/stockage/](https://blog.stephane-robert.info/docs/cloud/stockage/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « Introduction » (stockage) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `stockage`
- [ ] Page lue / pratiquée

#### 34. C'est quoi les IOps ?
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/stockage/iops/](https://blog.stephane-robert.info/docs/cloud/stockage/iops/)
- **Pourquoi ici :** Dans la phase « Fondamentaux cloud », « C'est quoi les IOps ? » (stockage › iops) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : C'est quoi les IOps ?
  - Où ça s’applique dans un flux DevOps (stockage)
  - Commandes / réglages à retester pour `iops`
- [ ] Page lue / pratiquée

### Phase B — Cloud-init
Bootstrap déclaratif des instances : pont entre image, réseau et configuration (prépare Packer/IaC).

#### 35. Maîtriser Cloud-Init
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/cloud-init/](https://blog.stephane-robert.info/docs/cloud/cloud-init/)
- **Pourquoi ici :** Dans la phase « Cloud-init », « Maîtriser Cloud-Init » (cloud-init) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Maîtriser Cloud-Init
  - Où ça s’applique dans un flux DevOps (cloud-init)
  - Commandes / réglages à retester pour `cloud-init`
- [ ] Page lue / pratiquée

### Phase C — Provider pédagogique : OUTSCALE
Parcours complet : découverte SecNumCloud, fondations réseau/calcul/stockage/EIM, Well-Architected (dont souveraineté), IaC, OKS, capstone HA, expérimentations.

#### 36. Outscale
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/](https://blog.stephane-robert.info/docs/cloud/outscale/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Outscale » (outscale) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Outscale
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `outscale`
- [ ] Page lue / pratiquée

#### 37. Pourquoi ce parcours existe
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/pourquoi-cette-formation/](https://blog.stephane-robert.info/docs/cloud/outscale/pourquoi-cette-formation/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Pourquoi ce parcours existe » (outscale › pourquoi-cette-formation) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Pourquoi ce parcours existe
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `pourquoi-cette-formation`
- [ ] Page lue / pratiquée

#### 38. Choisir son parcours selon votre profil
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/parcours-conseille/](https://blog.stephane-robert.info/docs/cloud/outscale/parcours-conseille/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Choisir son parcours selon votre profil » (outscale › parcours-conseille) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Choisir son parcours selon votre profil
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `parcours-conseille`
- [ ] Page lue / pratiquée

#### 39. Mon parcours Suivi
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/parcours/](https://blog.stephane-robert.info/docs/cloud/outscale/parcours/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Mon parcours Suivi » (outscale › parcours) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Mon parcours Suivi
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `parcours`
- [ ] Page lue / pratiquée

#### 40. Vue d'ensemble du volet
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble du volet » (outscale › decouvrir) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble du volet
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `decouvrir`
- [ ] Page lue / pratiquée

#### 41. OUTSCALE en bref
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/outscale-en-bref/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/outscale-en-bref/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « OUTSCALE en bref » (outscale › decouvrir › outscale-en-bref) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OUTSCALE en bref
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `outscale-en-bref`
- [ ] Page lue / pratiquée

#### 42. Régions et sous-régions OUTSCALE
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/regions-sous-regions/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/regions-sous-regions/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Régions et sous-régions OUTSCALE » (outscale › decouvrir › regions-sous-regions) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Régions et sous-régions OUTSCALE
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `regions-sous-regions`
- [ ] Page lue / pratiquée

#### 43. TINA OS et la compatibilité API AWS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/tina-os-compatibilite-aws/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/tina-os-compatibilite-aws/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « TINA OS et la compatibilité API AWS » (outscale › decouvrir › tina-os-compatibilite-aws) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : TINA OS et la compatibilité API AWS
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `tina-os-compatibilite-aws`
- [ ] Page lue / pratiquée

#### 44. Vocabulaire OUTSCALE ↔ AWS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/vocabulaire-outscale-aws/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/vocabulaire-outscale-aws/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vocabulaire OUTSCALE ↔ AWS » (outscale › decouvrir › vocabulaire-outscale-aws) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vocabulaire OUTSCALE ↔ AWS
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `vocabulaire-outscale-aws`
- [ ] Page lue / pratiquée

#### 45. SecNumCloud 3.2 — implications pour l'architecte
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/secnumcloud-implications/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/secnumcloud-implications/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « SecNumCloud 3.2 — implications pour l'architecte » (outscale › decouvrir › secnumcloud-implications) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : SecNumCloud 3.2 — implications pour l'architecte
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `secnumcloud-implications`
- [ ] Page lue / pratiquée

#### 46. Cockpit : la console Outscale
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/cockpit/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/cockpit/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Cockpit : la console Outscale » (outscale › decouvrir › cockpit) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Cockpit : la console Outscale
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `cockpit`
- [ ] Page lue / pratiquée

#### 47. Outils CLI
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/cli-outils-acces/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/cli-outils-acces/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Outils CLI » (outscale › decouvrir › cli-outils-acces) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Outils CLI
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `cli-outils-acces`
- [ ] Page lue / pratiquée

#### 48. La CLI oapi (guide complet)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/oapi-cli/](https://blog.stephane-robert.info/docs/cloud/outscale/decouvrir/oapi-cli/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « La CLI oapi (guide complet) » (outscale › decouvrir › oapi-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : La CLI oapi (guide complet)
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `oapi-cli`
- [ ] Page lue / pratiquée

#### 49. Vue d'ensemble du volet
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble du volet » (outscale › fondations) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble du volet
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `fondations`
- [ ] Page lue / pratiquée

#### 50. Réseau — design Net + Subnets
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/reseau-net-subnets-design/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/reseau-net-subnets-design/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Réseau — design Net + Subnets » (outscale › fondations › reseau-net-subnets-design) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Réseau — design Net + Subnets
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `reseau-net-subnets-design`
- [ ] Page lue / pratiquée

#### 51. Réseau — IGW, NAT, EIP, bastion
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/reseau-igw-nat-eip-bastion/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/reseau-igw-nat-eip-bastion/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Réseau — IGW, NAT, EIP, bastion » (outscale › fondations › reseau-igw-nat-eip-bastion) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Réseau — IGW, NAT, EIP, bastion
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `reseau-igw-nat-eip-bastion`
- [ ] Page lue / pratiquée

#### 52. Réseau — Security Groups
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/reseau-security-groups-acl/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/reseau-security-groups-acl/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Réseau — Security Groups » (outscale › fondations › reseau-security-groups-acl) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Réseau — Security Groups
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `reseau-security-groups-acl`
- [ ] Page lue / pratiquée

#### 53. Calcul — instances TINA et sizing
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/calcul-instances-tina-sizing/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/calcul-instances-tina-sizing/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Calcul — instances TINA et sizing » (outscale › fondations › calcul-instances-tina-sizing) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Calcul — instances TINA et sizing
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `calcul-instances-tina-sizing`
- [ ] Page lue / pratiquée

#### 54. Stockage — BSU, volumes, IOPS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/stockage-bsu-volumes-iops/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/stockage-bsu-volumes-iops/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Stockage — BSU, volumes, IOPS » (outscale › fondations › stockage-bsu-volumes-iops) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Stockage — BSU, volumes, IOPS
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `stockage-bsu-volumes-iops`
- [ ] Page lue / pratiquée

#### 55. Stockage — OOS, versioning, lifecycle
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/stockage-oos-versioning-lifecycle/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/stockage-oos-versioning-lifecycle/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Stockage — OOS, versioning, lifecycle » (outscale › fondations › stockage-oos-versioning-lifecycle) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Stockage — OOS, versioning, lifecycle
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `stockage-oos-versioning-lifecycle`
- [ ] Page lue / pratiquée

#### 56. EIM — identité et accès
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/eim-identite-acces/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/eim-identite-acces/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « EIM — identité et accès » (outscale › fondations › eim-identite-acces) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : EIM — identité et accès
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `eim-identite-acces`
- [ ] Page lue / pratiquée

#### 57. EIM — patterns multi-comptes / projets
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/eim-patterns-multi-comptes/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/eim-patterns-multi-comptes/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « EIM — patterns multi-comptes / projets » (outscale › fondations › eim-patterns-multi-comptes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : EIM — patterns multi-comptes / projets
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `eim-patterns-multi-comptes`
- [ ] Page lue / pratiquée

#### 58. Sauvegardes — RPO/RTO/PRA
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/sauvegardes-rpo-rto-pra/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/sauvegardes-rpo-rto-pra/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Sauvegardes — RPO/RTO/PRA » (outscale › fondations › sauvegardes-rpo-rto-pra) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sauvegardes — RPO/RTO/PRA
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `sauvegardes-rpo-rto-pra`
- [ ] Page lue / pratiquée

#### 59. fGPU — GPU NVIDIA à la demande
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/fondations/fgpu/](https://blog.stephane-robert.info/docs/cloud/outscale/fondations/fgpu/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « fGPU — GPU NVIDIA à la demande » (outscale › fondations › fgpu) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : fGPU — GPU NVIDIA à la demande
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `fgpu`
- [ ] Page lue / pratiquée

#### 60. Le Well-Architected adapté à OUTSCALE
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected-outscale-introduction/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected-outscale-introduction/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Le Well-Architected adapté à OUTSCALE » (outscale › well-architected-outscale-introduction) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Le Well-Architected adapté à OUTSCALE
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `well-architected-outscale-introduction`
- [ ] Page lue / pratiquée

#### 61. Vue d'ensemble du volet
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble du volet » (outscale › well-architected) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble du volet
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `well-architected`
- [ ] Page lue / pratiquée

#### 62. Operational Excellence
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/operational-excellence/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/operational-excellence/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Operational Excellence » (outscale › well-architected › operational-excellence) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Operational Excellence
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `operational-excellence`
- [ ] Page lue / pratiquée

#### 63. Security
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/security/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/security/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Security » (outscale › well-architected › security) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Security
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `security`
- [ ] Page lue / pratiquée

#### 64. Reliability
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/reliability/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/reliability/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Reliability » (outscale › well-architected › reliability) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Reliability
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `reliability`
- [ ] Page lue / pratiquée

#### 65. Performance Efficiency
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/performance-efficiency/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/performance-efficiency/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Performance Efficiency » (outscale › well-architected › performance-efficiency) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Performance Efficiency
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `performance-efficiency`
- [ ] Page lue / pratiquée

#### 66. Cost Optimization
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/cost-optimization/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/cost-optimization/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Cost Optimization » (outscale › well-architected › cost-optimization) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Cost Optimization
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `cost-optimization`
- [ ] Page lue / pratiquée

#### 67. Sustainability
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/sustainability/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/sustainability/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Sustainability » (outscale › well-architected › sustainability) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sustainability
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `sustainability`
- [ ] Page lue / pratiquée

#### 68. Sovereignty (7ᵉ pilier)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/sovereignty/](https://blog.stephane-robert.info/docs/cloud/outscale/well-architected/sovereignty/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Sovereignty (7ᵉ pilier) » (outscale › well-architected › sovereignty) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Sovereignty (7ᵉ pilier)
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `sovereignty`
- [ ] Page lue / pratiquée

#### 69. Vue d'ensemble du volet
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/iac/](https://blog.stephane-robert.info/docs/cloud/outscale/iac/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble du volet » (outscale › iac) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble du volet
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `iac`
- [ ] Page lue / pratiquée

#### 70. Référence Terraform sur OUTSCALE
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/iac/terraform-reference/](https://blog.stephane-robert.info/docs/cloud/outscale/iac/terraform-reference/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Référence Terraform sur OUTSCALE » (outscale › iac › terraform-reference) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Référence Terraform sur OUTSCALE
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `terraform-reference`
- [ ] Page lue / pratiquée

#### 71. Référence Packer sur OUTSCALE
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/iac/packer-reference/](https://blog.stephane-robert.info/docs/cloud/outscale/iac/packer-reference/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Référence Packer sur OUTSCALE » (outscale › iac › packer-reference) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Référence Packer sur OUTSCALE
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `packer-reference`
- [ ] Page lue / pratiquée

#### 72. Inventaire dynamique Ansible (osc_vm)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/iac/ansible-dynamic-inventory/](https://blog.stephane-robert.info/docs/cloud/outscale/iac/ansible-dynamic-inventory/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Inventaire dynamique Ansible (osc_vm) » (outscale › iac › ansible-dynamic-inventory) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Inventaire dynamique Ansible (osc_vm)
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `ansible-dynamic-inventory`
- [ ] Page lue / pratiquée

#### 73. OSC Viewer pour Visual Studio Code
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/iac/osc-viewer-vscode/](https://blog.stephane-robert.info/docs/cloud/outscale/iac/osc-viewer-vscode/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « OSC Viewer pour Visual Studio Code » (outscale › iac › osc-viewer-vscode) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OSC Viewer pour Visual Studio Code
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `osc-viewer-vscode`
- [ ] Page lue / pratiquée

#### 74. Vue d'ensemble du volet
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/services-manages/](https://blog.stephane-robert.info/docs/cloud/outscale/services-manages/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble du volet » (outscale › services-manages) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble du volet
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `services-manages`
- [ ] Page lue / pratiquée

#### 75. Déployer un cluster OKS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/services-manages/oks-kubernetes/](https://blog.stephane-robert.info/docs/cloud/outscale/services-manages/oks-kubernetes/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Déployer un cluster OKS » (outscale › services-manages › oks-kubernetes) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Déployer un cluster OKS
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `oks-kubernetes`
- [ ] Page lue / pratiquée

#### 76. Vue d'ensemble du capstone
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble du capstone » (outscale › capstone) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble du capstone
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `capstone`
- [ ] Page lue / pratiquée

#### 77. Chapitre 1 — Provisionner les 3 Nets
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/01-nets/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/01-nets/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Chapitre 1 — Provisionner les 3 Nets » (outscale › capstone › 01-nets) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chapitre 1 — Provisionner les 3 Nets
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `01-nets`
- [ ] Page lue / pratiquée

#### 78. Chapitre 2 — Net Peering full-mesh
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/02-peerings/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/02-peerings/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Chapitre 2 — Net Peering full-mesh » (outscale › capstone › 02-peerings) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chapitre 2 — Net Peering full-mesh
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `02-peerings`
- [ ] Page lue / pratiquée

#### 79. Chapitre 3 — Bastion SSH durci
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/03-bastion/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/03-bastion/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Chapitre 3 — Bastion SSH durci » (outscale › capstone › 03-bastion) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chapitre 3 — Bastion SSH durci
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `03-bastion`
- [ ] Page lue / pratiquée

#### 80. Chapitre 4 — Frontends Nginx HTTPS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/04-nginx-frontends/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/04-nginx-frontends/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Chapitre 4 — Frontends Nginx HTTPS » (outscale › capstone › 04-nginx-frontends) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chapitre 4 — Frontends Nginx HTTPS
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `04-nginx-frontends`
- [ ] Page lue / pratiquée

#### 81. Chapitre 5 — 3 LBU + DNS round-robin
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/05-lbu-dns-rr/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/05-lbu-dns-rr/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Chapitre 5 — 3 LBU + DNS round-robin » (outscale › capstone › 05-lbu-dns-rr) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chapitre 5 — 3 LBU + DNS round-robin
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `05-lbu-dns-rr`
- [ ] Page lue / pratiquée

#### 82. Chapitre 6 — HAProxy + Corosync/Pacemaker
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/capstone/06-haproxy-pacemaker/](https://blog.stephane-robert.info/docs/cloud/outscale/capstone/06-haproxy-pacemaker/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Chapitre 6 — HAProxy + Corosync/Pacemaker » (outscale › capstone › 06-haproxy-pacemaker) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Chapitre 6 — HAProxy + Corosync/Pacemaker
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `06-haproxy-pacemaker`
- [ ] Page lue / pratiquée

#### 83. Vue d'ensemble de la section
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/](https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Vue d'ensemble de la section » (outscale › experimentations) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Vue d'ensemble de la section
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `experimentations`
- [ ] Page lue / pratiquée

#### 84. EIP flottante HA — Corosync/Pacemaker
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/eip-flottante-ha/](https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/eip-flottante-ha/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « EIP flottante HA — Corosync/Pacemaker » (outscale › experimentations › eip-flottante-ha) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : EIP flottante HA — Corosync/Pacemaker
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `eip-flottante-ha`
- [ ] Page lue / pratiquée

#### 85. OMI déclaratives avec NixOS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/omi-nixos/](https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/omi-nixos/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « OMI déclaratives avec NixOS » (outscale › experimentations › omi-nixos) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : OMI déclaratives avec NixOS
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `omi-nixos`
- [ ] Page lue / pratiquée

#### 86. Kubernetes avec Talos
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/kubernetes-talos/](https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/kubernetes-talos/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Kubernetes avec Talos » (outscale › experimentations › kubernetes-talos) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Kubernetes avec Talos
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `kubernetes-talos`
- [ ] Page lue / pratiquée

#### 87. Talos — CCM/CSI/GPU
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/talos-csi-ccm-gpu/](https://blog.stephane-robert.info/docs/cloud/outscale/experimentations/talos-csi-ccm-gpu/)
- **Pourquoi ici :** Dans la phase « OUTSCALE », « Talos — CCM/CSI/GPU » (outscale › experimentations › talos-csi-ccm-gpu) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Talos — CCM/CSI/GPU
  - Où ça s’applique dans un flux DevOps (outscale)
  - Commandes / réglages à retester pour `talos-csi-ccm-gpu`
- [ ] Page lue / pratiquée

### Phase D — Autres providers (comparatif)
AWS (CLI + émulation locale), Azure, GCP, Scalingo : repères pour transposer le vocabulaire Outscale, pas un second parcours exhaustif.

#### 88. AWS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/aws/](https://blog.stephane-robert.info/docs/cloud/aws/)
- **Pourquoi ici :** Dans la phase « Comparatif providers », « AWS » (aws) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : AWS
  - Où ça s’applique dans un flux DevOps (aws)
  - Commandes / réglages à retester pour `aws`
- [ ] Page lue / pratiquée

#### 89. Maîtrisez la CLI AWS
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/aws/aws-cli/](https://blog.stephane-robert.info/docs/cloud/aws/aws-cli/)
- **Pourquoi ici :** Dans la phase « Comparatif providers », « Maîtrisez la CLI AWS » (aws › aws-cli) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Maîtrisez la CLI AWS
  - Où ça s’applique dans un flux DevOps (aws)
  - Commandes / réglages à retester pour `aws-cli`
- [ ] Page lue / pratiquée

#### 90. Floci : émuler AWS en local
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/aws/floci/](https://blog.stephane-robert.info/docs/cloud/aws/floci/)
- **Pourquoi ici :** Dans la phase « Comparatif providers », « Floci : émuler AWS en local » (aws › floci) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Floci : émuler AWS en local
  - Où ça s’applique dans un flux DevOps (aws)
  - Commandes / réglages à retester pour `floci`
- [ ] Page lue / pratiquée

#### 91. Azure
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/azure/](https://blog.stephane-robert.info/docs/cloud/azure/)
- **Pourquoi ici :** Dans la phase « Comparatif providers », « Azure » (azure) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Azure
  - Où ça s’applique dans un flux DevOps (azure)
  - Commandes / réglages à retester pour `azure`
- [ ] Page lue / pratiquée

#### 92. GCP
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/gcp/](https://blog.stephane-robert.info/docs/cloud/gcp/)
- **Pourquoi ici :** Dans la phase « Comparatif providers », « GCP » (gcp) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : GCP
  - Où ça s’applique dans un flux DevOps (gcp)
  - Commandes / réglages à retester pour `gcp`
- [ ] Page lue / pratiquée

#### 93. Scalingo
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/scalingo/](https://blog.stephane-robert.info/docs/cloud/scalingo/)
- **Pourquoi ici :** Dans la phase « Comparatif providers », « Scalingo » (scalingo) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Scalingo
  - Où ça s’applique dans un flux DevOps (scalingo)
  - Commandes / réglages à retester pour `scalingo`
- [ ] Page lue / pratiquée

### Phase E — Sécurité et souveraineté
IAM cloud, surveillance/audit, souveraineté des données — à croiser avec `05-securite` et le pilier Sovereignty Outscale déjà vu.

#### 94. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/securite/](https://blog.stephane-robert.info/docs/cloud/securite/)
- **Pourquoi ici :** Dans la phase « Sécurité / souveraineté », « Introduction » (securite) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Introduction
  - Où ça s’applique dans un flux DevOps (securite)
  - Commandes / réglages à retester pour `securite`
- [ ] Page lue / pratiquée

#### 95. Gestion des identités (IAM)
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/securite/iam/](https://blog.stephane-robert.info/docs/cloud/securite/iam/)
- **Pourquoi ici :** Dans la phase « Sécurité / souveraineté », « Gestion des identités (IAM) » (securite › iam) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Gestion des identités (IAM)
  - Où ça s’applique dans un flux DevOps (securite)
  - Commandes / réglages à retester pour `iam`
- [ ] Page lue / pratiquée

#### 96. Surveillance et audit
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/securite/surveillance/](https://blog.stephane-robert.info/docs/cloud/securite/surveillance/)
- **Pourquoi ici :** Dans la phase « Sécurité / souveraineté », « Surveillance et audit » (securite › surveillance) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Surveillance et audit
  - Où ça s’applique dans un flux DevOps (securite)
  - Commandes / réglages à retester pour `surveillance`
- [ ] Page lue / pratiquée

#### 97. Souveraineté des données
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/souverainete-conformite/souverainete-technologique-stack/](https://blog.stephane-robert.info/docs/cloud/souverainete-conformite/souverainete-technologique-stack/)
- **Pourquoi ici :** Dans la phase « Sécurité / souveraineté », « Souveraineté des données » (souverainete-conformite › souverainete-technologique-stack) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Souveraineté des données
  - Où ça s’applique dans un flux DevOps (souverainete-conformite)
  - Commandes / réglages à retester pour `souverainete-technologique-stack`
- [ ] Page lue / pratiquée

### Phase F — Outils transverses
Rclone, s3cmd, restic, plakar : sauvegarde et transfert objet multi-cloud au quotidien.

#### 98. plakar : sauvegarde chiffrée
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outils/plakar/](https://blog.stephane-robert.info/docs/cloud/outils/plakar/)
- **Pourquoi ici :** Dans la phase « Outils cloud », « plakar : sauvegarde chiffrée » (outils › plakar) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : plakar : sauvegarde chiffrée
  - Où ça s’applique dans un flux DevOps (outils)
  - Commandes / réglages à retester pour `plakar`
- [ ] Page lue / pratiquée

#### 99. Maîtrisez Rclone
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outils/rclone/](https://blog.stephane-robert.info/docs/cloud/outils/rclone/)
- **Pourquoi ici :** Dans la phase « Outils cloud », « Maîtrisez Rclone » (outils › rclone) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Maîtrisez Rclone
  - Où ça s’applique dans un flux DevOps (outils)
  - Commandes / réglages à retester pour `rclone`
- [ ] Page lue / pratiquée

#### 100. Maîtrisez Restic
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outils/restic/](https://blog.stephane-robert.info/docs/cloud/outils/restic/)
- **Pourquoi ici :** Dans la phase « Outils cloud », « Maîtrisez Restic » (outils › restic) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Maîtrisez Restic
  - Où ça s’applique dans un flux DevOps (outils)
  - Commandes / réglages à retester pour `restic`
- [ ] Page lue / pratiquée

#### 101. Démarrer avec S3CMD
- **Lien :** [https://blog.stephane-robert.info/docs/cloud/outils/s3cmd/](https://blog.stephane-robert.info/docs/cloud/outils/s3cmd/)
- **Pourquoi ici :** Dans la phase « Outils cloud », « Démarrer avec S3CMD » (outils › s3cmd) vient après les prérequis immédiats de la même famille. Lisez-la pour progresser sans sauter d’étape, puis pratiquez minimalement avant de continuer.
- **À retenir :**
  - Idée centrale : Démarrer avec S3CMD
  - Où ça s’applique dans un flux DevOps (outils)
  - Commandes / réglages à retester pour `s3cmd`
- [ ] Page lue / pratiquée

## Compétences acquises

- Expliquer IaaS/PaaS/SaaS, responsabilité partagée, régions/AZ, élasticité et TCO
- Initialiser des instances avec cloud-init
- Naviguer OUTSCALE (Cockpit, oapi-cli) : nets, SG, EIM, BSU/OOS
- Appliquer une grille Well-Architected incluant la souveraineté
- Déployer via Terraform/Packer/Ansible sur Outscale et réaliser le capstone HA
- Comparer AWS/Azure/GCP/Scalingo au vocabulaire acquis
- Sécuriser accès (IAM) et manipuler stockage objet / sauvegardes (rclone, restic)
