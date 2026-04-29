# Commandes utiles — LinkedIn Lead Machine

> Copier-coller ces commandes dans Claude Code (Terminal Mac) selon le besoin.

---

## 🔍 Prospection LinkedIn

```
Lance une prospection LinkedIn selon mon persona (persona.md).
Fais 5 à 8 recherches avec des variantes de mots-clés.
Filtre selon mes critères ICP, déduplique, et insère les leads qualifiés dans Airtable.
Rapport final : combien de leads trouvés, combien insérés, pourquoi les autres ont été exclus.
```

---

## ✉️ Génération d'icebreakers

```
Génère les icebreakers pour les leads Airtable qui n'en ont pas encore.
Lis icebreaker-template.md et persona.md d'abord.
Montre-moi 2 exemples avant de générer en masse.
Attends ma validation avant de tout écrire dans Airtable.
```

---

## 📊 Rapport hebdomadaire manuel

```
Lis les fichiers objectifs-windoo.md et rapport-template.md.
Interroge HubSpot pour récupérer les deals en cours, les contacts créés cette semaine, les tâches, et les activités récentes.
Interroge aussi Airtable pour le statut de mes leads LinkedIn.
Génère mon rapport hebdomadaire selon le template.
Puis envoie ce rapport en brouillon Gmail à antoine@windoo.fr avec comme objet "Rapport Windoo semaine du [LUNDI]".
```

---

## 📋 Consultation CRM

```
Montre-moi mes leads Airtable avec le statut "Nouveau" qui n'ont pas encore d'icebreaker.
```

```
Montre-moi tous mes deals HubSpot actifs avec leur dernière activité.
```

```
Quels leads LinkedIn sont dans Airtable depuis plus de 7 jours sans avoir été contactés ?
```

---

## 🔄 Mise à jour statut lead

```
Mets à jour le lead [NOM] dans Airtable : statut → Contacté, note : [TA NOTE]
```

---

## 📈 Stats rapides

```
Donne-moi un résumé rapide : combien de leads par statut dans Airtable, et combien de deals par étape dans HubSpot.
```

---

## 🛠 Debug / Maintenance

### Si LinkedIn ne répond plus :
```
mcp__linkedin__close_session() puis relancer la recherche
```

### Si Airtable retourne une erreur de champ :
Vérifier les noms exacts dans `config.md`

### Relancer le setup complet :
```
/setup
```
