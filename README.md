# 🐹 Hamster-Klassenzimmer

Lern-Plattform zum Programmieren mit dem Hamster – mit **Lehrer- und Schüler-Logins**,
Klassen, Aufgaben (mit Territorium-Editor), Abgaben und Abgabe-Matrix.

**Live: https://laurensooo4.github.io/hamster-simulator/**

## Demo-Logins

| Rolle | Login |
|---|---|
| 👨‍🏫 Lehrer | `testlehrer` / `mainmixaufmute` |
| 🎒 Schüler | `max.muster` / `passwort123` |

Oder neu registrieren → Rolle wählen → Schüler:innen treten mit einem Klassencode bei.

## Funktionen

- **Logins** (Username + Passwort, sicher gehasht über Supabase)
- **Lehrer:** Klassen anlegen (mit Einlade-Code), Aufgaben stellen (Beschreibung +
  Territorium per Editor + optionaler Auto-Check), **Abgabe-Matrix**, Abgaben ansehen
- **Schüler:** Klasse per Code beitreten, Aufgaben im eingebetteten Hamster-Simulator
  lösen, **Abgeben**-Button
- **Auto-Check:** prüft die Abgabe automatisch (z. B. „alle Körner gefressen")
- Voller Hamster-Java-Sprachumfang (Schleifen, Verzweigungen, Prozeduren, Arrays,
  `String`, `Territorium`-Abfragen …) im Editor mit Syntax-Highlighting & Einzelschritt

## Technik

- **Frontend:** statisch (HTML/CSS/JS), gehostet auf GitHub Pages
- **Backend:** [Supabase](https://supabase.com) (PostgreSQL + Auth), Zugriff über
  Row-Level-Security. Schema/Regeln in [`schema.sql`](schema.sql), Einrichtung in
  [`SETUP.md`](SETUP.md).
- `engine.js` enthält den kompletten Hamster-Simulator als wiederverwendbare Komponente.

## Hinweise

- Der frühere **freie Simulator** (ohne Login) liegt lokal im Ordner
  `freier-simulator-backup/` und in der Git-Historie dieses Repos.
- Änderungen veröffentlichen: `index.html`/`app.js`/`engine.js` anpassen, dann
  `git push` (bzw. `publish.bat`) – GitHub Pages baut in ~1 Minute neu.
