# Parcours — 08-virtualisation

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/virtualiser/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier

La virtualisation est le tremplin entre « une machine physique Linux » et les environnements isolés, labs reproductibles, puis le cloud. Tu apprends ce qu’est une VM, la différence hyperviseur type 1 / type 2, les formats de disque, puis tu pratiques : d’abord un hyperviseur léger type 2, ensuite KVM/libvirt en profondeur, Proxmox comme plateforme, et enfin l’hyperconvergé (Harvester, KubeVirt).

Public : admin Linux confortable (`02-administration-linux`), idéalement avec notions réseau (`03-reseaux`) pour bridges et NAT. Ce dossier se place **avant** conteneurs (`10`) et cloud (`12`) : tu dois sentir la frontière VM vs conteneur et savoir provisionner des guests avant d’orchestrer des pods ou des instances cloud.

Dans le cursus DevSecOps, KVM + cloud-init + Terraform/libvirt préparent l’IaC (`09`) ; Proxmox et LXC annoncent la conteneurisation ; KubeVirt fait le pont VM ↔ Kubernetes.

## Prérequis

- Dossiers locaux : `02-administration-linux` (obligatoire) ; `03-reseaux` fortement recommandé (NAT, bridge, DHCP) ; `09-infrastructure-as-code` utile pour les pages Terraform/Ansible Proxmox (à lire en parallèle ou juste après)
- Concepts : shell, packages, SSH ; notion d’interface réseau
- Si dépendance externe : KubeVirt suppose des bases Kubernetes (`10`) — les pages hyperconvergées peuvent être survolées puis reprises après conteneurs

## Logique pédagogique (pourquoi cet ordre)

Le menu du site juxtapose KVM, Proxmox, VMware et hyperconvergé. Ici : **fondamentaux** (VM, type 1/2, formats) → **type 2 léger** (premier succès rapide) → **type 1 KVM** (concepts → install → VM → stockage/réseau/recettes → cloud-init, snapshots, accès, virsh, dépannage, Terraform, suivi) → **Firecracker** (micro-VM) → **Proxmox** (plateforme complète + automatisation) → **VMware vcsim** (simulateur) → **hyperconvergé** (Harvester, KubeVirt).

On ne commence pas par Proxmox ni KubeVirt : trop de surface. Les pages « mon parcours suivi » et recettes réseau restent après la pratique de base. L’automatisation (Terraform, Ansible) vient une fois la UI/CLI maîtrisée.

## Ordre de lecture conseillé

### Phase A — Fondamentaux

#### 1. Virt (index section)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/](https://blog.stephane-robert.info/docs/virtualiser/)
- **Pourquoi ici :** Vue d’ensemble virtualisation : situer type 1/2, KVM, Proxmox et hyperconvergé avant de choisir un chemin de lab.
- **À retenir :**
  - Carte de la section
  - Objectifs lab vs prod
- [ ] Page lue / pratiquée

#### 2. Qu'est-ce qu'une VM ?
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/fondamentaux/quest-ce-quune-vm/](https://blog.stephane-robert.info/docs/virtualiser/fondamentaux/quest-ce-quune-vm/)
- **Pourquoi ici :** Définition et isolation : base pour tout le dossier et pour distinguer plus tard VM vs conteneur (`10`).
- **À retenir :**
  - Guest / host / hyperviseur
  - Isolation des ressources
- [ ] Page lue / pratiquée

#### 3. Type 1 vs Type 2
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/fondamentaux/type1-vs-type2/](https://blog.stephane-robert.info/docs/virtualiser/fondamentaux/type1-vs-type2/)
- **Pourquoi ici :** Critère de choix pédagogique et d’archi : VirtualBox/VMware Workstation vs KVM/ESXi/Proxmox.
- **À retenir :**
  - Type 1 bare-metal vs type 2 hébergé
  - Trade-offs perf / simplicité
- [ ] Page lue / pratiquée

#### 4. RAW vs QCOW2 vs VDI vs VMDK
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/fondamentaux/stockage-formats/](https://blog.stephane-robert.info/docs/virtualiser/fondamentaux/stockage-formats/)
- **Pourquoi ici :** Formats de disque avant de créer des VM : snapshots, conversion, portabilité entre outils.
- **À retenir :**
  - QCOW2 vs RAW
  - Spécificités VDI/VMDK
- [ ] Page lue / pratiquée

### Phase B — Type 2 : premier lab léger

#### 5. Créer une VM Type 2
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type2/demarrer/](https://blog.stephane-robert.info/docs/virtualiser/type2/demarrer/)
- **Pourquoi ici :** Premier succès rapide sur hyperviseur hébergé ; valide les concepts avant d’investir dans KVM/Proxmox.
- **À retenir :**
  - Créer / démarrer / accéder à une VM
  - Limites du type 2
- [ ] Page lue / pratiquée

### Phase C — Type 1 : KVM / libvirt (cœur)

#### 6. KVM — Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/)
- **Pourquoi ici :** Entrée dans l’écosystème KVM/QEMU/libvirt — hyperviseur de référence sous Linux.
- **À retenir :**
  - Rôles KVM, QEMU, libvirt
  - Prérequis matériels (VT-x/AMD-V)
- [ ] Page lue / pratiquée

#### 7. Concepts fondamentaux KVM
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/concepts/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/concepts/)
- **Pourquoi ici :** Domaines, pools, réseaux libvirt — vocabulaire avant l’installation et la création de VM.
- **À retenir :**
  - Domaine (VM)
  - Storage pools / networks
- [ ] Page lue / pratiquée

#### 8. Installation KVM
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/installation/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/installation/)
- **Pourquoi ici :** Mettre en place les paquets et groupes sur l’hôte Linux (`02`) avant toute VM.
- **À retenir :**
  - Paquets et services
  - Vérifier l’accélération matérielle
- [ ] Page lue / pratiquée

#### 9. Créer une VM
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/creer-vm/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/creer-vm/)
- **Pourquoi ici :** Première VM KVM concrète ; ancre install + concepts.
- **À retenir :**
  - Création via virt-install / UI
  - Console et SSH guest
- [ ] Page lue / pratiquée

#### 10. Stockage pools/volumes
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/stockage/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/stockage/)
- **Pourquoi ici :** Après une première VM : organiser disques, pools et volumes proprement.
- **À retenir :**
  - Pool vs volume
  - Emplacements et perfs
- [ ] Page lue / pratiquée

#### 11. Réseau NAT vs Bridge
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/reseau/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/reseau/)
- **Pourquoi ici :** Choix réseau critique ; s’appuie sur `03-reseaux` (NAT, bridge, DHCP).
- **À retenir :**
  - NAT libvirt vs bridge
  - Quand exposer la VM sur le LAN
- [ ] Page lue / pratiquée

#### 12. Bridge ifupdown
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/recettes/bridge-ifupdown/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/recettes/bridge-ifupdown/)
- **Pourquoi ici :** Recette concrète après la théorie NAT/bridge ; lien fort config réseau hôte (`02` / netplan selon distro).
- **À retenir :**
  - Configurer un bridge hôte
  - Pièges classiques
- [ ] Page lue / pratiquée

#### 13. Port forwarding NAT
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/recettes/port-forward-nat/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/recettes/port-forward-nat/)
- **Pourquoi ici :** Exposer un service guest via NAT sans bridge — pratique lab/laptop.
- **À retenir :**
  - DNAT / port forward libvirt
  - Cas d’usage SSH/HTTP
- [ ] Page lue / pratiquée

#### 14. Réseau libvirt custom
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/recettes/reseau-libvirt-custom/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/recettes/reseau-libvirt-custom/)
- **Pourquoi ici :** Réseaux définis (XML) pour labs multi-VM isolés — après NAT/bridge de base.
- **À retenir :**
  - Réseau virtuel custom
  - Isolation entre labs
- [ ] Page lue / pratiquée

#### 15. Cloud-init
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/cloud-init/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/cloud-init/)
- **Pourquoi ici :** Bootstrap déclaratif des guests (user, SSH, réseau) — pont vers cloud (`12`) et images cloud.
- **À retenir :**
  - user-data / meta-data
  - Première config sans console
- [ ] Page lue / pratiquée

#### 16. Snapshots / clones / backups
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/snapshots-clones/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/snapshots-clones/)
- **Pourquoi ici :** Cycle de vie disque après cloud-init : expérimenter sans peur, cloner des templates.
- **À retenir :**
  - Snapshot vs backup
  - Clone lié / plein
- [ ] Page lue / pratiquée

#### 17. Accès distant
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/acces-distant/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/acces-distant/)
- **Pourquoi ici :** Gérer l’hyperviseur à distance (TLS, SSH, clients) une fois le lab local stable.
- **À retenir :**
  - Modes d’accès
  - Sécuriser la connexion
- [ ] Page lue / pratiquée

#### 18. Virsh commandes
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/virsh-commandes/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/virsh-commandes/)
- **Pourquoi ici :** Référence CLI après la pratique — utile au quotidien ; peut servir d’annexe à relire.
- **À retenir :**
  - Commandes virsh courantes
  - Cycle start/stop/undefine
- [ ] Page lue / pratiquée

#### 19. Dépannage KVM
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/troubleshooting/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/troubleshooting/)
- **Pourquoi ici :** Après plusieurs labs : problèmes CPU, permissions, réseau, stockage.
- **À retenir :**
  - Check-list de dépannage
  - Logs utiles
- [ ] Page lue / pratiquée

#### 20. KVM et Terraform
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/terraform-libvirt/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/terraform-libvirt/)
- **Pourquoi ici :** Provisionnement IaC des VM ; idéalement avec bases Terraform (`09`). Sinon lire en découverte puis revenir.
- **À retenir :**
  - Provider libvirt
  - VM déclarative
- [ ] Page lue / pratiquée

#### 21. Mon parcours Suivi (KVM)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/parcours/](https://blog.stephane-robert.info/docs/virtualiser/type1/kvm/parcours/)
- **Pourquoi ici :** Jalon de suivi / checklist personnelle après le cœur KVM.
- **À retenir :**
  - État d’avancement
  - Prochaines étapes perso
- [ ] Page lue / pratiquée

### Phase D — Micro-VM

#### 22. Micro-VM avec Firecracker
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/firecracker-micro-vm/](https://blog.stephane-robert.info/docs/virtualiser/type1/firecracker-micro-vm/)
- **Pourquoi ici :** Après KVM classique : VMM minimaliste (fonctions serverless, isolation forte) — élargit le spectre type 1.
- **À retenir :**
  - Positionnement Firecracker
  - Différence vs QEMU complet
- [ ] Page lue / pratiquée

### Phase E — Proxmox VE

#### 23. Proxmox — Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/)
- **Pourquoi ici :** Entrée plateforme : KVM + LXC + UI + stockage — niveau « homelab / PME » au-dessus de libvirt brut.
- **À retenir :**
  - Composants Proxmox VE
  - Cas d’usage
- [ ] Page lue / pratiquée

#### 24. Fondamentaux Proxmox (intro)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/)
- **Pourquoi ici :** Cadre des sous-pages install, UI, stockage, réseau, RBAC, VM, LXC.
- **À retenir :**
  - Structure des fondamentaux
  - Vocabulaire nœud / cluster (notion)
- [ ] Page lue / pratiquée

#### 25. Installation (ISO)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/installation/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/installation/)
- **Pourquoi ici :** Installer l’hyperviseur avant toute prise en main UI.
- **À retenir :**
  - Install ISO
  - Accès Web UI
- [ ] Page lue / pratiquée

#### 26. Prise en main UI
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/interface-ui/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/interface-ui/)
- **Pourquoi ici :** Naviguer datacenter / nœud / VM juste après l’install.
- **À retenir :**
  - Arborescence UI
  - Actions courantes
- [ ] Page lue / pratiquée

#### 27. Concepts stockage
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/stockage-local/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/stockage-local/)
- **Pourquoi ici :** Datastores locaux avant de créer des disques de VM.
- **À retenir :**
  - Types de stockage
  - Emplacement images / ISO
- [ ] Page lue / pratiquée

#### 28. Concepts réseau
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/reseau/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/reseau/)
- **Pourquoi ici :** Bridges Linux Proxmox ; s’appuie sur `03` et l’expérience KVM bridge.
- **À retenir :**
  - vmbr0 et modèles
  - VMs sur le LAN
- [ ] Page lue / pratiquée

#### 29. Concepts RBAC
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/rbac-concepts/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/rbac-concepts/)
- **Pourquoi ici :** Droits et rôles avant de partager la plateforme ou automatiser.
- **À retenir :**
  - Utilisateurs / rôles / ACL
  - Principe du moindre privilège
- [ ] Page lue / pratiquée

#### 30. Créer une VM KVM (Proxmox)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/creer-vm-kvm/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/creer-vm-kvm/)
- **Pourquoi ici :** Première VM via Proxmox une fois stockage/réseau/RBAC posés.
- **À retenir :**
  - Wizard création VM
  - Options CPU/RAM/disque
- [ ] Page lue / pratiquée

#### 31. Créer des Conteneurs LXC
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/conteneurs-lxc/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/fondamentaux/conteneurs-lxc/)
- **Pourquoi ici :** Conteneurs système Proxmox — pont léger vers `10` sans Docker encore.
- **À retenir :**
  - LXC vs VM
  - Cas d’usage services légers
- [ ] Page lue / pratiquée

#### 32. qemu-guest-agent (cloud-init)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/qemu-guest-agent/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/qemu-guest-agent/)
- **Pourquoi ici :** Intégration guest (IP, freeze, cloud-init) après création de VM.
- **À retenir :**
  - Rôle du guest agent
  - Lien cloud-init Proxmox
- [ ] Page lue / pratiquée

#### 33. Installer une VM Windows 11
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/windows-11/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/windows-11/)
- **Pourquoi ici :** Cas guest non-Linux (drivers VirtIO, ISO) — utile lab mixte.
- **À retenir :**
  - Prérequis Windows sur KVM
  - VirtIO / TPM (notion)
- [ ] Page lue / pratiquée

#### 34. Proxmox Backup Server
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/backup-server/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/backup-server/)
- **Pourquoi ici :** Sauvegardes dédiées après avoir des workloads à protéger.
- **À retenir :**
  - PBS vs snapshot local
  - Stratégie de backup
- [ ] Page lue / pratiquée

#### 35. Inventaire dynamique Ansible
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/ansible-inventory/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/ansible-inventory/)
- **Pourquoi ici :** Pont automation (`09`) : découvrir les VM comme inventaire.
- **À retenir :**
  - Inventaire dynamique
  - Cible des playbooks
- [ ] Page lue / pratiquée

#### 36. Modules Ansible Proxmox
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/ansible-modules/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/ansible-modules/)
- **Pourquoi ici :** Après inventaire : créer/gérer ressources Proxmox via Ansible.
- **À retenir :**
  - Modules utiles
  - Idempotence (idée)
- [ ] Page lue / pratiquée

#### 37. Terraform (Proxmox)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/terraform/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/terraform/)
- **Pourquoi ici :** Provisionnement déclaratif Proxmox ; parallèle au provider libvirt KVM.
- **À retenir :**
  - Provider Proxmox
  - Ressources VM
- [ ] Page lue / pratiquée

#### 38. Migration VMware → Proxmox
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/migration-vmware/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/migration-vmware/)
- **Pourquoi ici :** Scénario migration une fois Proxmox maîtrisé ; utile en contexte pro.
- **À retenir :**
  - Pistes de migration
  - Formats / outils
- [ ] Page lue / pratiquée

#### 39. Mon parcours Suivi (Proxmox)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/parcours/](https://blog.stephane-robert.info/docs/virtualiser/type1/proxmox/parcours/)
- **Pourquoi ici :** Checklist de suivi après le bloc Proxmox.
- **À retenir :**
  - Validation des acquis
  - Suite perso
- [ ] Page lue / pratiquée

### Phase F — VMware (simulateur) et hyperconvergé

#### 40. VMware (simulateur vcsim)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/type1/vmware/vcsim/](https://blog.stephane-robert.info/docs/virtualiser/type1/vmware/vcsim/)
- **Pourquoi ici :** API vSphere sans infra VMware réelle — utile pour scripts/IaC et comparaison d’écosystèmes.
- **À retenir :**
  - Rôle de vcsim
  - Limites du simulateur
- [ ] Page lue / pratiquée

#### 41. Harvester
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/harvester/](https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/harvester/)
- **Pourquoi ici :** HCI open source (VM sur Kubernetes) — après type 1 classique ; idéalement notions K8s (`10`).
- **À retenir :**
  - Positionnement HCI
  - Lien Rancher / K8s
- [ ] Page lue / pratiquée

#### 42. KubeVirt — Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/](https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/)
- **Pourquoi ici :** VMs comme ressources Kubernetes ; pont explicite vers `10` et le cloud-native.
- **À retenir :**
  - Pourquoi des VM dans K8s
  - CRD / opérateurs (idée)
- [ ] Page lue / pratiquée

#### 43. Architecture et concepts KubeVirt
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/concepts/](https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/concepts/)
- **Pourquoi ici :** Comprendre VirtualMachine, DataVolume, etc. avant d’installer.
- **À retenir :**
  - Objets principaux
  - Cycle de vie VM
- [ ] Page lue / pratiquée

#### 44. Installer KubeVirt (lab)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/installation/](https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/installation/)
- **Pourquoi ici :** Lab d’installation après les concepts ; cluster K8s requis (`10`).
- **À retenir :**
  - Déploiement lab
  - Prérequis cluster
- [ ] Page lue / pratiquée

#### 45. Créer et gérer une VM (KubeVirt)
- **Lien :** [https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/creer-vm/](https://blog.stephane-robert.info/docs/virtualiser/hyperconverge/kubevirt/creer-vm/)
- **Pourquoi ici :** Clôture pratique : VM déclarative sur K8s — synthèse virtualisation + orchestration.
- **À retenir :**
  - Manifest / UI de création
  - Opérations start/stop/console
- [ ] Page lue / pratiquée

## Compétences acquises

- Distinguer type 1 / type 2, formats de disque et cas d’usage VM
- Installer et opérer KVM/libvirt (réseau NAT/bridge, cloud-init, snapshots, virsh)
- Administrer un lab Proxmox (VM, LXC, stockage, réseau, backups, bases RBAC)
- Amorcer l’automatisation (Terraform libvirt/Proxmox, Ansible) et un simulateur VMware
- Situer Firecracker, Harvester et KubeVirt dans le paysage (préparation `10` / `12`)

## Checklist globale

- [ ] Phase A terminée
- [ ] Phase B terminée
- [ ] Phase C terminée
- [ ] Phase D terminée
- [ ] Phase E terminée
- [ ] Phase F terminée
- [ ] Dossier validé
