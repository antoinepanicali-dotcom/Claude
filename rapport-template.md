# Template Rapport Hebdomadaire — Windoo

> Claude utilise ce template chaque lundi matin pour générer le rapport.
> Format : max 1 page, emojis pour les statuts, ton direct.

---

## Template du rapport

```
📊 RAPPORT WINDOO — Semaine du [LUNDI DATE]

---

1. 💰 PIPELINE ANTOINE
[Liste des deals actifs avec montant, statut, dernière activité]
Total pipeline : [MONTANT] €

---

2. ✅ SIGNATURES vs OBJECTIFS
Signatures ce mois : [MONTANT] € / 37 500 € objectif Antoine
→ [% atteint] — [🟢 En bonne voie / 🟡 À surveiller / 🔴 En retard]

---

3. 📅 ACTIVITÉ RDV
RDV cette semaine : [N] / 3 objectif
[Liste des RDV avec entreprise et statut]

---

4. 🚨 ALERTES PRIORITAIRES
[Liste des alertes selon les seuils définis dans objectifs-windoo.md]
- Deals > 10 jours sans activité
- Devis > 5 jours sans réponse
- Leads LinkedIn > 7 jours sans contact

---

5. 👥 LEADS LINKEDIN (Airtable)
Total leads : [N]
Nouveaux cette semaine : [N]
Avec icebreaker : [N] / [N] total
Sans icebreaker : [N] → À traiter en priorité

---

6. 🎯 3 PRIORITÉS DE LA SEMAINE
1. [Priorité 1]
2. [Priorité 2]
3. [Priorité 3]

---

7. 📈 CHIFFRE CLÉ DE LA SEMAINE
[Un insight marquant : meilleur deal, tendance, opportunité]

---

Bonne semaine Antoine ! 🚀
```

---

## Instructions pour Claude

1. Interroger HubSpot pour : deals actifs, signatures du mois, réunions de la semaine, tâches en retard
2. Interroger Airtable pour : nombre de leads, statuts, leads sans icebreaker
3. Calculer les % vs objectifs (objectifs-windoo.md)
4. Identifier les alertes selon les seuils
5. Proposer 3 priorités actionnables basées sur les données
6. Envoyer en brouillon Gmail à antoine@windoo.fr
   - Objet : "Rapport Windoo semaine du [LUNDI]"
