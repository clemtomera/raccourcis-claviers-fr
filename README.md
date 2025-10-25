# 🚀 Guide : Configurer AutoHotkey pour des raccourcis typographiques FR

Ce guide explique comment installer **AutoHotkey**, ajouter un script personnalisé pour insérer facilement des caractères typographiques français peu accessibles sur les claviers AZERTY standard, et le lancer **automatiquement au démarrage** sous Windows.

### Liste des raccourcis proposés

| Raccourci               | Résultat        | Notes / Usage |
|-------------------------|-----------------|---------------|
| `Alt + Espace`          | (NBSP)          | Espace insécable (U+00A0), recommandé avant `:` |
| `Shift + Alt + Espace`  | (NNBSP)         | Espace fine insécable (U+202F), recommandé avant `; ? !` |
| `Alt + (`               | «               | Guillemet ouvrant + espace insécable |
| `Alt + )`               |  »              | Espace insécable + guillemet fermant |
| `Alt + '`               | ’               | Apostrophe typographique (U+2019), préférable à `'` droit |
| `Alt + ;`               | ·               | Point médian (U+00B7), utilisé en écriture inclusive (`étudiant·e·s`) |
| `Shift + Alt + ;`       | …               | Points de suspension (U+2026) |
| `Alt + é`               | É               | É accent aigu majuscule (U+00C9) |
| `Alt + è`               | È               | È accent grave majuscule (U+00C8) |
| `Alt + à`               | À               | A accent grave majuscule (U+00C0) |
| `Alt + ç`               | Ç               | C cédille majuscule (U+00C7) |
| `Alt + a`               | æ               | Ligature minuscule, ex. `Lætitia` |
| `Shift + Alt + a`       | Æ               | Ligature majuscule, ex. `Æschylus` |
| `Alt + o`               | œ               | Ligature minuscule, obligatoire en français (`cœur`, `œuvre`) |
| `Shift + Alt + o`       | Œ               | Ligature majuscule, ex. `Œdipe` |

## 1. Télécharger et installer AutoHotkey

- Télécharger et installer la v2 d’AutoHotkey : [https://www.autohotkey.com/](https://www.autohotkey.com/).
- Téléchargez le fichier de ce répertoire nommé `raccourcis.ahk`, customisez-le à vos souhaits.

## 2. Importer les raccourcis

Exécuter le script

- Double-cliquez sur `raccourcis.ahk`, une fenêtre de validation doit apparaître.
- Vous devriez voir une icône verte avec un H blanc dans la barre des tâches : si c’est les cas, le script est bien actif.
- Testez les différents raccourcis dans une zone de texte.

## 3. Vérifier au redémarrage

- Redémarrez votre ordinateur.
- Vérifiez que l’icône verte H est bien présente.
- Testez vos raccourcis : tout doit fonctionner automatiquement.

## FAQ

**Q : Comment supprimer les raccourcis une fois installés ?**

- Appuyez sur `Win + R`.
- Tapez : `shell:startup`.
- Supprimer le fichier en `.ahk` en question.

**Q : J’ai un message d’erreur lors de l’exécution du fichier de raccourcis, que faire ?**

R : Vérifiez que vous avez bien téléchargé la v2 d’AutoHotkey, puis ressayez d’executer le script. Si cela ne fonctionne toujours pas, quelque chose a probablement besoin d’être mis à jour dans le script : allez dans l’onglet « Issues » de ce répertoire, et créez une nouvelle issue contentant le maximum d’information pouvant aider à la résolution de votre problème (message d’erreur, etc.).

**Q : Je veux supprimer certains raccourcis, c’est possible ?**

R : Oui, vous pouvez ouvrir le fichier `.ahk` dans un éditeur de texte et dans la section `; --- Raccourcis ---` supprimer les lignes que vous ne voulez pas.

**Q : Je veux rajouter d’autres raccourcis, c’est possible ?**

R : Oui, il va falloir bidouiller un peu par contre. Vous pouvez partir de ce script et l’étendre en utilisant [la documentation d’AutoHotkey](https://www.autohotkey.com/docs/v2/Tutorial.htm) pour savoir comment créer vos raccourcis customisés.
