# Configuration technique

> Ce fichier est genere automatiquement par la commande /setup.
> Il contient les IDs Airtable et les parametres techniques.
> NE PAS modifier manuellement sauf si tu sais ce que tu fais.

---

## Airtable

### Base

- **Base ID** : appCjM2LomnzUqiLs
- **API Key** : Configuree dans ~/.claude/mcp.json (ne pas stocker ici)

### Table

| Table | ID | Description |
|-------|-----|-------------|
| Leads | tbljXdOkHvasqYHk4 | Prospects LinkedIn + icebreakers |

### Champs de la table Leads

> Structure creee par /setup. Contient les infos LinkedIn essentielles + icebreaker.

| Champ | Type | Notes |
|-------|------|-------|
| Nom complet | singleLineText | Champ principal (primary) |
| Prenom | singleLineText | Extrait du nom complet |
| Titre de poste | singleLineText | Titre LinkedIn exact |
| Entreprise | singleLineText | Nom de l'entreprise |
| Localisation | singleLineText | Ville / pays |
| Secteur d'activite | singleLineText | Secteur deduit du profil |
| Degre de connexion | singleLineText | 1er, 2eme, 3eme degre |
| Relations en commun | number | Nombre de relations partagees |
| Statut | singleSelect | Suivi de la prospection |
| Icebreaker | multilineText | Message d'approche genere |
| Notes | multilineText | Infos complementaires |
| Date d'ajout | date | Date d'insertion dans le CRM |

### Options des champs singleSelect

> Claude DOIT utiliser EXACTEMENT ces valeurs lors de l'insertion.

**Statut :**
Nouveau, Contacte, Interesse, Rendez-vous, Client, Perdu

### Valeurs par defaut pour un nouveau lead

```json
{
  "Statut": "Nouveau",
  "Date d'ajout": "YYYY-MM-DD"
}
```

---

## Personnalisation (optionnel)

Tables supplementaires : Aucune par defaut

---

## Etat du setup

- [x] MCPs configures (linkedin + airtable dans ~/.claude/mcp.json)
- [x] Persona defini (persona.md)
- [x] Template icebreaker defini (icebreaker-template.md)
- [ ] Table Leads creee dans Airtable (a faire manuellement — voir instructions ci-dessous)
- [ ] Session LinkedIn connectee (a faire en local)
- [ ] Premier test de recherche LinkedIn reussi

---

## Instructions : creer la table Leads dans Airtable

Si la table n'existe pas encore, voici les champs a creer dans Airtable :

1. Ouvre ta base Airtable : https://airtable.com/appCjM2LomnzUqiLs
2. Cree une table "Leads" (ou renomme la table existante)
3. Ajoute ces champs dans cet ordre :
   - Nom complet (Text) — champ principal
   - Prenom (Text)
   - Titre de poste (Text)
   - Entreprise (Text)
   - Localisation (Text)
   - Secteur d'activite (Text)
   - Degre de connexion (Text)
   - Relations en commun (Number)
   - Statut (Single select) — options : Nouveau / Contacte / Interesse / Rendez-vous / Client / Perdu
   - Icebreaker (Long text)
   - Notes (Long text)
   - Date d'ajout (Date)
