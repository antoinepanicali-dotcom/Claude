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

> Noms EXACTS des champs tels qu'ils existent dans Airtable.
> Claude DOIT utiliser ces noms exactement lors des insertions.

| Champ Airtable | Type | Notes |
|----------------|------|-------|
| Lead Name | singleLineText | Champ principal (primary) = Nom complet |
| Company Name | singleLineText | Nom de l'entreprise |
| Notes | multilineText | Infos complementaires |
| Prénom | singleLineText | Prénom du lead |
| Titre de poste | singleLineText | Titre LinkedIn exact |
| Localisation | singleLineText | Ville / pays |
| Secteur d'activité | singleLineText | Secteur déduit du profil |
| Degré de connexion | singleLineText | 1er, 2ème, 3ème degré |
| Relations en commun | number | Nombre de relations partagées |
| Statut | singleSelect | Suivi de la prospection |
| Icebreaker | multilineText | Message d'approche généré |
| Date d'ajout | date | Date d'insertion dans le CRM |

### Options des champs singleSelect

> Claude DOIT utiliser EXACTEMENT ces valeurs lors de l'insertion.

**Statut :**
Nouveau, Contacté, Intéressé, Rendez-vous, Client, Perdu

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
- [x] Table Leads configuree dans Airtable (appCjM2LomnzUqiLs / tbljXdOkHvasqYHk4)
- [x] Session LinkedIn connectee (profil sauvegarde sur C:\Users\Admin\.linkedin-mcp\profile)
- [ ] Premier test de recherche LinkedIn reussi
