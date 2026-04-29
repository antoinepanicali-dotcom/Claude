# LinkedIn Lead Machine

**Transforme Claude Code en machine de prospection LinkedIn automatisee.**

Ce template connecte LinkedIn + Airtable + Claude Code pour :
1. Trouver des leads qualifies sur LinkedIn
2. Les stocker dans un CRM Airtable organise
3. Generer des messages d'approche (icebreakers) personnalises

---

## Ce que tu obtiens

| Fonctionnalite | Description |
|----------------|-------------|
| Recherche LinkedIn | Claude cherche des leads selon ton persona cible |
| CRM Airtable | Table Leads auto-generee avec les infos LinkedIn essentielles |
| Icebreakers IA | Messages personnalises bases sur le profil de chaque lead |
| Setup guide | Claude te pose les bonnes questions et configure tout pour toi |

---

## Pre-requis

Avant de commencer, tu as besoin de :

- [x] **Claude Code** installe ([guide d'installation](https://docs.anthropic.com/en/docs/claude-code/overview))
- [ ] **Un compte LinkedIn** avec un profil actif
- [ ] **Un compte Airtable** gratuit ([airtable.com](https://airtable.com))
- [ ] **Un navigateur Chrome/Chromium** installe sur ta machine (pour le scraping LinkedIn)
- [ ] **Python 3.10+** installe (pour le MCP LinkedIn)
- [ ] **Node.js 18+** installe (pour le MCP Airtable)

---

## Installation - Etape par etape

### Etape 1 : Cloner le projet

```bash
git clone https://github.com/PierreEvrard/scraper-linkedin.git
cd linkedin-lead-machine
```

### Etape 2 : Installer le MCP LinkedIn (scraping)

Le MCP LinkedIn utilise un navigateur Chrome automatise pour scraper LinkedIn.

**2.1 - Installer le package**

```bash
# Avec pip (Python)
pip install linkedin-scraper-mcp

# Ou avec uvx (recommande)
pip install uvx
```

**2.2 - Premiere connexion LinkedIn**

Le MCP a besoin de se connecter a ton compte LinkedIn UNE FOIS pour sauvegarder la session.

```bash
# Lancer le navigateur pour se connecter
uvx linkedin-scraper-mcp --login
```

Un navigateur Chrome va s'ouvrir :
1. Connecte-toi a ton compte LinkedIn normalement
2. Complete le 2FA si demande
3. Attends que le terminal affiche "Session saved successfully"
4. Ferme le navigateur

> **Note** : La session est sauvegardee localement. Tu n'auras pas besoin de te reconnecter a chaque fois, mais la session peut expirer apres quelques heures d'inactivite.

**2.3 - Si tu n'as pas Chrome installe**

Le MCP utilise Playwright pour piloter un navigateur. Si Chrome n'est pas detecte :

```bash
# Installer les navigateurs Playwright
playwright install chromium
```

### Etape 3 : Obtenir ta cle API Airtable

1. Va sur [airtable.com/create/tokens](https://airtable.com/create/tokens)
2. Clique sur "Create new token"
3. Donne-lui un nom (ex: "LinkedIn Lead Machine")
4. **Scopes** : ajoute ces permissions :
   - `data.records:read`
   - `data.records:write`
   - `data.recordComments:read`
   - `data.recordComments:write`
   - `schema.bases:read`
   - `schema.bases:write`
5. **Access** : selectionne "All current and future bases" (ou la base specifique)
6. Clique "Create token"
7. **Copie la cle** (commence par `pat...`) - tu en auras besoin a l'etape suivante

### Etape 4 : Configurer les MCPs dans Claude Code

Tu dois ajouter les deux MCPs dans la configuration de Claude Code.

**4.1 - Ouvrir le fichier de config**

```bash
# Le fichier se trouve ici :
# macOS/Linux : ~/.claude/mcp.json
# Si le fichier n'existe pas, cree-le

nano ~/.claude/mcp.json
```

**4.2 - Ajouter les MCPs**

Copie-colle cette configuration (remplace `TA_CLE_API_AIRTABLE` par ta vraie cle) :

```json
{
  "mcpServers": {
    "linkedin": {
      "command": "uvx",
      "args": ["linkedin-scraper-mcp"],
      "env": {}
    },
    "airtable": {
      "command": "npx",
      "args": ["-y", "airtable-mcp-server"],
      "env": {
        "AIRTABLE_API_KEY": "TA_CLE_API_AIRTABLE"
      }
    }
  }
}
```

> **Alternative** : Si tu utilises Claude Code dans VS Code, la config se trouve dans `~/.claude.json` sous la cle `"mcpServers"`.

**4.3 - Si le MCP LinkedIn ne fonctionne pas avec `uvx`**

Tu peux creer un script shell a la place :

```bash
# Creer le script
mkdir -p ~/.claude/scripts
cat > ~/.claude/scripts/linkedin-mcp.sh << 'EOF'
#!/bin/bash
source ~/.zshrc 2>/dev/null || source ~/.bashrc 2>/dev/null
uvx linkedin-scraper-mcp
EOF
chmod +x ~/.claude/scripts/linkedin-mcp.sh
```

Puis dans `mcp.json` :
```json
"linkedin": {
  "command": "/Users/TON_USER/.claude/scripts/linkedin-mcp.sh",
  "args": []
}
```

### Etape 5 : Redemarrer Claude Code

```bash
# Ferme et relance Claude Code pour charger les MCPs
# Dans VS Code : Cmd+Shift+P > "Claude Code: Restart"
# En terminal : quitter et relancer
```

### Etape 6 : Lancer le setup guide

Ouvre le projet dans Claude Code et tape simplement :

```
/setup
```

Claude va te poser toutes les questions necessaires :
- Ton profil (nom, entreprise, offre)
- Ta cible (persona ideal)
- Ton style d'icebreaker
- L'organisation de ton CRM

Il va ensuite configurer automatiquement ta base Airtable et tes fichiers de config.

---

## Utilisation au quotidien

Une fois le setup termine, tu as 3 commandes principales :

### `/prospect` - Trouver des leads

```
/prospect
```
Claude cherche des leads sur LinkedIn selon ton persona et les stocke dans ton CRM.

### `/icebreaker` - Generer des messages

```
/icebreaker
```
Claude genere des messages d'approche personnalises pour tes leads.

### `/crm` - Gerer ton CRM

```
/crm
```
Claude consulte, filtre et met a jour tes leads dans Airtable.

---

## Structure du projet

```
linkedin-lead-machine/
├── README.md              # Ce fichier
├── CLAUDE.md              # Instructions pour Claude Code (ne pas modifier)
├── persona.md             # Ton profil + ta cible (genere par /setup)
├── config.md              # Configuration technique (genere par /setup)
├── icebreaker-template.md # Ton template de message (genere par /setup)
└── .claude/
    └── skills/
        ├── setup/SKILL.md              # Setup wizard interactif
        ├── prospect/SKILL.md           # Recherche LinkedIn
        ├── crm/SKILL.md               # Gestion CRM Airtable
        └── icebreaker/SKILL.md         # Generation de messages
```

---

## Depannage

### "Session expired" / "authentication_failed" sur LinkedIn

La session LinkedIn expire regulierement. Claude gere ca automatiquement en fermant et relancant la session. Si ca persiste :

```bash
# Relancer la connexion manuellement
uvx linkedin-scraper-mcp --login
```

### Le MCP Airtable ne se connecte pas

1. Verifie que ta cle API est correcte dans `~/.claude/mcp.json`
2. Verifie que la cle a les bons scopes (voir Etape 3)
3. Relance Claude Code

### Les skills ne s'affichent pas

Les skills sont dans `.claude/skills/` a la racine du projet. Verifie :

```bash
ls .claude/skills/
# Doit afficher : setup, prospect, crm, icebreaker
```

### LinkedIn bloque les recherches

LinkedIn peut limiter les recherches si tu en fais trop. Conseils :
- Max 5-6 recherches par session
- Attends quelques minutes entre les sessions
- Utilise des mots-cles varies (pas toujours les memes)

---

## Limitations connues

| Limitation | Detail | Workaround |
|-----------|--------|------------|
| 10 resultats max par recherche LinkedIn | Pas de pagination dans le MCP | Varier les mots-cles pour obtenir plus de resultats |
| Session LinkedIn instable | Expire apres quelques requetes | Claude gere automatiquement le `close_session` + retry |
| Pas de champs formula/rollup via API Airtable | L'API ne supporte pas la creation de ces types | Les creer manuellement dans l'UI Airtable |
| Usernames LinkedIn non retournes | La recherche ne donne pas les URLs directes | Enrichissement limite pour certains profils |

---

## Licence

MIT - Utilise, modifie et partage librement.
