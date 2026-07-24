# Parcours — 03-reseaux

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/reseaux/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Checklist globale

- [ ] Phase A terminée
- [ ] Phase B terminée
- [ ] Phase C terminée
- [ ] Phase D terminée
- [ ] Phase E terminée
- [ ] Phase F terminée
- [ ] Dossier validé

## Vision du dossier

Ce dossier pose le socle réseau indispensable à tout parcours DevSecOps : comprendre comment les paquets circulent, comment on adresse, route et diagnostique, puis comment les services applicatifs (DNS, HTTP, TLS) s’appuient sur ces fondations. Sans ce vocabulaire commun, la configuration Linux, les pare-feu et plus tard les overlays cloud-native restent opaque.

Le public cible est un débutant qui a déjà touché un terminal Linux (dossier `02-administration-linux`) et qui veut passer d’« Internet marche » à « je sais expliquer un flux, un sous-réseau, un échec DNS ou TLS ». Les concepts OSI/TCP sont volontairement accessibles tôt : on n’attend pas d’être expert admin pour lire le modèle en couches.

Dans la formation globale, le réseau est le pont entre l’admin système (`02`) et la sécurité (`05`), les services (`07`), la virtualisation (`08`) et le cloud (`12`). Tu reviendras souvent ici quand tu configureeras netplan, un bridge KVM, un Ingress ou un NetworkPolicy.

## Prérequis

- Dossiers locaux : `02-administration-linux` (utile : terminal, fichiers, notions d’interfaces / netplan) ; `05-securite` pour approfondir le pare-feu après la page introductive
- Concepts : adresse IP, idée vague de « client/serveur », curiosité pour le diagnostic (`ping`, `curl`)
- Si dépendance externe : la page pare-feu renvoie vers les pratiques de `05-securite` ; la config d’interfaces détaillée reste dans `02`

## Logique pédagogique (pourquoi cet ordre)

Le menu du site mélange fondations, protocoles applicatifs et outils. Ici on reconstruit le chemin « du fil au navigateur » : cadre et modèle OSI → couches 2/3 (Ethernet, ARP, IP, sous-réseaux, IpCalc) → transport et interconnexion (ICMP, TCP/UDP, routage, NAT) → services d’infrastructure (DHCP, DNS) → pratique Linux et protocoles applicatifs (HTTP, certificats, TLS, email) → sécurité réseau, synthèse diagnostic et homelab.

On place IpCalc juste après IP/sous-réseaux pour ancrer le calcul, et le pare-feu en fin de parcours pour ne pas bloquer l’apprentissage des flux avant d’apprendre à les filtrer. Homelab et synthèse ferment la boucle : tu consolides en mettant les mains dans le câble (ou le lab virtuel).

## Ordre de lecture conseillé

### Phase A — Cadre et repères

#### 1. Net (index section)
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/](https://blog.stephane-robert.info/docs/reseaux/)
- **Pourquoi ici :** Vue d’ensemble du dossier réseaux : repère la structure avant de plonger dans les fondamentaux.
- **À retenir :**
  - Périmètre « réseaux » dans le cursus
  - Différence fondamentaux vs outils
- [ ] Page lue / pratiquée

#### 2. Présentation des fondamentaux
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/)
- **Pourquoi ici :** Introduit le fil conducteur des pages suivantes ; lit-la comme une carte mentale, pas comme un chapitre à mémoriser.
- **À retenir :**
  - Objectifs des fondamentaux réseau
  - Lien diagnostic ↔ théorie
- [ ] Page lue / pratiquée

#### 3. Bases absolues
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/bases-absolues/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/bases-absolues/)
- **Pourquoi ici :** Vocabulaire minimal (hôte, paquet, latence, bande passante) avant le modèle OSI — on ancre le langage courant.
- **À retenir :**
  - Vocabulaire réseau de base
  - Ce qu’on mesure (latence, perte, débit)
- [ ] Page lue / pratiquée

### Phase B — Du modèle aux adresses (L2/L3)

#### 4. Modèle OSI et TCP/IP
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/modele-osi/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/modele-osi/)
- **Pourquoi ici :** Grille de lecture pour tout le reste : chaque protocole se situe dans une couche. Accessible tôt, même sans maîtrise Linux avancée.
- **À retenir :**
  - Couches OSI vs pile TCP/IP
  - Encapsulation / désencapsulation
- [ ] Page lue / pratiquée

#### 5. Ethernet et adresse MAC
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/ethernet-mac/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/ethernet-mac/)
- **Pourquoi ici :** Couche 2 avant IP : switch, trame, MAC — indispensable pour comprendre ARP et le bridging plus tard (KVM, Proxmox).
- **À retenir :**
  - Adresse MAC
  - Rôle du switch vs routeur
- [ ] Page lue / pratiquée

#### 6. ARP
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/arp/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/arp/)
- **Pourquoi ici :** Pont logique MAC ↔ IP ; sans ARP, le diagnostic « même réseau mais pas de réponse » reste mystérieux.
- **À retenir :**
  - Résolution IP → MAC
  - Cache ARP et spoofing (notion)
- [ ] Page lue / pratiquée

#### 7. IP et sous-réseaux
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/ip-sous-reseaux/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/ip-sous-reseaux/)
- **Pourquoi ici :** Cœur L3 : adressage, masque, CIDR. Prérequis direct de netplan (`02`) et de tout lab réseau.
- **À retenir :**
  - IPv4, masque, CIDR
  - Réseau / broadcast / hôte
- [ ] Page lue / pratiquée

#### 8. IpCalc
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/outils/ipcalc/](https://blog.stephane-robert.info/docs/reseaux/outils/ipcalc/)
- **Pourquoi ici :** Outil pratique immédiatement après la théorie sous-réseaux : vérifier un plan d’adressage au lieu de calculer à la main.
- **À retenir :**
  - Utiliser IpCalc pour valider un CIDR
  - Lire réseau, plage, broadcast
- [ ] Page lue / pratiquée

### Phase C — Transport et interconnexion

#### 9. ICMP
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/icmp/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/icmp/)
- **Pourquoi ici :** Explique `ping` et les messages d’erreur avant d’empiler TCP/UDP ; base du diagnostic L3.
- **À retenir :**
  - Rôle d’ICMP
  - Limites de `ping` comme preuve de « tout va bien »
- [ ] Page lue / pratiquée

#### 10. TCP vs UDP
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/tcp-udp/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/tcp-udp/)
- **Pourquoi ici :** Après IP : fiabilité, ports, handshake. Prépare HTTP, DNS et le filtrage firewall.
- **À retenir :**
  - Connexion TCP vs datagramme UDP
  - Ports et sockets
- [ ] Page lue / pratiquée

#### 11. Routage
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/routage/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/routage/)
- **Pourquoi ici :** Comment un paquet sort du LAN ; table de routage, passerelle — lien fort avec `ip route` sous Linux (`02`).
- **À retenir :**
  - Route par défaut
  - Décision de forwarding
- [ ] Page lue / pratiquée

#### 12. NAT
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/nat/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/nat/)
- **Pourquoi ici :** Après routage : traduction d’adresses (box, cloud, lab). Éclaircit beaucoup de scénarios « IP privée / publique ».
- **À retenir :**
  - SNAT / DNAT (idées)
  - Lien avec le port forwarding
- [ ] Page lue / pratiquée

### Phase D — Services d’infrastructure

#### 13. DHCP
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/dhcp/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/dhcp/)
- **Pourquoi ici :** Attribution dynamique d’IP/DNS/gateway — tu le croises partout en lab et en entreprise.
- **À retenir :**
  - Bail DHCP
  - Options (passerelle, DNS)
- [ ] Page lue / pratiquée

#### 14. DNS
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/dns/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/dns/)
- **Pourquoi ici :** Résolution de noms : cause n°1 de « le service est down » alors que le réseau L3 est OK.
- **À retenir :**
  - Résolveur, zones, enregistrements courants
  - Chaîne de résolution
- [ ] Page lue / pratiquée

### Phase E — Pratique Linux et protocoles applicatifs

#### 15. Commandes de base
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/commandes-base/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/commandes-base/)
- **Pourquoi ici :** Ancre la théorie avec `ip`, `ss`, `dig`, etc. Dépend des bases Linux (`02`) ; à pratiquer sur ta machine.
- **À retenir :**
  - Inspecter interfaces et routes
  - Vérifier ports et résolution DNS
- [ ] Page lue / pratiquée

#### 16. HTTP/HTTPS
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/http-https/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/http-https/)
- **Pourquoi ici :** Protocole applicatif dominant ; prépare reverse-proxy, Ingress et AppSec.
- **À retenir :**
  - Requête / réponse, codes
  - Passage au TLS (HTTPS)
- [ ] Page lue / pratiquée

#### 17. Générer des certificats (openssl)
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/generer-certificats/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/generer-certificats/)
- **Pourquoi ici :** Après HTTP/HTTPS : PKI de lab (auto-signé, CSR). Utile avant TLS diagnostic et services HTTPS (`07`).
- **À retenir :**
  - Clé, CSR, certificat
  - Usage lab vs prod (CA)
- [ ] Page lue / pratiquée

#### 18. TLS diagnostic
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/tls-diagnostic/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/tls-diagnostic/)
- **Pourquoi ici :** Savoir lire une négociation TLS cassée (chaine, SNI, date) — compétence ops quotidienne.
- **À retenir :**
  - Chaîne de confiance
  - Outils de diagnostic TLS
- [ ] Page lue / pratiquée

#### 19. Protocoles email
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/email/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/email/)
- **Pourquoi ici :** SMTP/IMAP/POP en vue réseau (ports, flux) ; moins prioritaire que HTTP mais utile pour services et sécurité mail.
- **À retenir :**
  - Rôles SMTP vs IMAP/POP
  - Ports et relais (notion)
- [ ] Page lue / pratiquée

### Phase F — Sécurité, synthèse et homelab

#### 20. Pare-feu
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/pare-feu/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/pare-feu/)
- **Pourquoi ici :** Filtrage des flux une fois qu’on sait ce qu’on laisse passer. Approfondissement pratique dans `05-securite` (nftables/iptables, hardening).
- **À retenir :**
  - Politique deny/allow
  - Filtrage par IP/port/état
- [ ] Page lue / pratiquée

#### 21. Synthèse diagnostic
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/synthese-diagnostic/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/synthese-diagnostic/)
- **Pourquoi ici :** Méthode structurée (couche par couche) avant le homelab : checklist mentale pour tout incident réseau.
- **À retenir :**
  - Ordre de diagnostic (L1→L7)
  - Signes typiques par couche
- [ ] Page lue / pratiquée

#### 22. Homelab réseau
- **Lien :** [https://blog.stephane-robert.info/docs/reseaux/fondamentaux/homelab-reseau/](https://blog.stephane-robert.info/docs/reseaux/fondamentaux/homelab-reseau/)
- **Pourquoi ici :** Mise en pratique globale : consolide adressage, routage, DNS et diagnostic dans un lab personnel.
- **À retenir :**
  - Concevoir un petit plan d’adressage
  - Valider bout-en-bout
- [ ] Page lue / pratiquée

## Compétences acquises

- Expliquer un flux réseau avec le modèle OSI / TCP-IP
- Calculer et valider un sous-réseau (CIDR, IpCalc)
- Distinguer Ethernet/ARP, IP, TCP/UDP, NAT et routage
- Diagnostiquer avec les commandes Linux de base et une méthode couche par couche
- Comprendre DHCP, DNS, HTTP/HTTPS et les bases TLS (certificats, diagnostic)
- Relier le filtrage pare-feu aux flux compris (passerelle vers `05-securite`)
