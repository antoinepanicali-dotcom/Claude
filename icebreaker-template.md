# Template Icebreaker — Windoo / Antoine Panicali

> Ce fichier est genere automatiquement par /setup.
> Modifie-le a tout moment et relance /icebreaker pour regenerer les messages.

---

## Structure generale du message

```
Bonjour {prenom},

Je vois que vous occupez le poste de {titre} chez {entreprise} dans le secteur {secteur} — je me suis permis de vous contacter.

{question}

Chez Windoo, nous accompagnons des entreprises comme la vôtre sur ce sujet. {pitch_contextuel}

Si cela vous parle, je serais ravi d'en échanger 20 minutes avec vous.
→ https://meetings-eu1.hubspot.com/panicali

Bien cordialement,
Antoine Panicali — Windoo
```

---

## Banque de questions (4 points d'entrée)

> Claude choisit la question ET le pitch selon le profil du lead (titre, secteur, taille entreprise).

### Point d'entrée 1 — Management (prioritaire)

**Question :**
"Comment accompagnez-vous vos managers chez {entreprise} aujourd'hui ? Vous avez un parcours structuré ou plutôt des formations ponctuelles ?"

**Pitch associé :**
"Nous intervenons auprès de DRH qui constatent que leurs managers sont souvent promus pour leurs compétences techniques, mais n'ont jamais été formés au management humain — et les impacts sur les équipes se font sentir."

---

### Point d'entrée 2 — RPS / Bien-être au travail

**Question :**
"Comment gérez-vous actuellement la prévention des risques psychosociaux au sein de votre organisation ?"

**Pitch associé :**
"Nous aidons des entreprises à structurer une approche proactive des RPS — avant que les signaux faibles ne deviennent des situations critiques — via des formations ciblées et des outils de mesure du climat social."

---

### Point d'entrée 3 — Intelligence Artificielle & transformation RH

**Question :**
"L'intégration de l'IA dans vos processus RH est-elle un sujet en cours chez vous ?"

**Pitch associé :**
"Nous accompagnons des équipes RH et des managers à comprendre et utiliser concrètement l'IA dans leur quotidien — sans jargon, avec des cas pratiques adaptés à leur métier."

---

### Point d'entrée 4 — Engagement collaborateurs / Windoo Connect

**Question :**
"Disposez-vous d'un outil pour recueillir et analyser les feedbacks de vos collaborateurs (baromètres d'engagement, enquêtes d'arrivée/départ) ?"

**Pitch associé :**
"Windoo Connect est notre solution SaaS dédiée aux enquêtes collaborateurs — simple à déployer, puissante pour analyser le climat social et prendre des décisions RH éclairées."

---

## Regles de redaction

### L'ACCROCHE (phrase de contexte)
- 1 phrase, sobre et factuelle
- Mentionner le titre + l'entreprise + éventuellement le secteur
- Ton professionnel, vouvoiement
- Jamais de compliment générique ("votre parcours est impressionnant")
- Exemple : "Je vois que vous occupez le poste de DRH chez Vinci Construction dans le secteur BTP — je me suis permis de vous contacter."

### La QUESTION
- UNE seule question par message
- Choisie selon le profil du lead :
  - DRH entreprise 100-500 collab → Management en priorité
  - Secteur en tension RH (industrie, santé) → RPS
  - Scale-up tech / DSI / Responsable IA → IA
  - Si profil senior avec périmètre large → Engagement / Windoo Connect

### Le PITCH
- 2-3 phrases max
- Insight terrain (ce qu'on observe chez les clients) plutôt que pitch produit
- Toujours finir sur le lien de RDV 20 minutes

### Ton general
- Professionnel, vouvoiement formel
- Direct et authentique
- Pas de "j'espère que vous allez bien"
- Pas de formules creuses

---

## Variables disponibles

| Variable | Description | Source |
|----------|-------------|--------|
| `{prenom}` | Prenom du lead | CRM Airtable |
| `{titre}` | Titre de poste | CRM Airtable |
| `{entreprise}` | Nom de l'entreprise | CRM Airtable |
| `{secteur}` | Secteur d'activite | CRM Airtable |
| `{localisation}` | Ville / region | CRM Airtable |
| `{relations_communes}` | Nombre de relations en commun | LinkedIn |
| `{question}` | Question choisie par Claude selon le profil | IA |
| `{pitch_contextuel}` | Pitch adapte au point d'entree | IA |
