# Parcours — 06-documenter

> Guide d'apprentissage réorganisé pour un profil débutant → intermédiaire.
> Source : https://blog.stephane-robert.info/docs/documenter/
> Les liens sont relatifs au site (chemins `/docs/...`).

## Vision du dossier

Documenter n’est pas une tâche annexe : c’est ce qui rend une équipe scalable, un incident récupérable et une décision d’architecture traçable. Ce dossier te fait passer de « on a un wiki mort » à une culture Docs-as-Code avec artefacts concrets (ADR, runbooks, postmortems) et une stack de publication adaptée.

Le profil visé a déjà assimilé la culture DevSecOps (`01-culture-devsecops`) : partage, feedback, blameless. Tu peux suivre ce dossier tôt, en parallèle de Linux (`02`), car peu de prérequis techniques lourds — surtout de la clarté et de la discipline.

Dans le parcours global, la documentation irrigue tout : services (`07`), IaC (`09`), observabilité (`11`, runbooks), CI/CD (`13`). Les schémas C4 préparent aussi la communication d’architecture avant cloud et conteneurs.

## Prérequis

- Dossiers locaux : `01-culture-devsecops` (culture du partage, postmortems blameless, mesure)
- Concepts : Markdown de base, Git utile (idéalement notions de `04-developper-des-applications`)
- Si dépendance externe : aucun blocage fort ; les générateurs de sites (MkDocs, Hugo…) demandent un terminal (`02`)

## Logique pédagogique (pourquoi cet ordre)

Le site présente souvent outils et fondations côte à côte. Ici l’ordre est intentionnel : **pourquoi documenter** → **Doc as Code et garde-fous** (ownership, reviews, anti-patterns, maturité) → **artefacts de conception et d’ops** (ADR, service overview, doc ops, runbooks, postmortems, checklists) → **choix d’outils puis catalogues** (MkDocs, Hugo, Docusaurus, Antora, Astro/Starlight, slides) → **modèle C4** pour visualiser l’architecture.

On évite de choisir un générateur avant d’avoir clarifié le besoin et les types de documents. Les outils de slides (RevealJS, Slidev) restent en fin de catalogue : utiles, mais secondaires face à la doc produit/ops. C4 clôture comme langage commun de schémas.

## Ordre de lecture conseillé

### Phase A — Pourquoi et Doc as Code

#### 1. Doc (index section)
- **Lien :** `/docs/documenter/`
- **Pourquoi ici :** Carte de la section documentation : repère fondations, conception et outils avant de séquencer.
- **À retenir :**
  - Périmètre « documenter »
  - Lien culture ↔ artefacts
- [ ] Page lue / pratiquée

#### 2. Pourquoi documenter est vital
- **Lien :** `/docs/documenter/fondations/pourquoi-documenter/`
- **Pourquoi ici :** Motivation et ROI : on commence par le « pourquoi » pour éviter de traiter la doc comme une corvée cosmétique.
- **À retenir :**
  - Coût de la non-documentation
  - Publics et usages
- [ ] Page lue / pratiquée

#### 3. Pourquoi Doc as Code ?
- **Lien :** `/docs/documenter/fondations/docs-as-code/`
- **Pourquoi ici :** Cadre méthodologique : versionner, reviewer, publier la doc comme du code — aligné DevOps (`01`).
- **À retenir :**
  - Doc dans le dépôt / PR
  - Pipeline de publication
- [ ] Page lue / pratiquée

#### 4. Ownership et Definition of Done
- **Lien :** `/docs/documenter/fondations/ownership-et-dod/`
- **Pourquoi ici :** Sans propriétaire et critères « terminé », Docs-as-Code pourrit. Pose les règles d’équipe.
- **À retenir :**
  - Qui possède quelle page
  - DoD documentation
- [ ] Page lue / pratiquée

#### 5. Reviews et fraîcheur
- **Lien :** `/docs/documenter/fondations/reviews-et-fraicheur/`
- **Pourquoi ici :** Après ownership : comment garder la doc vivante (revue, dates, obsolescence).
- **À retenir :**
  - Cycles de review
  - Signaux de doc périmée
- [ ] Page lue / pratiquée

#### 6. Anti-patterns à éviter
- **Lien :** `/docs/documenter/fondations/anti-patterns/`
- **Pourquoi ici :** Catalogue d’erreurs classiques (wiki fantôme, doc hors repo, etc.) une fois le cadre positif posé.
- **À retenir :**
  - Anti-patterns fréquents
  - Contre-mesures
- [ ] Page lue / pratiquée

#### 7. Auto-évaluation maturité
- **Lien :** `/docs/documenter/fondations/auto-evaluation/`
- **Pourquoi ici :** Jalonne où tu en es avant de produire des artefacts ; utile en début et en fin de dossier.
- **À retenir :**
  - Niveaux de maturité
  - Axes d’amélioration
- [ ] Page lue / pratiquée

### Phase B — Artefacts : décisions, ops, incidents

#### 8. ADR
- **Lien :** `/docs/documenter/concevoir/adr/`
- **Pourquoi ici :** Premier artefact « conception » : Architecture Decision Records pour tracer le pourquoi des choix techniques.
- **À retenir :**
  - Structure d’un ADR
  - Quand en écrire un
- [ ] Page lue / pratiquée

#### 9. Service Overview
- **Lien :** `/docs/documenter/concevoir/service-overview/`
- **Pourquoi ici :** Vue produit/service : contexte, dépendances, SLO — pont vers ops et observabilité (`11`).
- **À retenir :**
  - Contenu d’une fiche service
  - Lien équipes / run
- [ ] Page lue / pratiquée

#### 10. Documentation opérationnelle
- **Lien :** `/docs/documenter/concevoir/documentation-operationnelle/`
- **Pourquoi ici :** Cadre général de la doc ops avant runbooks et checklists spécialisés.
- **À retenir :**
  - Types de doc ops
  - Publics (astreinte, onboarding)
- [ ] Page lue / pratiquée

#### 11. Runbooks
- **Lien :** `/docs/documenter/concevoir/runbooks/`
- **Pourquoi ici :** Procédures actionnables sous stress ; complémentaire aux alertes (`11-observabilite`).
- **À retenir :**
  - Structure d’un runbook
  - Critères d’exécutabilité
- [ ] Page lue / pratiquée

#### 12. Postmortems
- **Lien :** `/docs/documenter/concevoir/postmortems/`
- **Pourquoi ici :** Apprentissage post-incident (culture blameless de `01`) ; alimente runbooks et ADR.
- **À retenir :**
  - Timeline, causes, actions
  - Blameless postmortem
- [ ] Page lue / pratiquée

#### 13. Checklists
- **Lien :** `/docs/documenter/concevoir/checklists/`
- **Pourquoi ici :** Forme légère pour releases, reviews et opérations répétitives — complète runbooks sans les remplacer.
- **À retenir :**
  - Quand checklist vs runbook
  - Exemples d’usage
- [ ] Page lue / pratiquée

### Phase C — Choisir puis explorer les outils

#### 14. Quels outils choisir ?
- **Lien :** `/docs/documenter/choisir/outils/`
- **Pourquoi ici :** Critères de choix avant le catalogue : besoin, audience, intégration Git/CI — évite le biais « outil à la mode ».
- **À retenir :**
  - Critères de sélection
  - Trade-offs principaux
- [ ] Page lue / pratiquée

#### 15. MkDocs
- **Lien :** `/docs/documenter/mkdocs/`
- **Pourquoi ici :** Premier générateur souvent idéal pour débuter (Markdown, simple, Material). Bon candidat pour ce dépôt d’apprentissage.
- **À retenir :**
  - Structure d’un site MkDocs
  - Publication typique
- [ ] Page lue / pratiquée

#### 16. Hugo
- **Lien :** `/docs/documenter/hugo/`
- **Pourquoi ici :** Alternative performante (Go) ; compare vitesse et modèle de contenu à MkDocs.
- **À retenir :**
  - Points forts Hugo
  - Cas d’usage doc / site
- [ ] Page lue / pratiquée

#### 17. Docusaurus
- **Lien :** `/docs/documenter/docusaurus/`
- **Pourquoi ici :** Stack React/MDX courante pour docs produit ; utile si l’écosystème front est déjà présent (`04`).
- **À retenir :**
  - Versioning de docs
  - Plugins / MDX (notion)
- [ ] Page lue / pratiquée

#### 18. Antora
- **Lien :** `/docs/documenter/antora/`
- **Pourquoi ici :** Doc multi-dépôts / multi-versions (AsciiDoc) — profil plus « plateforme docs » d’entreprise.
- **À retenir :**
  - Modèle multi-repo
  - Quand Antora a du sens
- [ ] Page lue / pratiquée

#### 19. Astro / Starlight (introduction)
- **Lien :** `/docs/documenter/astro/`
- **Pourquoi ici :** Entrée dans l’écosystème Astro Starlight ; base avant blog et collections postmortems.
- **À retenir :**
  - Positionnement Starlight
  - Structure de contenu
- [ ] Page lue / pratiquée

#### 20. Ajouter un blog
- **Lien :** `/docs/documenter/astro/starlight-blog/`
- **Pourquoi ici :** Extension Starlight pour journal d’équipe / changelog narratif — après l’intro Astro.
- **À retenir :**
  - Brancher le blog
  - Séparer docs et articles
- [ ] Page lue / pratiquée

#### 21. Postmortems avec Starlight
- **Lien :** `/docs/documenter/astro/starlight-collections/`
- **Pourquoi ici :** Collections typées (ex. postmortems) : relie l’artefact Phase B à un outil concret.
- **À retenir :**
  - Collections de contenu
  - Modèle postmortem dans le site
- [ ] Page lue / pratiquée

#### 22. RevealJS
- **Lien :** `/docs/documenter/revealjs/`
- **Pourquoi ici :** Sous-phase slides : présentations HTML versionnées — utile formation / démos, après la doc de référence.
- **À retenir :**
  - Slides as code
  - Cas d’usage formation
- [ ] Page lue / pratiquée

#### 23. Slidev
- **Lien :** `/docs/documenter/slidev/`
- **Pourquoi ici :** Alternative Markdown/Vite pour slides ; compare à RevealJS selon stack front.
- **À retenir :**
  - Workflow Slidev
  - Différences vs RevealJS
- [ ] Page lue / pratiquée

### Phase D — Schémas d’architecture

#### 24. Modèle C4
- **Lien :** `/docs/documenter/schemas/c4model/`
- **Pourquoi ici :** Langage de schémas (Context → Containers → Components → Code) en fin de parcours : tu as déjà les artefacts texte ; C4 les rend visuels.
- **À retenir :**
  - Quatre niveaux C4
  - Quand quel niveau
- [ ] Page lue / pratiquée

## Compétences acquises

- Argumenter la valeur de la documentation et appliquer Docs-as-Code
- Définir ownership, DoD, reviews et éviter les anti-patterns
- Rédiger ADR, service overview, runbooks, postmortems et checklists
- Choisir un outil de publication adapté (MkDocs, Hugo, Docusaurus, Antora, Starlight…)
- Produire des slides versionnées et des schémas C4 cohérents

## Checklist globale

- [ ] Phase A terminée
- [ ] Phase B terminée
- [ ] Phase C terminée
- [ ] Phase D terminée
- [ ] Dossier validé
