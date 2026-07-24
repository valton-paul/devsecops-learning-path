# Parcours — 10-maitriser-la-conteneurisation

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/conteneurs/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Checklist globale
- [ ] Phase A — Images de conteneurs terminée
- [ ] Phase B — Moteurs (Docker puis alternatives) terminée
- [ ] Phase C — Registres terminée
- [ ] Phase D — Orchestration (vers Kubernetes) terminée
- [ ] Phase E — Cloud-native terminée
- [ ] Phase F — Outils transverses & annexes terminée
- [ ] Dossier validé

## Vision du dossier
Ce dossier couvre le cycle de vie des charges conteneurisées : images, moteurs d'exécution, registres, orchestration (surtout Kubernetes) et culture cloud-native.

Public : débutant→intermédiaire ayant des bases Linux/Git et, idéalement, un premier contact IaC (09). Objectif : savoir builder, exécuter, publier et orchestrer sans traiter Kubernetes comme une boîte noire.

Dans le parcours DevSecOps, les conteneurs alimentent directement le cloud (12), l'observabilité (11) et surtout les pipelines CI/CD (13). La sécurité des images et du cluster se croise volontairement avec le dossier `05-securite`.

## Prérequis
- Dossiers locaux : `02-administration-linux`, `04-developper-des-applications`, idéalement `09-infrastructure-as-code`
- Concepts : processus Linux, réseau de base, YAML, registres d'artefacts
- Lien sécurité : croiser avec `05-securite` (images, RBAC, policies) pendant les phases Docker/K8s sécu

## Logique pédagogique (pourquoi cet ordre)
Le site présente images, moteurs, registres, orchestrateurs et cloud-native parfois en parallèle. Ici l'ordre suit la dépendance réelle : image → moteur Docker → registres → orchestration simple / labs → Kubernetes du socle vers ops/sécu → outillage (kubectl/Helm) → catalogues d'outils → cloud-native. Les catalogues d'outils K8s sont regroupés en sous-phase dédiée sans omettre de page.

## Ordre de lecture conseillé

### Phase A — Images de conteneurs
Comprendre et construire des images avant d'apprendre un moteur. Prérequis : Linux (02), Git (04), idéalement IaC (09).

#### 1. C'est quoi une image de conteneur ?
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. « C'est quoi une image de conteneur ? » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - C'est quoi une image de conteneur ?
  - images conteneurs
- [ ] Page lue / pratiquée

#### 2. Dockerfile
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/ecrire-dockerfile/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/ecrire-dockerfile/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Dockerfile » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Dockerfile
  - ecrire dockerfile
- [ ] Page lue / pratiquée

#### 3. Bonnes pratiques Dockerfile (.dockerignore, cache, multi-stage)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/dockerfile-bonnes-pratiques/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/dockerfile-bonnes-pratiques/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Bonnes pratiques Dockerfile (.dockerignore, cache, multi-stage) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Bonnes pratiques Dockerfile (.dockerignore, cache, multi-stage)
  - dockerfile bonnes pratiques
- [ ] Page lue / pratiquée

#### 4. Optimiser la taille des images de container
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/optimiser-taille-image/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/optimiser-taille-image/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Optimiser la taille des images de container » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Optimiser la taille des images de container
  - optimiser taille image
- [ ] Page lue / pratiquée

#### 5. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - build
- [ ] Page lue / pratiquée

#### 6. Docker bake
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/bake/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/bake/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Docker bake » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Docker bake
  - bake
- [ ] Page lue / pratiquée

#### 7. Buildah
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/buildah/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/buildah/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Buildah » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Buildah
  - buildah
- [ ] Page lue / pratiquée

#### 8. BuildKit
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/buildkit/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/buildkit/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « BuildKit » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - BuildKit
  - buildkit
- [ ] Page lue / pratiquée

#### 9. Les Cloud Native Buildpacks
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/buildpacks/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/buildpacks/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Les Cloud Native Buildpacks » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Cloud Native Buildpacks
  - buildpacks
- [ ] Page lue / pratiquée

#### 10. Kaniko
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/kaniko/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/build/kaniko/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. La page « Kaniko » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Kaniko
  - kaniko
- [ ] Page lue / pratiquée

#### 11. Quiz : maîtrisez vos images Docker !
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/controle-connaissances/](https://blog.stephane-robert.info/docs/conteneurs/images-conteneurs/controle-connaissances/)
- **Pourquoi ici :** Les images sont le livrable : comprendre couches et Dockerfile avant tout moteur. « Quiz : maîtrisez vos images Docker ! » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Quiz : maîtrisez vos images Docker !
  - Auto-évaluation
- [ ] Page lue / pratiquée

### Phase B — Moteurs (Docker puis alternatives)
Docker en track principal, puis Podman, containerd, Incus/LXC.

**B1 — Vue d'ensemble moteurs & Docker**

#### 12. Moteurs de conteneurs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/)
- **Pourquoi ici :** Carte des moteurs de conteneurs. « Moteurs de conteneurs » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - Moteurs de conteneurs
  - moteurs conteneurs
- [ ] Page lue / pratiquée

#### 13. Docker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Docker » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Docker
  - docker
- [ ] Page lue / pratiquée

#### 14. Concepts fondamentaux
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/concepts/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/concepts/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Concepts fondamentaux » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts fondamentaux
  - concepts
- [ ] Page lue / pratiquée

#### 15. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/installation/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/installation/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation
  - installation
- [ ] Page lue / pratiquée

#### 16. Commandes CLI essentielles
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/cli/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/cli/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Commandes CLI essentielles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Commandes CLI essentielles
  - cli
- [ ] Page lue / pratiquée

#### 17. Volumes Docker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/volumes/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/volumes/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Volumes Docker » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Volumes Docker
  - volumes
- [ ] Page lue / pratiquée

#### 18. Réseau Docker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/network/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/network/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Réseau Docker » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Réseau Docker
  - network
- [ ] Page lue / pratiquée

#### 19. Secrets Docker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/secrets/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/secrets/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Secrets Docker » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Secrets Docker
  - secrets
- [ ] Page lue / pratiquée

#### 20. Sécurité Docker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/securite/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/securite/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). — lien utile avec 05-securite. « Sécurité Docker » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Sécurité Docker
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 21. Configuration du daemon
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/daemon-config/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/daemon-config/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Configuration du daemon » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Configuration du daemon
  - daemon config
- [ ] Page lue / pratiquée

#### 22. Cycle de vie & dépannage
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/execution-depannage/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/execution-depannage/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Cycle de vie & dépannage » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cycle de vie & dépannage
  - execution depannage
- [ ] Page lue / pratiquée

#### 23. Socket Docker : socket-proxy
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/socket-proxy/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/socket-proxy/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Socket Docker : socket-proxy » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Socket Docker : socket-proxy
  - socket proxy
- [ ] Page lue / pratiquée

#### 24. Sous le capot (namespaces, cgroups)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/sous-le-capot/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/docker/sous-le-capot/)
- **Pourquoi ici :** Docker : moteur de référence pour débuter (CLI, volumes, réseau, sécu). La page « Sous le capot (namespaces, cgroups) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sous le capot (namespaces, cgroups)
  - sous le capot
- [ ] Page lue / pratiquée

**B2 — Podman & desktop / UI**

#### 25. Podman
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Podman » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Podman
  - podman
- [ ] Page lue / pratiquée

#### 26. Construction d'images
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/build/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/build/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Construction d'images » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Construction d'images
  - build
- [ ] Page lue / pratiquée

#### 27. Commandes essentielles
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/commandes/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/commandes/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Commandes essentielles » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Commandes essentielles
  - commandes
- [ ] Page lue / pratiquée

#### 28. Concepts
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/concepts/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/concepts/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Concepts » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts
  - concepts
- [ ] Page lue / pratiquée

#### 29. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/installation/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/installation/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation
  - installation
- [ ] Page lue / pratiquée

#### 30. Kube play et generate
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/kube-play/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/kube-play/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Kube play et generate » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Kube play et generate
  - kube play
- [ ] Page lue / pratiquée

#### 31. Multi-arch et manifests
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/manifests/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/manifests/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Multi-arch et manifests » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Multi-arch et manifests
  - manifests
- [ ] Page lue / pratiquée

#### 32. Pods natifs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/pods/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/pods/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Pods natifs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pods natifs
  - pods
- [ ] Page lue / pratiquée

#### 33. Quadlet (systemd)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/quadlet/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/quadlet/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Quadlet (systemd) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Quadlet (systemd)
  - quadlet
- [ ] Page lue / pratiquée

#### 34. Réseaux
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/reseaux/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/reseaux/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Réseaux » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Réseaux
  - reseaux
- [ ] Page lue / pratiquée

#### 35. Run avancé
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/run-avance/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/run-avance/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Run avancé » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Run avancé
  - run avance
- [ ] Page lue / pratiquée

#### 36. Volumes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/volumes/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman/volumes/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Volumes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Volumes
  - volumes
- [ ] Page lue / pratiquée

#### 37. Podman Desktop
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman-desktop/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/podman-desktop/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Podman Desktop » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Podman Desktop
  - podman desktop
- [ ] Page lue / pratiquée

#### 38. Portainer CE
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/portainer/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/portainer/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Portainer CE » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Portainer CE
  - portainer
- [ ] Page lue / pratiquée

**B3 — containerd**

#### 39. containerd
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/containerd/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/containerd/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « containerd » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - containerd
  - containerd
- [ ] Page lue / pratiquée

#### 40. Découverte de Nerdctl
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/containerd/nerdctl-base/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/containerd/nerdctl-base/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Découverte de Nerdctl » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Découverte de Nerdctl
  - nerdctl base
- [ ] Page lue / pratiquée

**B4 — Conteneurs système (LXC / Incus)**
Paradigme différent des conteneurs applicatifs OCI ; après Docker.

#### 41. LXC
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/lxc/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/lxc/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « LXC » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - LXC
  - lxc
- [ ] Page lue / pratiquée

#### 42. LXD
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « LXD » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - LXD
  - incus
- [ ] Page lue / pratiquée

#### 43. Ansible (connection plugin)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/ansible/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/ansible/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Ansible (connection plugin) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Ansible (connection plugin)
  - ansible
- [ ] Page lue / pratiquée

#### 44. Automatisation des images
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/automatisation-images/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/automatisation-images/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Automatisation des images » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Automatisation des images
  - automatisation images
- [ ] Page lue / pratiquée

#### 45. Stockage partagé CephFS
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/cephfs/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/cephfs/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Stockage partagé CephFS » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Stockage partagé CephFS
  - cephfs
- [ ] Page lue / pratiquée

#### 46. Cluster Incus (HA multi-nœuds)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/clustering/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/clustering/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Cluster Incus (HA multi-nœuds) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cluster Incus (HA multi-nœuds)
  - clustering
- [ ] Page lue / pratiquée

#### 47. Conteneurs OCI (Docker)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/conteneurs-oci/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/conteneurs-oci/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Conteneurs OCI (Docker) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Conteneurs OCI (Docker)
  - conteneurs oci
- [ ] Page lue / pratiquée

#### 48. Debug d'une VM au boot
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/debug-vm-boot/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/debug-vm-boot/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Debug d'une VM au boot » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Debug d'une VM au boot
  - debug vm boot
- [ ] Page lue / pratiquée

#### 49. GPU (NVIDIA passthrough)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/gpu/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/gpu/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « GPU (NVIDIA passthrough) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - GPU (NVIDIA passthrough)
  - gpu
- [ ] Page lue / pratiquée

#### 50. Importer une machine (incus-migrate)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-migrate/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-migrate/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Importer une machine (incus-migrate) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Importer une machine (incus-migrate)
  - incus migrate
- [ ] Page lue / pratiquée

#### 51. Cluster Incus OS : rôles et HA
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-cluster-ha/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-cluster-ha/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Cluster Incus OS : rôles et HA » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cluster Incus OS : rôles et HA
  - incus os cluster ha
- [ ] Page lue / pratiquée

#### 52. Workers et nœuds distants
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-cluster-workers/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-cluster-workers/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Workers et nœuds distants » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Workers et nœuds distants
  - incus os cluster workers
- [ ] Page lue / pratiquée

#### 53. Mises à jour A/B et rollback
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-mises-a-jour/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-mises-a-jour/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Mises à jour A/B et rollback » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mises à jour A/B et rollback
  - incus os mises a jour
- [ ] Page lue / pratiquée

#### 54. Sauvegarde et supervision
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-sauvegarde-supervision/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-sauvegarde-supervision/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Sauvegarde et supervision » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sauvegarde et supervision
  - incus os sauvegarde supervision
- [ ] Page lue / pratiquée

#### 55. Tailscale sur les nœuds
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-tailscale/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os-tailscale/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Tailscale sur les nœuds » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Tailscale sur les nœuds
  - incus os tailscale
- [ ] Page lue / pratiquée

#### 56. Incus OS sans interface
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-os/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Incus OS sans interface » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Incus OS sans interface
  - incus os
- [ ] Page lue / pratiquée

#### 57. Incus vs Docker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-vs-docker/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/incus-vs-docker/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Incus vs Docker » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Incus vs Docker
  - incus vs docker
- [ ] Page lue / pratiquée

#### 58. Installer Incus
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/installation/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/installation/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Installer Incus » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer Incus
  - installation
- [ ] Page lue / pratiquée

#### 59. Gestion des instances
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/instances/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/instances/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Gestion des instances » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des instances
  - instances
- [ ] Page lue / pratiquée

#### 60. Migrer depuis LXD
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/migration-lxd/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/migration-lxd/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Migrer depuis LXD » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Migrer depuis LXD
  - migration lxd
- [ ] Page lue / pratiquée

#### 61. Migration Manager (VMware)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/migration-manager/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/migration-manager/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Migration Manager (VMware) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Migration Manager (VMware)
  - migration manager
- [ ] Page lue / pratiquée

#### 62. Cloud privé multi-tenant
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/multi-tenant/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/multi-tenant/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Cloud privé multi-tenant » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cloud privé multi-tenant
  - multi tenant
- [ ] Page lue / pratiquée

#### 63. Operations Center (flotte)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/operations-center/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/operations-center/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Operations Center (flotte) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Operations Center (flotte)
  - operations center
- [ ] Page lue / pratiquée

#### 64. Mon parcours
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/parcours/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/parcours/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Mon parcours » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours
  - parcours
- [ ] Page lue / pratiquée

#### 65. Premiers pas
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/premiers-pas/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/premiers-pas/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Premiers pas » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premiers pas
  - premiers pas
- [ ] Page lue / pratiquée

#### 66. Profils et projets
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/profils-projets/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/profils-projets/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Profils et projets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Profils et projets
  - profils projets
- [ ] Page lue / pratiquée

#### 67. Network ACL (Security Groups)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/reseau-acl/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/reseau-acl/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Network ACL (Security Groups) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Network ACL (Security Groups)
  - reseau acl
- [ ] Page lue / pratiquée

#### 68. Réseau OVN et load balancers
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/reseau-ovn/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/reseau-ovn/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Réseau OVN et load balancers » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Réseau OVN et load balancers
  - reseau ovn
- [ ] Page lue / pratiquée

#### 69. Réseau : bridge et NAT
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/reseau/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/reseau/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Réseau : bridge et NAT » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Réseau : bridge et NAT
  - reseau
- [ ] Page lue / pratiquée

#### 70. Sécuriser Incus
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/securisation/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/securisation/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Sécuriser Incus » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sécuriser Incus
  - securisation
- [ ] Page lue / pratiquée

#### 71. Stockage : pools et volumes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/storage/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/storage/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Stockage : pools et volumes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Stockage : pools et volumes
  - storage
- [ ] Page lue / pratiquée

#### 72. Terraform : déployer une 3-tiers
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/terraform-3-tiers/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/terraform-3-tiers/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Terraform : déployer une 3-tiers » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terraform : déployer une 3-tiers
  - terraform 3 tiers
- [ ] Page lue / pratiquée

#### 73. Terraform (provider lxc/incus)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/terraform/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/terraform/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Terraform (provider lxc/incus) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Terraform (provider lxc/incus)
  - terraform
- [ ] Page lue / pratiquée

#### 74. Accès distant et UI
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/ui-remote/](https://blog.stephane-robert.info/docs/conteneurs/moteurs-conteneurs/incus/ui-remote/)
- **Pourquoi ici :** Autres moteurs (Podman, containerd, Incus/LXC) après bases Docker. La page « Accès distant et UI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Accès distant et UI
  - ui remote
- [ ] Page lue / pratiquée

### Phase C — Registres
Distribuer les images construites.

#### 75. registry
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/registres/](https://blog.stephane-robert.info/docs/conteneurs/registres/)
- **Pourquoi ici :** Registres : publier et tirer des images — pont vers l'orchestration. « registry » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - registry
  - registres
- [ ] Page lue / pratiquée

#### 76. Distribution (Docker Registry)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/registres/distribution/](https://blog.stephane-robert.info/docs/conteneurs/registres/distribution/)
- **Pourquoi ici :** Registres : publier et tirer des images — pont vers l'orchestration. La page « Distribution (Docker Registry) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Distribution (Docker Registry)
  - distribution
- [ ] Page lue / pratiquée

#### 77. Docker Hub
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/registres/docker-hub/](https://blog.stephane-robert.info/docs/conteneurs/registres/docker-hub/)
- **Pourquoi ici :** Registres : publier et tirer des images — pont vers l'orchestration. La page « Docker Hub » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Docker Hub
  - docker hub
- [ ] Page lue / pratiquée

#### 78. Varnish Orca
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/registres/orca/](https://blog.stephane-robert.info/docs/conteneurs/registres/orca/)
- **Pourquoi ici :** Registres : publier et tirer des images — pont vers l'orchestration. La page « Varnish Orca » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Varnish Orca
  - orca
- [ ] Page lue / pratiquée

#### 79. Quay.io
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/registres/quay-io/](https://blog.stephane-robert.info/docs/conteneurs/registres/quay-io/)
- **Pourquoi ici :** Registres : publier et tirer des images — pont vers l'orchestration. La page « Quay.io » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Quay.io
  - quay io
- [ ] Page lue / pratiquée

### Phase D — Orchestration (vers Kubernetes)
Compose → labs locaux → Kubernetes progressif → outillage → catalogues.

**D1 — Compose, Swarm et labs locaux**

#### 80. C'est quoi un orchestrateur de conteneurs ?
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/)
- **Pourquoi ici :** Carte des orchestrateurs. « C'est quoi un orchestrateur de conteneurs ? » sert de carte ou de jalon : lire pour se repérer, puis enchaîner sur les pages filles dans l'ordre indiqué.
- **À retenir :**
  - C'est quoi un orchestrateur de conteneurs ?
  - orchestrateurs
- [ ] Page lue / pratiquée

#### 81. Docker Compose
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/docker-compose/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/docker-compose/)
- **Pourquoi ici :** Orchestration simple (Compose, Swarm) avant Kubernetes. La page « Docker Compose » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Docker Compose
  - docker compose
- [ ] Page lue / pratiquée

#### 82. Docker Swarm
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/docker-swarm/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/docker-swarm/)
- **Pourquoi ici :** Orchestration simple (Compose, Swarm) avant Kubernetes. La page « Docker Swarm » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Docker Swarm
  - docker swarm
- [ ] Page lue / pratiquée

#### 83. Minikube
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/minikube/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/minikube/)
- **Pourquoi ici :** Clusters locaux (minikube, kind, k3d, k3s) pour pratiquer sans cloud. La page « Minikube » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Minikube
  - minikube
- [ ] Page lue / pratiquée

#### 84. Kind
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kind/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kind/)
- **Pourquoi ici :** Clusters locaux (minikube, kind, k3d, k3s) pour pratiquer sans cloud. La page « Kind » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Kind
  - kind
- [ ] Page lue / pratiquée

#### 85. K3d
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/k3d/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/k3d/)
- **Pourquoi ici :** Clusters locaux (minikube, kind, k3d, k3s) pour pratiquer sans cloud. La page « K3d » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - K3d
  - k3d
- [ ] Page lue / pratiquée

#### 86. K3s
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/k3s/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/k3s/)
- **Pourquoi ici :** Clusters locaux (minikube, kind, k3d, k3s) pour pratiquer sans cloud. La page « K3s » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - K3s
  - k3s
- [ ] Page lue / pratiquée

#### 87. Mixer des nodes ARM et AMD64
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/k3s/mix-architectures/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/k3s/mix-architectures/)
- **Pourquoi ici :** Clusters locaux (minikube, kind, k3d, k3s) pour pratiquer sans cloud. La page « Mixer des nodes ARM et AMD64 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mixer des nodes ARM et AMD64
  - mix architectures
- [ ] Page lue / pratiquée

#### 88. Nomad
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/nomad/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/nomad/)
- **Pourquoi ici :** Alternative d'orchestration : culture après Compose, avant ou après K8s. La page « Nomad » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Nomad
  - nomad
- [ ] Page lue / pratiquée

#### 89. OpenShift
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/openshift/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/openshift/)
- **Pourquoi ici :** Distribution K8s opinionated : après bases Kubernetes. La page « OpenShift » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - OpenShift
  - openshift
- [ ] Page lue / pratiquée

**D2 — Kubernetes (fondamentaux & ressources)**
Du cluster aux objets applicatifs de base. Pratiquer kubectl en parallèle (sous-phase D5).

#### 90. Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Kubernetes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Kubernetes
  - kubernetes
- [ ] Page lue / pratiquée

#### 91. Mon parcours Suivi
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/parcours/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/parcours/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Mon parcours Suivi » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mon parcours Suivi
  - parcours
- [ ] Page lue / pratiquée

#### 92. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - fondamentaux
- [ ] Page lue / pratiquée

#### 93. Concepts clés
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/concepts-cles/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/concepts-cles/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Concepts clés » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts clés
  - concepts cles
- [ ] Page lue / pratiquée

#### 94. Contrôle des connaissances
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/controle-connaissances/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/controle-connaissances/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. « Contrôle des connaissances » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Contrôle des connaissances
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 95. Premier cluster (k3d/Kind)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/premier-cluster/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/premier-cluster/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Premier cluster (k3d/Kind) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier cluster (k3d/Kind)
  - premier cluster
- [ ] Page lue / pratiquée

#### 96. Premier déploiement
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/premier-deploiement/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/fondamentaux/premier-deploiement/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Premier déploiement » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Premier déploiement
  - premier deploiement
- [ ] Page lue / pratiquée

#### 97. Architecture Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/architecture/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/architecture/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Architecture Kubernetes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Architecture Kubernetes
  - architecture
- [ ] Page lue / pratiquée

#### 98. Le Control Plane
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/control-plan/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/control-plan/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Le Control Plane » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Le Control Plane
  - control plan
- [ ] Page lue / pratiquée

#### 99. Les Worker Nodes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/worker-nodes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/worker-nodes/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Worker Nodes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Worker Nodes
  - worker nodes
- [ ] Page lue / pratiquée

#### 100. Options d'installation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/installation/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/installation/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Options d'installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Options d'installation
  - installation
- [ ] Page lue / pratiquée

#### 101. Installer avec kubeadm
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/kubeadm/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/kubeadm/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Installer avec kubeadm » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer avec kubeadm
  - kubeadm
- [ ] Page lue / pratiquée

#### 102. Installer avec Kubespray
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/kubespray/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/kubespray/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Installer avec Kubespray » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer avec Kubespray
  - kubespray
- [ ] Page lue / pratiquée

#### 103. Installer avec k0s
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/k0s/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/k0s/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Installer avec k0s » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer avec k0s
  - k0s
- [ ] Page lue / pratiquée

#### 104. Installer avec RKE2
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/rke2/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/rke2/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Installer avec RKE2 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer avec RKE2
  - rke2
- [ ] Page lue / pratiquée

#### 105. Installer avec Talos Linux
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/talos/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/talos/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Installer avec Talos Linux » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer avec Talos Linux
  - talos
- [ ] Page lue / pratiquée

#### 106. Écrire des Manifests
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ecrire-manifests/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ecrire-manifests/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Écrire des Manifests » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Écrire des Manifests
  - ecrire manifests
- [ ] Page lue / pratiquée

#### 107. Les ressources Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ressources-base/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ressources-base/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les ressources Kubernetes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les ressources Kubernetes
  - ressources base
- [ ] Page lue / pratiquée

#### 108. Controle des Connaissances
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/bilan-ressources-base/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/bilan-ressources-base/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Controle des Connaissances » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Controle des Connaissances
  - bilan ressources base
- [ ] Page lue / pratiquée

#### 109. Les Pods
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/pods/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/pods/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Pods » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Pods
  - pods
- [ ] Page lue / pratiquée

#### 110. Les Namespaces
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/namespaces/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/namespaces/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Namespaces » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Namespaces
  - namespaces
- [ ] Page lue / pratiquée

#### 111. Les ConfigMaps
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/configmaps/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/configmaps/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les ConfigMaps » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les ConfigMaps
  - configmaps
- [ ] Page lue / pratiquée

#### 112. Les Secrets
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/secrets/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/secrets/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Secrets
  - secrets
- [ ] Page lue / pratiquée

#### 113. Les ReplicaSets
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/replicasets/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/replicasets/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les ReplicaSets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les ReplicaSets
  - replicasets
- [ ] Page lue / pratiquée

#### 114. Les Deployments
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/deployments/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/deployments/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Deployments » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Deployments
  - deployments
- [ ] Page lue / pratiquée

#### 115. Les DaemonSets
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/daemonsets/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/daemonsets/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les DaemonSets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les DaemonSets
  - daemonsets
- [ ] Page lue / pratiquée

#### 116. Les StatefulSets
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/statefulsets/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/statefulsets/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les StatefulSets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les StatefulSets
  - statefulsets
- [ ] Page lue / pratiquée

#### 117. Les Jobs et CronJobs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/jobs-cronjobs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/jobs-cronjobs/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Jobs et CronJobs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Jobs et CronJobs
  - jobs cronjobs
- [ ] Page lue / pratiquée

#### 118. Les Services
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/services/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/services/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Services » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Services
  - services
- [ ] Page lue / pratiquée

#### 119. Les Ingress
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ingress/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ingress/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Les Ingress » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Ingress
  - ingress
- [ ] Page lue / pratiquée

#### 120. Gateway API
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/gateway-api/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/gateway-api/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Gateway API » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gateway API
  - gateway api
- [ ] Page lue / pratiquée

#### 121. Init Containers et Sidecars
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/init-containers-sidecars/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/init-containers-sidecars/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Init Containers et Sidecars » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Init Containers et Sidecars
  - init containers sidecars
- [ ] Page lue / pratiquée

#### 122. Définir les Probes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/probes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/probes/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Définir les Probes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Définir les Probes
  - probes
- [ ] Page lue / pratiquée

#### 123. Gérer les images conteneurs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/images-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/images-kubernetes/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « Gérer les images conteneurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les images conteneurs
  - images kubernetes
- [ ] Page lue / pratiquée

#### 124. ServiceAccounts pour développeurs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/serviceaccounts-developpeurs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/serviceaccounts-developpeurs/)
- **Pourquoi ici :** Tronc Kubernetes : architecture, objets de base, manifests. La page « ServiceAccounts pour développeurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ServiceAccounts pour développeurs
  - serviceaccounts developpeurs
- [ ] Page lue / pratiquée

**D3 — Kubernetes (réseau, storage, scale, ops)**

#### 125. CNI, CSI et CRI
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cni-csi-cri/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cni-csi-cri/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « CNI, CSI et CRI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CNI, CSI et CRI
  - cni csi cri
- [ ] Page lue / pratiquée

#### 126. Pod Networking
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/pod-networking/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/pod-networking/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Pod Networking » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Pod Networking
  - pod networking
- [ ] Page lue / pratiquée

#### 127. CoreDNS
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/coredns/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/coredns/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « CoreDNS » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CoreDNS
  - coredns
- [ ] Page lue / pratiquée

#### 128. Cilium (CNI eBPF)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cilium/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cilium/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Cilium (CNI eBPF) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Cilium (CNI eBPF)
  - cilium
- [ ] Page lue / pratiquée

#### 129. Hubble
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/hubble/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/hubble/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Hubble » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Hubble
  - hubble
- [ ] Page lue / pratiquée

#### 130. Network Policies
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/network-policies/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/network-policies/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Network Policies » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Network Policies
  - network policies
- [ ] Page lue / pratiquée

#### 131. Introduction au stockage
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/storage/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/storage/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Introduction au stockage » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction au stockage
  - storage
- [ ] Page lue / pratiquée

#### 132. StorageClass
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/storageclass/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/storageclass/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « StorageClass » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - StorageClass
  - storageclass
- [ ] Page lue / pratiquée

#### 133. Volumes applicatifs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/volumes-applicatifs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/volumes-applicatifs/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Volumes applicatifs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Volumes applicatifs
  - volumes applicatifs
- [ ] Page lue / pratiquée

#### 134. Requests et Limits
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/requests-limits/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/requests-limits/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Requests et Limits » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Requests et Limits
  - requests limits
- [ ] Page lue / pratiquée

#### 135. ResourceQuota et LimitRange
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/resource-quotas/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/resource-quotas/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « ResourceQuota et LimitRange » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - ResourceQuota et LimitRange
  - resource quotas
- [ ] Page lue / pratiquée

#### 136. Horizontal Pod Autoscaler (HPA)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/horizontal-pod-scaling/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/horizontal-pod-scaling/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Horizontal Pod Autoscaler (HPA) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Horizontal Pod Autoscaler (HPA)
  - horizontal pod scaling
- [ ] Page lue / pratiquée

#### 137. Vertical Pod Autoscaler (VPA)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/vertical-pod-scaling/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/vertical-pod-scaling/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Vertical Pod Autoscaler (VPA) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Vertical Pod Autoscaler (VPA)
  - vertical pod scaling
- [ ] Page lue / pratiquée

#### 138. Introduction à l'Autoscaling
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/autoscaling/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/autoscaling/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Introduction à l'Autoscaling » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction à l'Autoscaling
  - autoscaling
- [ ] Page lue / pratiquée

#### 139. Assigner des nodes aux Pods
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/affinity-toleration-taint/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/affinity-toleration-taint/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Assigner des nodes aux Pods » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Assigner des nodes aux Pods
  - affinity toleration taint
- [ ] Page lue / pratiquée

#### 140. Scheduling avancé
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/scheduling-avance/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/scheduling-avance/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Scheduling avancé » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Scheduling avancé
  - scheduling avance
- [ ] Page lue / pratiquée

#### 141. Rolling Updates et Rollbacks
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/rolling-updates-rollbacks/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/rolling-updates-rollbacks/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Rolling Updates et Rollbacks » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Rolling Updates et Rollbacks
  - rolling updates rollbacks
- [ ] Page lue / pratiquée

#### 142. etcd
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/etcd/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/etcd/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « etcd » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - etcd
  - etcd
- [ ] Page lue / pratiquée

#### 143. Haute disponibilité
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ha-control-plane/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/ha-control-plane/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Haute disponibilité » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Haute disponibilité
  - ha control plane
- [ ] Page lue / pratiquée

#### 144. Backup et Restore
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/backup-restore/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/backup-restore/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Backup et Restore » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Backup et Restore
  - backup restore
- [ ] Page lue / pratiquée

#### 145. Troubleshooting cluster
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cluster-troubleshooting/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cluster-troubleshooting/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Troubleshooting cluster » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Troubleshooting cluster
  - cluster troubleshooting
- [ ] Page lue / pratiquée

#### 146. Débugger une application
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/debug-applications/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/debug-applications/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Débugger une application » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Débugger une application
  - debug applications
- [ ] Page lue / pratiquée

#### 147. Gérer les dépréciations d'API
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/api-deprecations/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/api-deprecations/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Gérer les dépréciations d'API » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les dépréciations d'API
  - api deprecations
- [ ] Page lue / pratiquée

#### 148. Les Opérateurs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operators/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operators/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Les Opérateurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Les Opérateurs
  - operators
- [ ] Page lue / pratiquée

#### 149. Operators et CRDs pour développeurs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operators-crds-developpeurs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operators-crds-developpeurs/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Operators et CRDs pour développeurs » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Operators et CRDs pour développeurs
  - operators crds developpeurs
- [ ] Page lue / pratiquée

#### 150. cert-manager
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cert-manager/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/cert-manager/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « cert-manager » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - cert-manager
  - cert manager
- [ ] Page lue / pratiquée

#### 151. Vue d'ensemble
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/administration/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/administration/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. Vue d'ensemble / jalon « Vue d'ensemble » : survol rapide, l'apprentissage se fait dans les pages suivantes.
- **À retenir :**
  - Vue d'ensemble
  - administration
- [ ] Page lue / pratiquée

#### 152. Hub — Opérer Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Hub — Opérer Kubernetes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Hub — Opérer Kubernetes
  - operer
- [ ] Page lue / pratiquée

#### 153. Analyser les événements
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/analyser-evenements-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/analyser-evenements-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Analyser les événements » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Analyser les événements
  - analyser evenements kubernetes
- [ ] Page lue / pratiquée

#### 154. Diagnostiquer un CrashLoopBackOff
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/crashloopbackoff-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/crashloopbackoff-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Diagnostiquer un CrashLoopBackOff » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Diagnostiquer un CrashLoopBackOff
  - crashloopbackoff kubernetes
- [ ] Page lue / pratiquée

#### 155. Disponibilité applicative
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/disponibilite-applicative-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/disponibilite-applicative-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Disponibilité applicative » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Disponibilité applicative
  - disponibilite applicative kubernetes
- [ ] Page lue / pratiquée

#### 156. Présentation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/fiabiliser-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/fiabiliser-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Présentation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation
  - fiabiliser kubernetes
- [ ] Page lue / pratiquée

#### 157. Gérer les nœuds
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/gerer-noeuds-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/gerer-noeuds-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Gérer les nœuds » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les nœuds
  - gerer noeuds kubernetes
- [ ] Page lue / pratiquée

#### 158. Diagnostiquer un ImagePullBackOff
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/imagepullbackoff-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/imagepullbackoff-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Diagnostiquer un ImagePullBackOff » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Diagnostiquer un ImagePullBackOff
  - imagepullbackoff kubernetes
- [ ] Page lue / pratiquée

#### 159. Présentation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/incidents-applicatifs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/incidents-applicatifs/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Présentation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation
  - incidents applicatifs
- [ ] Page lue / pratiquée

#### 160. Présentation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/maintenance-changements/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/maintenance-changements/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Présentation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation
  - maintenance changements
- [ ] Page lue / pratiquée

#### 161. Méthode de diagnostic
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/methode-diagnostic-incident-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/methode-diagnostic-incident-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Méthode de diagnostic » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Méthode de diagnostic
  - methode diagnostic incident kubernetes
- [ ] Page lue / pratiquée

#### 162. Mettre à jour un cluster
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/mettre-a-jour-cluster-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/mettre-a-jour-cluster-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Mettre à jour un cluster » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mettre à jour un cluster
  - mettre a jour cluster kubernetes
- [ ] Page lue / pratiquée

#### 163. Observer la santé d'un cluster
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/observer-sante-cluster-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/observer-sante-cluster-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Observer la santé d'un cluster » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Observer la santé d'un cluster
  - observer sante cluster kubernetes
- [ ] Page lue / pratiquée

#### 164. Diagnostiquer un Pod Pending
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/pods-pending-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/pods-pending-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Diagnostiquer un Pod Pending » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Diagnostiquer un Pod Pending
  - pods pending kubernetes
- [ ] Page lue / pratiquée

#### 165. Préparer une maintenance
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/preparer-maintenance-cluster-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/preparer-maintenance-cluster-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Préparer une maintenance » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Préparer une maintenance
  - preparer maintenance cluster kubernetes
- [ ] Page lue / pratiquée

#### 166. Présentation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/sre-exploitation-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/sre-exploitation-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Présentation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Présentation
  - sre exploitation kubernetes
- [ ] Page lue / pratiquée

#### 167. Routine d'exploitation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/taches-quotidiennes-admin-kubernetes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/operer/taches-quotidiennes-admin-kubernetes/)
- **Pourquoi ici :** Réseau, storage, scaling, ops jour-2 sur le cluster. La page « Routine d'exploitation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Routine d'exploitation
  - taches quotidiennes admin kubernetes
- [ ] Page lue / pratiquée

**D4 — Kubernetes (sécurité) — lien 05**
À croiser avec `05-securite` (RBAC, policies, supply chain images).

#### 168. Admission Controllers
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/admission-controllers/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/admission-controllers/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Admission Controllers » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Admission Controllers
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 169. AppArmor & Seccomp
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/apparmor/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/apparmor/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « AppArmor & Seccomp » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - AppArmor & Seccomp
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 170. Audit Logs
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/audit-logs/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/audit-logs/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Audit Logs » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Audit Logs
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 171. CIS Benchmark
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/cis-benchmark/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/cis-benchmark/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « CIS Benchmark » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - CIS Benchmark
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 172. Falco vs Tetragon
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/falco-vs-tetragon/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/falco-vs-tetragon/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Falco vs Tetragon » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Falco vs Tetragon
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 173. Falco
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/falco/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/falco/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Falco » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Falco
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 174. Gatekeeper (OPA)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/gatekeeper/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/gatekeeper/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Gatekeeper (OPA) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Gatekeeper (OPA)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 175. Image Scanning (Grype/Trivy)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/image-scanning/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/image-scanning/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Image Scanning (Grype/Trivy) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Image Scanning (Grype/Trivy)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 176. Kyverno
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/kyverno/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/kyverno/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Kyverno » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Kyverno
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 177. mTLS pod-to-pod (Istio)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/mtls-pod-to-pod/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/mtls-pod-to-pod/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « mTLS pod-to-pod (Istio) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - mTLS pod-to-pod (Istio)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 178. Pod Security Standards
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/pod-security-standards/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/pod-security-standards/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Pod Security Standards » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Pod Security Standards
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 179. Runtime Sandboxes (gVisor, Kata)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/runtime-sandboxes/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/runtime-sandboxes/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Runtime Sandboxes (gVisor, Kata) » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Runtime Sandboxes (gVisor, Kata)
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 180. Supply Chain Security
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/supply-chain-security/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/supply-chain-security/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Supply Chain Security » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Supply Chain Security
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 181. Tetragon
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/tetragon/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/tetragon/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Tetragon » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Tetragon
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 182. Tracee
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/tracee/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/tracee/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Tracee » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Tracee
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 183. VAP & MAP — Policies natives
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/validating-admission-policy/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/validating-admission-policy/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « VAP & MAP — Policies natives » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - VAP & MAP — Policies natives
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 184. VAP vs Kyverno vs Gatekeeper
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/vap-vs-kyverno-gatekeeper/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/securiser/vap-vs-kyverno-gatekeeper/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « VAP vs Kyverno vs Gatekeeper » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - VAP vs Kyverno vs Gatekeeper
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 185. Security Context
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/security-context/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/security-context/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « Security Context » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - Security Context
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

#### 186. RBAC Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/rbac/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/rbac/)
- **Pourquoi ici :** Sécurité Kubernetes — lien fort avec le dossier `05-securite`. « RBAC Kubernetes » renforce le réflexe DevSecOps ; croiser avec le dossier `05-securite` si besoin.
- **À retenir :**
  - RBAC Kubernetes
  - Contrôle / réflexe sécurité
- [ ] Page lue / pratiquée

**D5 — Outillage tronc (kubectl, Helm, Kustomize)**

#### 187. K9s pour gérer vos clusters
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/k9s/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/k9s/)
- **Pourquoi ici :** Compagnons kubectl pour naviguer et observer le cluster. La page « K9s pour gérer vos clusters » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - K9s pour gérer vos clusters
  - k9s
- [ ] Page lue / pratiquée

#### 188. KDash pour visualiser vos clusters
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kdash/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kdash/)
- **Pourquoi ici :** Compagnons kubectl pour naviguer et observer le cluster. La page « KDash pour visualiser vos clusters » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - KDash pour visualiser vos clusters
  - kdash
- [ ] Page lue / pratiquée

#### 189. Explorer les API Kubernetes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-api-resources-explain/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-api-resources-explain/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Explorer les API Kubernetes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Explorer les API Kubernetes
  - kubectl api resources explain
- [ ] Page lue / pratiquée

#### 190. Kubectl Cheat Sheet
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-cheat-sheet/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-cheat-sheet/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. Aide-mémoire « Kubectl Cheat Sheet » : à garder en annexe de pratique, pas comme première lecture.
- **À retenir :**
  - Kubectl Cheat Sheet
  - Aide-mémoire
- [ ] Page lue / pratiquée

#### 191. Gestion des contextes
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-contexte/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-contexte/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Gestion des contextes » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des contextes
  - kubectl contexte
- [ ] Page lue / pratiquée

#### 192. Contrôle des connaissances
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-controle-connaissances/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-controle-connaissances/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. « Contrôle des connaissances » valide ce qui précède : à faire avant de passer à la sous-phase suivante.
- **À retenir :**
  - Contrôle des connaissances
  - Auto-évaluation
- [ ] Page lue / pratiquée

#### 193. Gérer les nœuds
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-cordon-uncordon-drain-taint/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-cordon-uncordon-drain-taint/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Gérer les nœuds » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les nœuds
  - kubectl cordon uncordon drain taint
- [ ] Page lue / pratiquée

#### 194. Créer des ressources
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-create-apply/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-create-apply/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Créer des ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Créer des ressources
  - kubectl create apply
- [ ] Page lue / pratiquée

#### 195. Modifier des ressources
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-edit-patch-replace/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-edit-patch-replace/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Modifier des ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Modifier des ressources
  - kubectl edit patch replace
- [ ] Page lue / pratiquée

#### 196. Déboguer vos applications
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-exec-debug/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-exec-debug/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Déboguer vos applications » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Déboguer vos applications
  - kubectl exec debug
- [ ] Page lue / pratiquée

#### 197. Exposer vos applications
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-expose-port-forward-proxy/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-expose-port-forward-proxy/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Exposer vos applications » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Exposer vos applications
  - kubectl expose port forward proxy
- [ ] Page lue / pratiquée

#### 198. Obtenir des infos sur les ressources
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-get-describe-logs-top/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-get-describe-logs-top/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Obtenir des infos sur les ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Obtenir des infos sur les ressources
  - kubectl get describe logs top
- [ ] Page lue / pratiquée

#### 199. Installer kubectl
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-installation-configuration/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-installation-configuration/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Installer kubectl » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer kubectl
  - kubectl installation configuration
- [ ] Page lue / pratiquée

#### 200. Gérer les metadata des ressources
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-label-annotate/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-label-annotate/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Gérer les metadata des ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les metadata des ressources
  - kubectl label annotate
- [ ] Page lue / pratiquée

#### 201. Gestion des plugins avec Krew
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-plugins/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-plugins/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Gestion des plugins avec Krew » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des plugins avec Krew
  - kubectl plugins
- [ ] Page lue / pratiquée

#### 202. Gérer la scalabilité des déploiements
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-scale-autoscale-rollout-set/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-scale-autoscale-rollout-set/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Gérer la scalabilité des déploiements » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer la scalabilité des déploiements
  - kubectl scale autoscale rollout set
- [ ] Page lue / pratiquée

#### 203. Attente et validation des ressources
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-wait-diff/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl-wait-diff/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Attente et validation des ressources » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Attente et validation des ressources
  - kubectl wait diff
- [ ] Page lue / pratiquée

#### 204. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubectl/)
- **Pourquoi ici :** kubectl : pratique quotidienne en parallèle des premiers manifests K8s. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - kubectl
- [ ] Page lue / pratiquée

#### 205. Gérer les contextes avec kubectx/kubens
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubens-kubectx/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubens-kubectx/)
- **Pourquoi ici :** Compagnons kubectl pour naviguer et observer le cluster. La page « Gérer les contextes avec kubectx/kubens » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les contextes avec kubectx/kubens
  - kubens kubectx
- [ ] Page lue / pratiquée

#### 206. Gérer les contextes avec Kubie
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubie/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kubie/)
- **Pourquoi ici :** Compagnons kubectl pour naviguer et observer le cluster. La page « Gérer les contextes avec Kubie » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer les contextes avec Kubie
  - kubie
- [ ] Page lue / pratiquée

#### 207. Afficher plusieurs logs avec Stern
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/stern/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/stern/)
- **Pourquoi ici :** Compagnons kubectl pour naviguer et observer le cluster. La page « Afficher plusieurs logs avec Stern » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Afficher plusieurs logs avec Stern
  - stern
- [ ] Page lue / pratiquée

#### 208. Plan de formation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Plan de formation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Plan de formation
  - helm
- [ ] Page lue / pratiquée

#### 209. Bases d'un chart
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/anatomie-chart/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/anatomie-chart/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Bases d'un chart » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Bases d'un chart
  - anatomie chart
- [ ] Page lue / pratiquée

#### 210. CI/CD packaging
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/cicd-packaging/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/cicd-packaging/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « CI/CD packaging » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - CI/CD packaging
  - cicd packaging
- [ ] Page lue / pratiquée

#### 211. Référence commande Helm
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/commande-helm/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/commande-helm/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Référence commande Helm » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Référence commande Helm
  - commande helm
- [ ] Page lue / pratiquée

#### 212. Diagnostiquer & valider
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/debug-validation/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/debug-validation/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Diagnostiquer & valider » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Diagnostiquer & valider
  - debug validation
- [ ] Page lue / pratiquée

#### 213. Composer des charts
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/dependances/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/dependances/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Composer des charts » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Composer des charts
  - dependances
- [ ] Page lue / pratiquée

#### 214. Installer & gérer les releases
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/install-releases/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/install-releases/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Installer & gérer les releases » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installer & gérer les releases
  - install releases
- [ ] Page lue / pratiquée

#### 215. Démarrer en 15 min
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/introduction/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/introduction/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Démarrer en 15 min » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Démarrer en 15 min
  - introduction
- [ ] Page lue / pratiquée

#### 216. Mettre à jour & rollback
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/lifecycle/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/lifecycle/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Mettre à jour & rollback » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mettre à jour & rollback
  - lifecycle
- [ ] Page lue / pratiquée

#### 217. Migrer vers Helm v4
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/migration-v4/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/migration-v4/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Migrer vers Helm v4 » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Migrer vers Helm v4
  - migration v4
- [ ] Page lue / pratiquée

#### 218. Publier en OCI
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/oci-registries/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/oci-registries/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Publier en OCI » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Publier en OCI
  - oci registries
- [ ] Page lue / pratiquée

#### 219. Templates prod-ready
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/patterns-templates/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/patterns-templates/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Templates prod-ready » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Templates prod-ready
  - patterns templates
- [ ] Page lue / pratiquée

#### 220. Supply chain & provenance
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/provenance-signature/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/provenance-signature/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Supply chain & provenance » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Supply chain & provenance
  - provenance signature
- [ ] Page lue / pratiquée

#### 221. Qualité & standards
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/qualite-chart/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/qualite-chart/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Qualité & standards » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Qualité & standards
  - qualite chart
- [ ] Page lue / pratiquée

#### 222. Trouver des charts
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/repos-charts/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/repos-charts/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Trouver des charts » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Trouver des charts
  - repos charts
- [ ] Page lue / pratiquée

#### 223. Configurer avec values
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/values/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/helm/values/)
- **Pourquoi ici :** Helm : packaging après YAML manuels. La page « Configurer avec values » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Configurer avec values
  - values
- [ ] Page lue / pratiquée

#### 224. Factoriser vos manifests avec Kustomize
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kustomize/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kustomize/)
- **Pourquoi ici :** Kustomize : overlays après manifests bruts. La page « Factoriser vos manifests avec Kustomize » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Factoriser vos manifests avec Kustomize
  - kustomize
- [ ] Page lue / pratiquée

**D6 — Catalogue / approfondissement outils orchestration**
Toutes les pages outils restantes (aucune omise).

#### 225. Gérer vos ressources Kubernetes avec Ansible
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/ansible-k8s/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/ansible-k8s/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Gérer vos ressources Kubernetes avec Ansible » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gérer vos ressources Kubernetes avec Ansible
  - ansible k8s
- [ ] Page lue / pratiquée

#### 226. Carvel (ytt, kapp, imgpkg)
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/carvel/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/carvel/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Carvel (ytt, kapp, imgpkg) » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Carvel (ytt, kapp, imgpkg)
  - carvel
- [ ] Page lue / pratiquée

#### 227. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - castai
- [ ] Page lue / pratiquée

#### 228. Goldilocks
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/goldilocks/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/goldilocks/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Goldilocks » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Goldilocks
  - goldilocks
- [ ] Page lue / pratiquée

#### 229. Développer un provider
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/karpenter-provider-dev/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/karpenter-provider-dev/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Développer un provider » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Développer un provider
  - karpenter provider dev
- [ ] Page lue / pratiquée

#### 230. Introduction
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/karpenter/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/karpenter/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Introduction » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Introduction
  - karpenter
- [ ] Page lue / pratiquée

#### 231. Mettre en cache vos images avec kuik
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kube-image-keeper/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kube-image-keeper/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Mettre en cache vos images avec kuik » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Mettre en cache vos images avec kuik
  - kube image keeper
- [ ] Page lue / pratiquée

#### 232. Sécuriser Kubernetes avec Kube-Score
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kube-score/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/kube-score/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Sécuriser Kubernetes avec Kube-Score » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sécuriser Kubernetes avec Kube-Score
  - kube score
- [ ] Page lue / pratiquée

#### 233. Détecter les API dépréciées avec Pluto
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/pluto/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/pluto/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Détecter les API dépréciées avec Pluto » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Détecter les API dépréciées avec Pluto
  - pluto
- [ ] Page lue / pratiquée

#### 234. Auditer vos clusters avec Polaris
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/polaris/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/polaris/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Auditer vos clusters avec Polaris » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Auditer vos clusters avec Polaris
  - polaris
- [ ] Page lue / pratiquée

#### 235. Sécuriser Kubernetes avec Popeye
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/popeye/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/popeye/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Sécuriser Kubernetes avec Popeye » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sécuriser Kubernetes avec Popeye
  - popeye
- [ ] Page lue / pratiquée

#### 236. Rancher
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/rancher/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/rancher/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Rancher » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Rancher
  - rancher
- [ ] Page lue / pratiquée

#### 237. Sécuriser vos secrets avec Sealed Secrets
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/sealed-secrets/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/sealed-secrets/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Sécuriser vos secrets avec Sealed Secrets » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Sécuriser vos secrets avec Sealed Secrets
  - sealed secrets
- [ ] Page lue / pratiquée

#### 238. Concepts & Architecture
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/concepts/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/concepts/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Concepts & Architecture » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Concepts & Architecture
  - concepts
- [ ] Page lue / pratiquée

#### 239. Console Web
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/console-overview/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/console-overview/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Console Web » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Console Web
  - console overview
- [ ] Page lue / pratiquée

#### 240. Installation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/installation-anywhere/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/outils/castai/installation-anywhere/)
- **Pourquoi ici :** Catalogue / approfondissement outils K8s : chaque page conservée. La page « Installation » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Installation
  - installation anywhere
- [ ] Page lue / pratiquée

**D7 — Certifications & reste Kubernetes / orchestrateurs**

#### 241. Choisir sa certification
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Choisir sa certification » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Choisir sa certification
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 242. Guide de préparation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cka/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cka/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Guide de préparation » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Guide de préparation
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 243. Guide de préparation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/ckad/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/ckad/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Guide de préparation » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Guide de préparation
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 244. Guide de préparation
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cks/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cks/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Guide de préparation » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Guide de préparation
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 245. Parcours KCNA
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/kcna/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/kcna/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Parcours KCNA » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Parcours KCNA
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 246. Parcours KCSA
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/kcsa/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/kcsa/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Parcours KCSA » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Parcours KCSA
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 247. Commandes essentielles
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cka/commandes-essentielles/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cka/commandes-essentielles/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Commandes essentielles » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Commandes essentielles
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 248. Exercices chronométrés
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cka/exercices/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cka/exercices/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Exercices chronométrés » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Exercices chronométrés
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 249. Commandes essentielles
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/ckad/commandes-essentielles/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/ckad/commandes-essentielles/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Commandes essentielles » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Commandes essentielles
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 250. Exercices chronométrés
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/ckad/exercices/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/ckad/exercices/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Exercices chronométrés » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Exercices chronométrés
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 251. Commandes essentielles
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cks/commandes-essentielles/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cks/commandes-essentielles/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Commandes essentielles » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Commandes essentielles
  - Périmètre examen
- [ ] Page lue / pratiquée

#### 252. Exercices chronométrés
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cks/exercices/](https://blog.stephane-robert.info/docs/conteneurs/orchestrateurs/kubernetes/certifications/cks/exercices/)
- **Pourquoi ici :** Certifications K8s : après le parcours opérationnel. « Exercices chronométrés » oriente une prep certif : utile seulement après la pratique des labs du tronc.
- **À retenir :**
  - Exercices chronométrés
  - Périmètre examen
- [ ] Page lue / pratiquée

### Phase E — Cloud-native
Principes CNCF, service mesh et serverless après la pratique K8s.

#### 253. Principes cloud native
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/cloud-native/cloud-native-principes/](https://blog.stephane-robert.info/docs/conteneurs/cloud-native/cloud-native-principes/)
- **Pourquoi ici :** Cloud-native (CNCF, mesh, serverless) : culture après conteneurs + K8s. La page « Principes cloud native » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Principes cloud native
  - cloud native principes
- [ ] Page lue / pratiquée

#### 254. Écosystème CNCF
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/cloud-native/cncf-ecosystem/](https://blog.stephane-robert.info/docs/conteneurs/cloud-native/cncf-ecosystem/)
- **Pourquoi ici :** Cloud-native (CNCF, mesh, serverless) : culture après conteneurs + K8s. La page « Écosystème CNCF » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Écosystème CNCF
  - cncf ecosystem
- [ ] Page lue / pratiquée

#### 255. Service mesh
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/cloud-native/service-mesh/](https://blog.stephane-robert.info/docs/conteneurs/cloud-native/service-mesh/)
- **Pourquoi ici :** Cloud-native (CNCF, mesh, serverless) : culture après conteneurs + K8s. La page « Service mesh » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Service mesh
  - service mesh
- [ ] Page lue / pratiquée

#### 256. Serverless
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/cloud-native/serverless/](https://blog.stephane-robert.info/docs/conteneurs/cloud-native/serverless/)
- **Pourquoi ici :** Cloud-native (CNCF, mesh, serverless) : culture après conteneurs + K8s. La page « Serverless » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Serverless
  - serverless
- [ ] Page lue / pratiquée

### Phase F — Outils transverses & annexes
#### 257. Validation de la structure des images
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/container-struct-test/](https://blog.stephane-robert.info/docs/conteneurs/outils/container-struct-test/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Validation de la structure des images » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Validation de la structure des images
  - container struct test
- [ ] Page lue / pratiquée

#### 258. Gestion des images avec Crane
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/crane/](https://blog.stephane-robert.info/docs/conteneurs/outils/crane/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Gestion des images avec Crane » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des images avec Crane
  - crane
- [ ] Page lue / pratiquée

#### 259. Gestion des CRI avec crictl
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/crictl/](https://blog.stephane-robert.info/docs/conteneurs/outils/crictl/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Gestion des CRI avec crictl » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des CRI avec crictl
  - crictl
- [ ] Page lue / pratiquée

#### 260. Analyse d'images avec Dive
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/dive/](https://blog.stephane-robert.info/docs/conteneurs/outils/dive/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Analyse d'images avec Dive » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Analyse d'images avec Dive
  - dive
- [ ] Page lue / pratiquée

#### 261. Dozzle
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/dozzle/](https://blog.stephane-robert.info/docs/conteneurs/outils/dozzle/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Dozzle » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Dozzle
  - dozzle
- [ ] Page lue / pratiquée

#### 262. Linter vos Dockerfile avec Hadolint
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/hadolint/](https://blog.stephane-robert.info/docs/conteneurs/outils/hadolint/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Linter vos Dockerfile avec Hadolint » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Linter vos Dockerfile avec Hadolint
  - hadolint
- [ ] Page lue / pratiquée

#### 263. LazyDocker
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/lazydocker/](https://blog.stephane-robert.info/docs/conteneurs/outils/lazydocker/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « LazyDocker » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - LazyDocker
  - lazydocker
- [ ] Page lue / pratiquée

#### 264. Manipuler des artefacts avec ORAS
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/oras/](https://blog.stephane-robert.info/docs/conteneurs/outils/oras/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Manipuler des artefacts avec ORAS » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Manipuler des artefacts avec ORAS
  - oras
- [ ] Page lue / pratiquée

#### 265. Gestion des images avec Skopeo
- **Lien :** [https://blog.stephane-robert.info/docs/conteneurs/outils/skopeo/](https://blog.stephane-robert.info/docs/conteneurs/outils/skopeo/)
- **Pourquoi ici :** Outils transverses images/runtime à piocher selon besoin. La page « Gestion des images avec Skopeo » apporte le détail opérationnel à ce stade du parcours.
- **À retenir :**
  - Gestion des images avec Skopeo
  - skopeo
- [ ] Page lue / pratiquée

## Compétences acquises
- Rédiger des Dockerfiles soignés et optimiser les images
- Maîtriser Docker au quotidien et situer Podman/containerd/Incus
- Publier et consommer des images via un registre
- Déployer sur Kubernetes (manifests, réseau, storage, scale)
- Utiliser kubectl/Helm/Kustomize et appliquer des bases de sécurité cluster
