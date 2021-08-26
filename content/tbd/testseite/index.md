---
type: lecture
title: "Test der verschiedenen Markdown-Elemente"
weight: 1
readings:
  - key: "AIMA"
  - key: "Ertel"
    comment: "Kapitel 2 und 3"
  - key: "Wuppie"
  - key: "Fluppie"
    comment: "UGH!!"
quizzes:
  - name: "Testquizz 1"
    link: https://kahoot.it/challenge/01262821?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629455219268
  - name: "Testquizz 2"
    link: https://kahoot.it/challenge/01899073?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629456236499
youtube:
  - id: JOmyP1ypJBs
  - id: JOmyP1ypJBs
    name: "wuppie"
  - link: https://youtu.be/ooWCzdWL2Co
  - name: "direktlink, but not fh-media ..."
    link: https://kahoot.it/challenge/01899073?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629456236499
  - name: "this shouldn't show up as link"
fhmedia:
  - id: c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
  - id: c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
    name: "wuppie"
  - link: https://www.fh-bielefeld.de/medienportal/m/c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
  - name: "direktlink, but not fh-media ..."
    link: https://kahoot.it/challenge/01899073?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629456236499
  - name: "this shouldn't show up as link"
attachments:
  - name: "Extra Material, e.g. annotated slides ... Use This As Link Text"
    link: https://www.fh-bielefeld.de
  - link: https://www.fh-bielefeld.de
  - name: "this shouldn't show up as link"
---

## Some Chapter title

\smallskip

Lorem \blueArrow Ipsum.

## Math
$E = m c^2$

Statt $P(D_i=x|h) = \dfrac{|S_{D_i}(x) \cap S(h)|}{|S(h)|}$ nutze $P(D_i=x|h) = \dfrac{|S_{D_i}(x) \cap S(h)| + m \cdot p_i}{|S(h)| + m}$

$$
    \begin{array}{rcl}
    h_{MAP} &=& \operatorname{argmax}_{h \in H} P(h|D_1, ..., D_n) \\\\[5pt]
            &=& \operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i|h) \\\\[5pt]
            &=& \operatorname{argmax}_{h \in H} [\log(P(h)) + \sum_i \log(P(D_i|h))]
    \end{array}
$$

*   **Entscheidungsbaum** $\alpha$:
    $$
        \alpha = \left\{ \begin{array}{ll}
            \kappa  & \text{Terminalsymbole: } \kappa = *,A,B, \ldots \\
            x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Ausprägungen}
        \end{array} \right.
    $$

## Images
![Sky](images/somefig.png)

## Data Table
`{{< schedule >}}`{=markdown}


## Standard-Markdown

### Stichpunkte

*   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
*   sed diam nonumy eirmod tempor invidunt ut labore et dolore ...
    a)  sed diam nonumy eirmod tempor invidunt ut labore et dolore ...
    b)  sed diam nonumy eirmod tempor invidunt ut labore et dolore ...
*   magna aliquyam erat, sed diam voluptua.
    1.  magna aliquyam erat, sed diam voluptua.
    2.  magna aliquyam erat, sed diam voluptua.

Nummerierte Aufzählungen funktionieren scheinbar nur mit `1.`, `2.`, ...

### Hervorhebungen

*   Use `*italic*` to *emphasize* in Markdown
*   Use `**bold**` to **emphasize** in Markdown

### Quotes

> Artificial Intelligence is the study of how to make computers do things at
> which, at the moment, people are better.
>
> -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)


## Abbildungen

### Lokale Abbildungen

#### Lokale Abbildungen mit Markdown

![Bildunterschrift](images/somefig.png)

#### Lokale Abbildungen mit Shortcodes

`{{< figure src="images/somefig.png" title="Bildunterschrift" >}}`{=markdown}

**Achtung**: Scheinbar muss der Pfad in einem Ordner liegen, der den selben Namen wie die referenzierende Markdown-Datei hat. Im Beispiel: Die Seite heißt `tbd/testseite.md` und referenziert eine Abbildung `images/somefig.png`. Dann muss diese im Ordner `tbd/testseite/images/somefig.png` liegen. Damit funktioniert das direkte Rendering in Github/Gitlab nicht mehr!

**Anmerkung**: Lt. der [Doku](https://learn.netlify.app/en/shortcodes/attachments/) sind die folgenden Strukturen äquivalent:

```
content/
|___  _index.md                         <= mit Unterstrich (Chapter)
|___  mypage.md
|___  mypage.files/
  |___  myattachments.pdf
```

und

```
content/
|___  _index.md                         <= mit Unterstrich (Chapter)
|___  mypage/
  |___  index.md                        <= ohne Unterstrich (Default)
  |___  files/
    |___  myattachments.pdf
```

Dann könnte der Abbildungsordner unterhalb von `content/mypage/` liegen und wäre damit auch für Github/Gitlab erreichbar. Unschön ist dabei, dass die Seiten dann alle `index.md` heißen und man den Inhalt über den Ordnernamen ableiten muss.

### Abbildungen im Web

![Minion](https://octodex.github.com/images/minion.png)
(Quelle: https://learn.netlify.app/en/cont/markdown/)


## Code und Syntax-Highlighting

```c
  /*
   * cHelloWorld.c
   *
   */
  #include <stdio.h>

  int main() {
      printf("Hello World from C  :-)\n");
      return 0;
  }
```

Well, inline code like `int main()` works too :)
Also with syntax highlighting like `int main()`{.c} ...


## Mathe und Formeln

### Inline Math

*   Aktivierung Neuron $j$: $a_j = \sum_i w_{ji} z_i$
*   Ausgabe von Neuron $j$: $z_j = g(a_j)$
*   Transferfunktion: $g(a) = 1/(1+\exp(-a))$
*   Ableitung: $g'(a) = g(a)(1-g(a))$
*   Ausgabe-Schicht: Index $k$: $y_k = z_k = g(a_k) = g(\sum_j w_{kj} z_j)$
*   Hidden Layer: Index $j$: $z_j = g(a_j) = g(\sum_i w_{ji} z_i)$
*   Eingabe-Schicht: Index $i$: $z_i = x_i$
*   $w_{kj}$: Gewicht gehört zu Neuron $k$, Verbindung zu Neuron $j$

### Display Math

*   **Fehler**: Summe über alle Ausgabeneurone

    $$
        E = \sum_d E^{(d)}
    $$
    mit
    $$
        E^{(d)} = \dfrac{1}{2} \sum_k (y_k^{(d)} - t_k^{(d)})^2
    $$

*   **Lernregel (Gradientenabstieg)**

    $$
        w_{ji} \gets w_{ji} + \Delta w_{ji}
    $$
    mit
    $$
        \Delta w_{ji} = -\eta \dfrac{\partial E}{\partial w_{ji}}
    $$

*   **Entscheidungsbaum** $\alpha$:
    $$
        \alpha = \left\{ \begin{array}{ll}
            \kappa  & \text{Terminalsymbole: } \kappa = *,A,B, \ldots \\
            x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Ausprägungen}
        \end{array} \right.
    $$

Unterstützung für [MathJax](https://www.mathjax.org/) muss erst noch über Partials implementiert werden. Hier eine [Anleitung](https://geoffruddock.com/math-typesetting-in-hugo/), hier noch eine [ähnliche Lösung](https://www.morch.com/posts/2021-07-24-mathjax-in-hugo/). Die beiden Anleitungen gehen auch auf das bedarfsweise Laden von MathJax ein. Dabei werden Mathe-Elemente in Spans/Divs oder Code-Blöcke eingeschlossen und eine Page-Variable `has-mathjax` gesetzt, um nur im Bedarfsfall die MathJax-Lib zu laden. Möglicherweise bietet es sich an, in einem Pandoc-Zwischenschritt die Inline- und Display-Math-Elemente entsprechend in Spans/Divs einzuschließen und die Page-Variable `has-mathjax` zu setzen.

**Hinweis**: Hugo und/oder MathJax hatten Probleme mit `\left\{`, `\right.` und `\begin{array}`. Wenn man die Display-Style-Formel in ein `<div>...</div>` einschließt, klappt es dann wieder.


### Listings und Math

Wenn man in LaTeX `lstlistings` nutzt, kann man dort mit "Math-Escapes" arbeiten und mathematische Symbole darstellen lassen.

Beispiel:

```
\begin{lstlisting}[mathescape,basicstyle=\scriptsize\ttfamily]
a = $w_1$
X = top
while (X $ \neq \perp)$
    if X = a
        a = next symbol of w
        pop
    else if X $\in T$
        error
    else if $M[X, a]$ leer
        error
    else if $M[X, a] = X \rightarrow Y_1 Y_2 \ldots Y_k$
        output($X \rightarrow Y_1 Y_2 \ldots Y_k$)
        pop
        push($Y_1 Y_2 \ldots Y_k$) ($Y_1$ = top of stack))
    X = top
\end{lstlisting}
```

Für diese spezielle Code-Umgebung gibt es in Pandoc-Markdown und in Hugo keinen Ersatz.
Um diese Technik dennoch einsetzen zu können, wurde folgender Workaround definiert:

1.  Das Listing wird in eine TeX-Datei im Abbildungsordner der Seite ausgelagert, etwa `images/fancy_math.tex`
2.  In einem Vorverarbeitungsschritt werden alle `*.tex`-Dateien in allen Unterordnern `images/` gesucht
    und mit LaTeX nach `.png` übersetzt
3.  Im Markdown wird entsprechend eine Abbildung eingebaut, die den Namen der TeX-Datei hat

Hier die Abbildung für das Beispiel: `![Listings mit Mathescape](images/fancy_math.png)`

![Listings mit Mathescape](images/fancy_math.png)


## Verlinkungen

-   Links nach außen: [Pandoc](https://pandoc.org/)
-   Links im Dokument (automatische Label): ["Stichpunkte"](#stichpunkte)
-   Links auf andere Dokumente:
    * [Fahrplan](`{{< ref "/fahrplan.md" >}}`{=markdown})
    * [Note und Credits](`{{< ref "note_und_credits" >}}`{=markdown})
    * [Syllabus](`{{< ref "syllabus.md" >}}`{=markdown})
    * [Reading](`{{< ref "reading.md" >}}`{=markdown})


## Tabellen

| KW | VL                                                                                                                                                                                                                 | Praktikum                                              |
|----|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|
| 45 | [Orga FHB] (**Zoom**) \|\| [Einführung KI] \| [Problemlösen]                                                                                                                                                       | --                                                     |
| 46 | Suche: [Tiefensuche] \| [Breitensuche] \| [Branch-and-Bound und Best First] \| [A*]                                                                                                                                | [FHB01: Grenzen der KI, Problemraum (T)]               |
| 47 | Lokale Suche: [Gradientenabstieg und Simulated Annealing] \| [Evolutionäre/Genetische Algorithmen]                                                                                                                 | [FHB02: Tiefen- und Breitensuche, A-Stern (T)]         |
| 48 | Spiele: [Minimax] \| [Minimax Erweiterungen] \| [Alpha-Beta-Pruning]                                                                                                                                               | [FHB03: Lokale Suche: Genetische Algorithmen (T,I)]    |
| 49 | [Constraints] \| [Backtracking, Heuristiken] \| [Forward Checking und AC-3]                                                                                                                                        | [FHB04: Spiele: Minimax, Alpha-Beta-Pruning (T,I)]     |
| 50 | [Machine Learning 101] \| Entscheidungsbäume: [CAL2, Pruning] \| [CAL3] \| [Entropie] \| [ID3 und C4.5]                                                                                                            | [FHB05: Constraints (AIMA), AC-3-Handsimulation (T,I)] |
| 51 | [Wahrscheinlichkeitstheorie 101] \| Textklassifikation mit [Naive Bayes]                                                                                                                                           | [FHB06: Entscheidungsbäume (T)]                        |
| 52 | --                                                                                                                                                                                                                 | --                                                     |
| 53 | --                                                                                                                                                                                                                 | --                                                     |
| 01 | [ML Einführung, Vektorisierung, Perzeptron Lernalgorithmus]                                                                                                                                                        | --                                                     |
| 02 | [Lineare Regression, Fehlerfunktion, Mean Square Error (MSE), Gradientenabstieg]                                                                                                                                   | [TDU01: Perzeptron]                                    |
| 03 | [Logistische Regression, Overfitting, Generalisierung, Regularisierung, Train-Dev-Test Sets]                                                                                                                       | [TDU02: Lineare Regression]                            |
| 04 | [Nichtlineare Modelle] \| [Overfitting und Regularisierung] \| [Multi-Layer Perceptron (MLP)] \| [Backpropagation] \| [Backpropagation (Nachtrag)] \|\| [Rückblick] \| Umfrage \| [Klausurvorbereitung] (**Zoom**) | [TDU03: Logistische Regression und MLP]                |

Es gehen lt. Doku nur **Pipe-Tables**?!


## Anhänge

Siehe [Anleitung](https://learn.netlify.app/en/shortcodes/attachments/): Wenn die Seite eine Markdown-Datei `<name>.md` ist, dann können Anhänge im Ordner `<name>.files/` gespeichert werden.

Über den [Shortcode](https://gohugo.io/content-management/shortcodes/) `attachments` können dann die zur Seite gehörigen Anhänge an dieser Stelle eingebunden werden. Im Beispiel werden nur PDF-Dateien angezeigt/verlinkt.

`{{< attachments title="Anhänge" pattern=".*(pdf)" />}}`{=markdown}


## Tooggles ("ShowMe")

Mit dem Shortcode `expand` können Toggles realisiert werden.

{{% expand %}}
Kurzer Toggle ohne extra Namen ...
{{% /expand %}}


{{% expand "Was ist die Antwort?" %}}
Toggle mit Namen ...

### Hier Überschrift im Toggle

```c
  /*
   * cHelloWorld.c
   *
   */
  #include <stdio.h>

  int main() {
      printf("Hello World from C  :-)\n");
      return 0;
  }
```
{{% /expand %}}

**Anmerkung**: Laut https://gohugo.io/content-management/shortcodes/ werden Shortcodes mit `%` interpretiert und gerendert, während bei der Verwendung von `<` der eingeschlossene Code kein weiteres Rendering erfährt.
**Achtung**: Es gibt scheinbar Shortcodes (["Videos"](#videos)), die nur mit `<` funktionieren ...


::: showme
Und mit "native Divs" aus Pandoc-Markdown (muss vorverarbeitet werden) ....

- Stichpunkt 1
- Stichpunkt 2
- ...
:::


## Literatur

### Einsatz von Variablen im YAML-Header der Seite

Im YAML-Header der Seite können Einträge definiert werden:

```yaml
readings:
  - key: "AIMA"
  - key: "Ertel"
    comment: "Kapitel 2 und 3"
  - key: "Wuppie"
  - key: "Fluppie"
    comment: "UGH!!"
```

Dabei ist `readings` die Variable, unter der Tupel mit `key` und `comment` definiert werden können. Der `key` ist dabei der in `data/readings.yaml` verwendete BibTex-Key. Leere `comment` können weggelassen werden.

Dann wird mit dem Shortcode `bib` (ohne Parameter) das Literaturverzeichnis generiert (inkl. H2-Überschrift "Literatur").

`{{< bib />}}`{=markdown}

**Achtung**: Die Einträge für `key` müssen als Schlüssel in `data/readings.yaml` vorkommen. Anderenfalls wird der Eintrag stillschweigend ignoriert (keine Fehlermeldung, da Verwendung in GH-Actions). Im Beispiel oben würden die Keys "Wuppie" und "Fluppie" nicht gefunden und die Einträge entsprechend nicht in die Seite aufgenommen.

### Freier Inhalt

Dem Shortcode `bib` (ohne Parameter) kann auch Inhalt übergeben werden (zw. öffnendem und schließendem Shortcode). Dieser wird dann als Literaturverzeichnis angezeigt (**ohne** Default-Überschrift!).

{{% bib %}}
Hier könnte ein Literaturverzeichnis entstehen ...
{{% /bib %}}

### Vorrang

Der Aufruf des Shortcodes `bib` mit Inhalt hat Vorrang von dem Aufruf ohne Inhalte (aber mit gesetztem Parameter `readings`). Wenn beides nicht gesetzt/vorhanden ist, passiert nichts.


## Sonstige Special Sections

In der Datei `static/css/tldr.css` finden sich die Klassen für "TLDR" etc. aus meinem [Pandoc-Lecture](https://github.com/cagix/pandoc-lecture).

Ein Versuch wäre, diese Klassen explizit über ein `<div class="tldr">` etc. einzubauen. ... Wird aber von Hugo aus Sicherheitsgründen unterdrückt, im Output steht dann nur noch `<!-- raw HTML omitted -->` ... Das könnte man ggf. durch eine Konfiguration aktivieren (siehe [Stackoverflow](https://stackoverflow.com/questions/63198652/hugo-shortcode-ignored-saying-raw-html-omitted)).

Ein anderer Weg könnten ["Custom Shortcode Templates"](https://gohugo.io/templates/shortcode-templates/) sein. Aber auch hier muss man letztlich das "unsafe" Rendering explizit freischalten. Offenbar wird ein Unterscheid zwischen eigenen Shortcode Templates und denen aus einem Theme gemacht (warum?!).


### TL;DR

#### Ohne Parameter und mit `.Inner`: Direktes Rendering
{{% tldr %}}
*   Behebung von Bad Smells durch Refactoring

Blablabla
{{% /tldr %}}

#### Ohne Parameter: Auslesen der Page-Resource `tldr.md`
`{{< tldr />}}`{=markdown}


### Lernziele

#### Ohne Parameter und mit `.Inner`: Direktes Rendering
{{% outcomes %}}
Platz für Lernziele
*   Behebung von Bad Smells durch Refactoring

Blablabla
{{% /outcomes %}}

#### Ohne Parameter: Auslesen der Page-Resource `outcomes.md`
`{{< outcomes />}}`{=markdown}


### Quizzes

Quizzes werden auf Kahoot angelegt. Diese kann man entweder in der Vorlesung nutzen/starten oder als einzeln zu spielendes Quizz einstellen. Die bisherigen Quizzfragen werden als Kahoot-Quizzes in der zweiten Form (einzeln zu spielen) eingepflegt.

Über "Play > Assign > Invite more Players > Copy URL" wird die URL zu einem Self-Play-Kahoot kopiert.

Im YAML-Block einer Seite wird unter dem Schlüssel `quizzes` dann die URL sowie ein Name oder kurze Beschreibung hinterlegt. Dies kann mehrfach wiederholt werden. Alle Quizzes werden über das `lecture`-Template am Ende des Skripts mit einem buntem Hintergrund aufgelistet.

```yaml
quizzes:
  - name: "Quizz Thema X"
    link: https://kahoot.it/challenge/01262821?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629455219268
  - name: "Quizz Thema Y"
    link: https://kahoot.it/challenge/01899073?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629456236499
```


### Challenges

Zum Einsatz als Bonusaufgabe steht der Shortcode `challenges` bereit. Der Inhalt wird als Markdown gerendert und leicht farbig vom Rest abgehoben.

{{% challenges %}}
Erstellen Sie ...
{{% /challenges %}}


## Videos

Es gibt einen Shortcode für YouTube: `youtube`. Hier kann man die ID eines Videos als Parameter übergeben, und das Video wird an dieser Stelle mit einem Player in der Webseite eingebettet.

Beispiel:
`{{< youtube JOmyP1ypJBs >}}`{=markdown}

Für das FH-Medienportal gibt es analog einen Shortcode `fhmedia`, der als Parameter den Key des Direkt-Links bekommt.

Beispiel:
`{{< fhmedia c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67 >}}`{=markdown}


Zusätzlich kann man im YAML-Header der Page zum Schlüssel `youtube` eine oder mehrere Video-IDs in `id` ablegen oder alternativ mit `link` den Link zum Video eingeben. In `name` kann man optional jeweils einen String eingeben, der als H3-Header vor dem Video gesetzt wird:

```yaml
youtube:
  - id: JOmyP1ypJBs
  - id: ooWCzdWL2Co
  - name: "Use As Header H3 Before Video"
    link: https://youtu.be/ooWCzdWL2Co
```

Diese werden dann über das `lecture`-Template automatisch im Block "TL;DR" am Anfang des Scripts eingebunden.

Analog funktioniert der Eintrag `fhmedia` im YAML-Header. Hier wird die ID bzw. die URL des Direkt-Links des Videos eingetragen.


## Schedule

Zum Erzeugen eines Schedules (aka "Fahrplan") gibt es den Shortcode `schedule`.
Dabei wird die Datei `data/schedule.yaml` ausgelesen und verarbeitet.

`{{< schedule >}}`{=markdown}
