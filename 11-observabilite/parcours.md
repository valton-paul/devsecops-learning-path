# Parcours — 11-observabilite

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/observabilite/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier

L’observabilité, c’est la capacité à comprendre l’état interne d’un système à partir de ses sorties externes (métriques, logs, traces) — pas seulement « avoir un dashboard vert ». Ce dossier construit d’abord les modèles mentaux et les trois piliers, puis les pratiques (alerting, dashboards, incidents, K8s), et termine par des labs concrets (Prometheus, Grafana, Loki).

Public : admin Linux à l’aise (`02`), idéalement après un premier contact conteneurs / apps cloud-native (`10`) pour que les labs et l’observabilité Kubernetes parlent vraiment. Les notions SRE / SLO de `01-culture-devsecops` trouvent ici leur traduction opérationnelle.

Dans le cursus, ce dossier alimente la fiabilité en prod, les gates de qualité CI/CD (`13`) et le run des services (`07`). Les runbooks rejoignent la documentation (`06`).

## Prérequis

- Dossiers locaux : `02-administration-linux` ; `10-maitriser-la-conteneurisation` utile (apps démo, Prometheus/Grafana en conteneurs, obs K8s) ; `01` pour SLI/SLO/SRE ; `06` utile pour runbooks
- Concepts : HTTP, processus Linux, idée de monitoring classique
- Si dépendance externe : la page observabilité Kubernetes et une partie des labs sont plus riches après `10`

## Logique pédagogique (pourquoi cet ordre)

Le site mélange fondamentaux, pratiques et labs. Ici : **cadre** (observabilité vs monitoring) → **trois signaux** (métriques, logs, traces) → **modèles** (RED/USE/Golden Signals), corrélation, OpenTelemetry, SLI/SLO/SLA, gouvernance → **pratiques** (dashboards, alerting, runbooks, K8s, AIOps) → **labs** séquencés 00→05.

On ne commence pas par Grafana : sans modèle mental, on produit des graphiques décoratifs. Les labs valident la théorie en stack concrète ; AIOps reste en fin de pratiques (bonus, pas fondation).

## Ordre de lecture conseillé

### Phase A — Fondamentaux et signaux

#### 1. Obs (index section)
- **Lien :** `/docs/observabilite/`
- **Pourquoi ici :** Carte de la section : fondamentaux, pratiques, labs — pour situer le parcours.
- **À retenir :**
  - Périmètre observabilité
  - Enchaînement théorie → lab
- [ ] Page lue / pratiquée

#### 2. Fondamentaux (intro)
- **Lien :** `/docs/observabilite/fondamentaux/`
- **Pourquoi ici :** Introduis le bloc conceptuel avant de départager monitoring et observabilité.
- **À retenir :**
  - Objectifs des fondamentaux
  - Lien SRE / ops
- [ ] Page lue / pratiquée

#### 3. Observabilité vs monitoring
- **Lien :** `/docs/observabilite/fondamentaux/observabilite-vs-monitoring/`
- **Pourquoi ici :** Clarifie le vocabulaire : questions connues vs inconnues — base de tout le dossier.
- **À retenir :**
  - Monitoring ≠ observabilité
  - Questions « unknown unknowns »
- [ ] Page lue / pratiquée

#### 4. Métriques
- **Lien :** `/docs/observabilite/fondamentaux/signaux/metriques/`
- **Pourquoi ici :** Premier pilier : séries temporelles, cardinalité — prépare Prometheus en lab.
- **À retenir :**
  - Types de métriques
  - Labels / cardinalité
- [ ] Page lue / pratiquée

#### 5. Logs
- **Lien :** `/docs/observabilite/fondamentaux/signaux/logs/`
- **Pourquoi ici :** Deuxième pilier : événements textuels, structuration — prépare Loki.
- **À retenir :**
  - Logs structurés
  - Niveaux et rétention (idée)
- [ ] Page lue / pratiquée

#### 6. Traces
- **Lien :** `/docs/observabilite/fondamentaux/signaux/traces/`
- **Pourquoi ici :** Troisième pilier : parcours d’une requête distribuée — indispensable cloud-native (`10`).
- **À retenir :**
  - Span / trace
  - Contexte de propagation
- [ ] Page lue / pratiquée

#### 7. Modèles mentaux (RED, USE, Golden Signals)
- **Lien :** `/docs/observabilite/fondamentaux/modeles-mentaux/`
- **Pourquoi ici :** Après les signaux : grilles pour savoir *quoi* mesurer (service vs ressource).
- **À retenir :**
  - Golden Signals / RED / USE
  - Quand appliquer lequel
- [ ] Page lue / pratiquée

#### 8. Corrélation des signaux
- **Lien :** `/docs/observabilite/fondamentaux/correlation/`
- **Pourquoi ici :** Relier métriques ↔ logs ↔ traces pour diagnostiquer — cœur de l’observabilité moderne.
- **À retenir :**
  - Exemplars / trace IDs
  - Workflow d’investigation
- [ ] Page lue / pratiquée

#### 9. OpenTelemetry
- **Lien :** `/docs/observabilite/fondamentaux/opentelemetry/`
- **Pourquoi ici :** Standard d’instrumentation multi-signaux ; place après avoir compris les trois piliers.
- **À retenir :**
  - API / SDK / Collector (idée)
  - Vendor-neutral
- [ ] Page lue / pratiquée

#### 10. SLI / SLO / SLA
- **Lien :** `/docs/observabilite/fondamentaux/sli-slo-sla/`
- **Pourquoi ici :** Relie mesures et objectifs de fiabilité (culture SRE de `01`) avant gouvernance et alerting.
- **À retenir :**
  - SLI vs SLO vs SLA
  - Error budget (idée)
- [ ] Page lue / pratiquée

#### 11. Gouvernance
- **Lien :** `/docs/observabilite/fondamentaux/gouvernance/`
- **Pourquoi ici :** Coûts, rétention, ownership des signaux — mature le dispositif avant les pratiques dashboards.
- **À retenir :**
  - Politiques de rétention
  - Ownership observabilité
- [ ] Page lue / pratiquée

### Phase B — Pratiques opérationnelles

#### 12. Pratiques (intro)
- **Lien :** `/docs/observabilite/pratiques/`
- **Pourquoi ici :** Transition fondamentaux → usages quotidiens (dashboards, alertes, incidents).
- **À retenir :**
  - Panorama des pratiques
  - Lien avec les labs
- [ ] Page lue / pratiquée

#### 13. Dashboards utiles
- **Lien :** `/docs/observabilite/pratiques/dashboards/`
- **Pourquoi ici :** Concevoir des vues actionnables (pas des murs de graphes) avant l’alerting.
- **À retenir :**
  - Audience d’un dashboard
  - Anti-patterns UI
- [ ] Page lue / pratiquée

#### 14. Alerting efficace
- **Lien :** `/docs/observabilite/pratiques/alerting/`
- **Pourquoi ici :** Alertes sur symptômes / SLO, pas sur bruit — après dashboards et SLI/SLO.
- **À retenir :**
  - Alertes actionnables
  - Fatigue d’alertes
- [ ] Page lue / pratiquée

#### 15. Runbooks et incidents
- **Lien :** `/docs/observabilite/pratiques/runbooks-incident/`
- **Pourquoi ici :** Relie alerte → procédure (`06-documenter`) → résolution ; culture incident.
- **À retenir :**
  - Lien alerte / runbook
  - Rituel d’incident
- [ ] Page lue / pratiquée

#### 16. Observabilité Kubernetes
- **Lien :** `/docs/observabilite/pratiques/observabilite-kubernetes/`
- **Pourquoi ici :** Spécificités K8s (métriques cluster, pods, control plane) — plus clair après `10`.
- **À retenir :**
  - Signaux cluster vs app
  - Patterns cloud-native
- [ ] Page lue / pratiquée

#### 17. AIOps : l'IA pour l'exploitation
- **Lien :** `/docs/observabilite/pratiques/aiops/`
- **Pourquoi ici :** Bonus en fin de pratiques : assistance à la détection/corrélation — après les fondamentaux solides.
- **À retenir :**
  - Promesses et limites
  - Ne pas remplacer modèles + runbooks
- [ ] Page lue / pratiquée

### Phase C — Labs

#### 18. Formation Labs (intro)
- **Lien :** `/docs/observabilite/labs/`
- **Pourquoi ici :** Cadre de la série lab ; prépare setup et enchaînement 00→05.
- **À retenir :**
  - Objectifs des labs
  - Prérequis machine
- [ ] Page lue / pratiquée

#### 19. 00. Setup
- **Lien :** `/docs/observabilite/labs/00-setup/`
- **Pourquoi ici :** Environnement de lab (souvent Docker/`10`) avant toute stack métriques.
- **À retenir :**
  - Préparer le lab
  - Vérifier les prérequis
- [ ] Page lue / pratiquée

#### 20. 01. Application démo
- **Lien :** `/docs/observabilite/labs/01-demo-app/`
- **Pourquoi ici :** Charge de travail instrumentable avant Prometheus — quelque chose à observer.
- **À retenir :**
  - Déployer l’app démo
  - Endpoints / métriques exposées
- [ ] Page lue / pratiquée

#### 21. 02. Prometheus
- **Lien :** `/docs/observabilite/labs/02-prometheus/`
- **Pourquoi ici :** Collecte de métriques concrète ; ancre la phase A « métriques ».
- **À retenir :**
  - Scraping / targets
  - PromQL de base
- [ ] Page lue / pratiquée

#### 22. 03. Grafana
- **Lien :** `/docs/observabilite/labs/03-grafana/`
- **Pourquoi ici :** Visualisation après Prometheus ; applique « dashboards utiles ».
- **À retenir :**
  - Datasource Prometheus
  - Panels essentiels
- [ ] Page lue / pratiquée

#### 23. 04. Alerting
- **Lien :** `/docs/observabilite/labs/04-alerting/`
- **Pourquoi ici :** Met en pratique l’alerting efficace sur la stack lab.
- **À retenir :**
  - Règles d’alerte
  - Notification (idée)
- [ ] Page lue / pratiquée

#### 24. 05. Loki
- **Lien :** `/docs/observabilite/labs/05-loki/`
- **Pourquoi ici :** Clôture avec les logs (pilier 2) et la corrélation métriques/logs dans Grafana.
- **À retenir :**
  - Ingestion Loki
  - Requêtes LogQL de base
- [ ] Page lue / pratiquée

## Compétences acquises

- Distinguer monitoring et observabilité ; mobiliser métriques, logs et traces
- Appliquer RED/USE/Golden Signals, corréler les signaux et situer OpenTelemetry
- Définir SLI/SLO et des pratiques de gouvernance / alerting / dashboards
- Relier alertes, runbooks et incidents ; situer l’obs Kubernetes
- Mettre en place un lab Prometheus + Grafana + alerting + Loki

## Checklist globale

- [ ] Phase A terminée
- [ ] Phase B terminée
- [ ] Phase C terminée
- [ ] Dossier validé
