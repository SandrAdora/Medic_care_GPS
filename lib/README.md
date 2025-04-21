# MedicareGPSApp Dokumentation

Diese Datei beschreibt einige Funktionen die in diesem Prototyp verwendet wurde. Ziel ist es eine Basis für die Verständnis der Sprache zu ermöglichen.

## Übersicht

Dieses Projekt implementiert eine mobile Anwendung mit Flutter, die eine Benutzeroberfläche für die Eingabe von Namen mit animierten Textfeldern bereitstellt.

## Struktur

### `MedicareGPSApp`
Die `MedicareGPSApp`-Klasse ist ein `StatelessWidget` und stellt das Hauptfenster der Anwendung dar. Sie verwendet `MaterialApp`, um die Anwendung zu erstellen und eine `ThemeData`-Konfiguration bereitzustellen.

#### Wichtige Eigenschaften:

- **Titel:** `"Medic Care Mobile Application"`
- **theme:** Definiert verschiedene Farben für Primär- und Sekundärelemente.
- **Startseite:** `MyHomePage`

---

### `MyHomePage`

`MyHomePage` ist ein `StatefulWidget`, das eine animierte Benutzeroberfläche mit schwebenden Texteingabefeldern und einer Schaltfläche enthält.

#### Eigenschaften:

- **`title`**: Der Titel der Seite.
- **Animationssteuerung**: `SingleTickerProviderStateMixin` wird verwendet, um Animationen effizient zu verwalten.

---

### `_MyHomePageState`
Die `_MyHomePageState`-Klasse steuert die Benutzeroberfläche und Animationen.

#### **Animationen**

- **`AnimationController`**: Steuert die Dauer und Wiederholung der Animation.
- **`Tween<double>`**: Erstellt eine Animation für vertikales Schweben (`begin: -10.0, end: 10.0`).
- **`CurvedAnimation`**: Erzeugt eine sanfte Bewegung (`Curves.easeInOut`).

#### **Methoden**

- **`initState()`**: Initialisiert die Animation beim Laden der Seite.
- **`dispose()`**: Bereinigt die Animation bei der Zerstörung des Widgets.

---

### `build()`

Die `build()`-Methode erzeugt die Benutzeroberfläche mit folgenden Komponenten:

1. **AppBar** – Zeigt den Titel `MyHomePage.title`.
2. **Textfelder** – Zwei `TextField`-Elemente mit animierter vertikaler Bewegung.
3. **Schaltfläche** – Eine `ElevatedButton` mit Hintergrundfarbe `Color.fromARGB(255, 71, 120, 226)` : Blau.

---

## Block für die Ausführung des Programms

        ```
        void main() {
        runApp(APP())
        }
        ```


- Dieser Block ist äquivalent zu dem Block in C/C++ int main(){}
- Exisitert nur in der main.dart datei 
- In dem Block wird die Applikation ausgeführt. ```runApp(APP())```. 
  - runApp ist eine Klasse aus dem Lib: ***import 'flutter:material.dart'***

### `@override`: 

Wrapper, der angibt, dass eine Methode in einer Unterklasse eine Methode aus ihrer Oberklasse überschriebt. 

### `super.` und `extends`

`super`

    Ein schlüsselwort in Dart, um auf die Methoden und Eigenschaften der übergeordneten Klasse (Superklasse) zuzugreifen. Wird verwendet um die  Funktionalität der Superklasse in der Unterklasse zu erweitern 

`extends`

    Ein Schlüsselwort, der die Methoden der Superklasse in der Unklasse erweitert.

## `Scarffold`

Das Scaffold-Widget in Flutter ist die Grundstruktur für eine Material-Design-App. Es bietet eine Standardlayout-Struktur, die häufige UI-Elemente wie eine AppBar, FloatingActionButton, Drawer und BottomNavigationBar enthält.

### Wichtige Eigenschaften von Scaffold ###

[appBar] → Fügt eine obere Navigationsleiste hinzu.

[body] → Der Hauptinhalt der Seite.

[floatingActionButton] → Eine schwebende Aktionstaste.

[drawer] → Ein seitliches Menü für Navigation.

bottomNavigationBar → Eine untere Navigationsleiste.
# Funktionen


`MainAxisAlignment` → Verschiebt Texte in der Applikation

```
Tween<double>(begin: -10.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, // Smooth hovering motion
      ),
    ); 
```
1.  Das `Tween<double>`-Objekt in deinem Code definiert eine Animation, die zwischen zwei Werten interpoliert (-10 und 10)
2. `.animate(CurvedAnimation(...))`

  2.1.  `CurvedAnimation` sorgt für eine fließende Bewegung.

  2.1.  `Curves.easeInOut` bedeutet, dass die Animation langsam beginnt, schneller wird und dann wieder langsam endet.
3. ` parent: _controller` → AnimationController steuert die Dauer und Wiederholung der Animation. In deinem Code wird die Animation hin und her wiederholt (reverse: true).