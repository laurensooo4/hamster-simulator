# 🐹 Hamster-Simulator – Web-Edition

Eine browserbasierte Nachbildung des Java-Hamster-Modells (nach D. Boles) – zum
Programmieren-Lernen mit dem Hamster, komplett ohne Java-Installation.

Alles steckt in **einer einzigen Datei**: [`index.html`](index.html). Keine
Abhängigkeiten, kein Internet nötig, läuft offline.

## Starten

**Variante A – einfach doppelklicken**
`index.html` im Datei-Explorer doppelklicken → öffnet sich im Browser. Fertig.

**Variante B – als „echte" Website / im Netzwerk (z. B. Raspberry Pi)**
Im Ordner einen kleinen Webserver starten:

```bash
# Python (auf dem Pi vorinstalliert)
python3 -m http.server 8765
```

Dann im Browser öffnen:
- am Gerät selbst: `http://localhost:8765`
- von anderen Geräten im WLAN: `http://<IP-des-Pi>:8765`

Soll die Seite beim Hochfahren des Pi automatisch laufen, lässt sich das per
`systemd`-Service einrichten – sag einfach Bescheid.

## Was kann der Simulator?

- **Programmieren in der gewohnten Hamster-Java-Syntax**
  `vor()`, `linksUm()`, `gib()`, `nimm()`, `vornFrei()`, `kornDa()`, `maulLeer()`,
  `schreib(...)`, `getReihe()`, `getSpalte()`, `getBlickrichtung()`, `getAnzahlKoerner()`
- **`Territorium`-Abfragen:** `Territorium.getAnzahlReihen()`, `getAnzahlSpalten()`,
  `mauerDa(r,s)`, `getAnzahlKoerner()` und `getAnzahlKoerner(r,s)`.
- **Kontrollstrukturen:** `if/else`, `while`, `do…while`, `for`, `break`, `continue`,
  eigene Prozeduren `void name() {…}` und Testfunktionen `boolean test() {…}`,
  Parameter, `&&  ||  !`, Vergleiche, Rechnen.
- **Datentypen:** `int`, `boolean`, **`String`** (mit `.length()`, `.equals()`,
  `.substring()`, `.toUpperCase()` …) und **Arrays** (`int[] a = new int[5];`,
  `a[i]`, `a.length`, Array-Literale `{1, 2, 3}`).
- **Animiertes Territorium** mit Gras, Mauern und Körnern.
- **Steuerung:** Start, Pause/Weiter, Einzelschritt, Stopp, Tempo-Regler, **Ton an/aus**.
- **Editier-Modus:** Mauern/Körner/Hamster per Klick setzen, Feldgröße ändern,
  Körner im Maul festlegen, eigene Territorien speichern (im Browser).
- **Datei-Export/Import:** Programme (`.ham`) und Territorien (`.json`)
  als Datei speichern und wieder laden (Buttons ⤓ / ⤒).
- **Beispielprogramme & Beispiel-Territorien** zum direkten Ausprobieren.
- Echte Hamster-Fehlermeldungen: `MauerDaException`, `MaulLeerException`,
  `KachelLeerException` – mit Zeilennummer.

## Beispiel

```java
// Der Hamster läuft, bis eine Mauer im Weg ist.
void main() {
    while (vornFrei()) {
        vor();
    }
}
```

## Grenzen

Nur die **imperative** Hamster-Syntax (Methoden + `void main()`). Der
objektorientierte Modus mit mehreren Hamstern (`new Hamster(...)`) und volle
Java-Klassen werden bewusst nicht unterstützt – dafür gibt es weiterhin den
originalen Desktop-Simulator (`hamstersimulator.jar`, benötigt Java).
