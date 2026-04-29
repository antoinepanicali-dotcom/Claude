#!/bin/bash
# Rapport hebdomadaire automatique — Windoo
# Tourne chaque lundi à 8h via crontab
# Crontab : 0 8 * * 1 /Users/panicali/scraper-linkedin/rapport-auto.sh

cd /Users/panicali/scraper-linkedin

/Users/panicali/.local/bin/claude -p "Lis les fichiers objectifs-windoo.md et rapport-template.md. Ensuite interroge HubSpot pour récupérer les deals en cours, les contacts créés cette semaine, les tâches, et les activités récentes. Interroge aussi Airtable pour le statut de mes leads LinkedIn. Génère mon rapport hebdomadaire selon le template. Puis envoie ce rapport en brouillon Gmail à antoine@windoo.fr avec comme objet 'Rapport Windoo semaine du lundi'." >> /tmp/rapport-windoo.log 2>&1
