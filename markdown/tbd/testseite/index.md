---
type: lecture-cg
author: "Carsten Gips (FH Bielefeld)"
title: "Test der verschiedenen Markdown-Elemente"
weight: 1
readings:
  - key: "Russell2020"
  - key: "Ertel2017"
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
  - name: "direktlink, but not fh-media `...`{=markdown}"
    link: https://kahoot.it/challenge/01899073?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629456236499
  - name: "this shouldn't show up as link"
fhmedia:
  - id: c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
  - id: c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
    name: "wuppie"
  - link: https://www.fh-bielefeld.de/medienportal/m/c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
  - name: "direktlink, but not fh-media `...`{=markdown}"
    link: https://kahoot.it/challenge/01899073?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1629456236499
  - name: "this shouldn't show up as link"
attachments:
  - name: "Extra Material, e.g. annotated slides `...`{=markdown} Use This As Link Text"
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
            x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr??gungen}
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

Nummerierte Aufz??hlungen funktionieren scheinbar nur mit 1., 2., ...

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

**Achtung**: Scheinbar muss der Pfad in einem Ordner liegen, der den selben Namen wie die referenzierende Markdown-Datei hat. Im Beispiel: Die Seite hei??t `tbd/testseite.md` und referenziert eine Abbildung `images/somefig.png`. Dann muss diese im Ordner `tbd/testseite/images/somefig.png` liegen. Damit funktioniert das direkte Rendering in Github/Gitlab nicht mehr!

**Anmerkung**: Lt. der [Doku](https://learn.netlify.app/en/shortcodes/attachments/) sind die folgenden Strukturen ??quivalent:

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

Dann k??nnte der Abbildungsordner unterhalb von `content/mypage/` liegen und w??re damit auch f??r Github/Gitlab erreichbar. Unsch??n ist dabei, dass die Seiten dann alle `index.md` hei??en und man den Inhalt ??ber den Ordnernamen ableiten muss.

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
*   $w_{kj}$: Gewicht geh??rt zu Neuron $k$, Verbindung zu Neuron $j$

### Display Math

*   **Fehler**: Summe ??ber alle Ausgabeneurone

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
            x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr??gungen}
        \end{array} \right.
    $$

Unterst??tzung f??r [MathJax](https://www.mathjax.org/) muss erst noch ??ber Partials implementiert werden. Hier eine [Anleitung](https://geoffruddock.com/math-typesetting-in-hugo/), hier noch eine [??hnliche L??sung](https://www.morch.com/posts/2021-07-24-mathjax-in-hugo/). Die beiden Anleitungen gehen auch auf das bedarfsweise Laden von MathJax ein. Dabei werden Mathe-Elemente in Spans/Divs oder Code-Bl??cke eingeschlossen und eine Page-Variable `has-mathjax` gesetzt, um nur im Bedarfsfall die MathJax-Lib zu laden. M??glicherweise bietet es sich an, in einem Pandoc-Zwischenschritt die Inline- und Display-Math-Elemente entsprechend in Spans/Divs einzuschlie??en und die Page-Variable `has-mathjax` zu setzen.

**Hinweis**: Hugo und/oder MathJax hatten Probleme mit `\left\{`, `\right.` und `\begin{array}`. Wenn man die Display-Style-Formel in ein `<div>...</div>` einschlie??t, klappt es dann wieder.


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

F??r diese spezielle Code-Umgebung gibt es in Pandoc-Markdown und in Hugo keinen Ersatz.
Um diese Technik dennoch einsetzen zu k??nnen, wurde folgender Workaround definiert:

1.  Das Listing wird in eine TeX-Datei im Abbildungsordner der Seite ausgelagert, etwa `images/fancy_math.tex`
2.  In einem Vorverarbeitungsschritt werden alle `*.tex`-Dateien in allen Unterordnern `images/` gesucht
    und mit LaTeX nach `.png` ??bersetzt
3.  Im Markdown wird entsprechend eine Abbildung eingebaut, die den Namen der TeX-Datei hat

Hier die Abbildung f??r das Beispiel: `![Listings mit Mathescape](images/fancy_math.png)`

![Listings mit Mathescape](images/fancy_math.png)


## Verlinkungen

-   Links nach au??en: [Pandoc](https://pandoc.org/)
-   Links im Dokument (automatische Label): ["Stichpunkte"](#stichpunkte)
-   Links auf andere Dokumente

    ```
    * [Fahrplan]({{< ref "/fahrplan.md" >}}
    * [Note und Credits]({{< ref "note_und_credits" >}}
    * [Syllabus]({{< ref "syllabus.md" >}}
    * [Reading]({{< ref "reading.md" >}}
    ```

    Hinweis: Shortcodes funktionieren nicht so gut im Zusammenhang mit Pandoc! Also entweder Einsatz von Shortcodes plus direktes Erzeugen der Seiten mit Hugo, oder Verzicht auf Shortcodes plus Vorverarbeitung der Webseiten-Sourcen mit Pandoc und Erzeugung von Folien mit Pandoc!


## Tabellen

| KW | VL                                                                                                                                                                                                                 | Praktikum                                              |
|----|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|
| 45 | [Orga FHB] (**Zoom**) \|\| [Einf??hrung KI] \| [Probleml??sen]                                                                                                                                                       | --                                                     |
| 46 | Suche: [Tiefensuche] \|??[Breitensuche] \|??[Branch-and-Bound und Best First] \|??[A*]                                                                                                                                | [FHB01: Grenzen der KI, Problemraum (T)]               |
| 47 | Lokale Suche: [Gradientenabstieg und Simulated Annealing] \| [Evolution??re/Genetische Algorithmen]                                                                                                                 | [FHB02: Tiefen- und Breitensuche, A-Stern (T)]         |
| 48 | Spiele: [Minimax] \| [Minimax Erweiterungen] \|??[Alpha-Beta-Pruning]                                                                                                                                               | [FHB03: Lokale Suche: Genetische Algorithmen (T,I)]    |
| 49 | [Constraints] \| [Backtracking, Heuristiken] \| [Forward Checking und AC-3]                                                                                                                                        | [FHB04: Spiele: Minimax, Alpha-Beta-Pruning (T,I)]     |
| 50 | [Machine Learning 101] \| Entscheidungsb??ume: [CAL2, Pruning] \| [CAL3] \| [Entropie] \| [ID3 und C4.5]                                                                                                            | [FHB05: Constraints (AIMA), AC-3-Handsimulation (T,I)] |
| 51 | [Wahrscheinlichkeitstheorie 101] \| Textklassifikation mit [Naive Bayes]                                                                                                                                           | [FHB06: Entscheidungsb??ume (T)]                        |
| 52 | --                                                                                                                                                                                                                 | --                                                     |
| 53 | --                                                                                                                                                                                                                 | --                                                     |
| 01 | [ML Einf??hrung, Vektorisierung, Perzeptron Lernalgorithmus]                                                                                                                                                        | --                                                     |
| 02 | [Lineare Regression, Fehlerfunktion, Mean Square Error (MSE), Gradientenabstieg]                                                                                                                                   | [TDU01: Perzeptron]                                    |
| 03 | [Logistische Regression, Overfitting, Generalisierung, Regularisierung, Train-Dev-Test Sets]                                                                                                                       | [TDU02: Lineare Regression]                            |
| 04 | [Nichtlineare Modelle] \| [Overfitting und Regularisierung] \| [Multi-Layer Perceptron (MLP)] \| [Backpropagation] \| [Backpropagation (Nachtrag)] \|\| [R??ckblick] \| Umfrage \| [Klausurvorbereitung] (**Zoom**) | [TDU03: Logistische Regression und MLP]                |

Es gehen lt. Doku nur **Pipe-Tables**?!


## Anh??nge

Siehe [Anleitung](https://learn.netlify.app/en/shortcodes/attachments/): Wenn die Seite eine Markdown-Datei `<name>.md` ist, dann k??nnen Anh??nge im Ordner `<name>.files/` gespeichert werden.

??ber den [Shortcode](https://gohugo.io/content-management/shortcodes/) `attachments` k??nnen dann die zur Seite geh??rigen Anh??nge an dieser Stelle eingebunden werden. Im Beispiel werden nur PDF-Dateien angezeigt/verlinkt.

`{{< attachments title="Anh??nge" pattern=".*(pdf)" />}}`{=markdown}


## Tooggles ("ShowMe")

Mit dem Shortcode `expand` k??nnen Toggles realisiert werden.

{{% expand %}}
Kurzer Toggle ohne extra Namen ...
{{% /expand %}}


{{% expand "Was ist die Antwort?" %}}
Toggle mit Namen ...

### Hier ??berschrift im Toggle

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

**Anmerkung**: Laut https://gohugo.io/content-management/shortcodes/ werden Shortcodes mit `%` interpretiert und gerendert, w??hrend bei der Verwendung von `<` der eingeschlossene Code kein weiteres Rendering erf??hrt.
**Achtung**: Es gibt scheinbar Shortcodes (["Videos"](#videos)), die nur mit `<` funktionieren ...


::: showme
Und mit "native Divs" aus Pandoc-Markdown (muss vorverarbeitet werden) ...

- Stichpunkt 1
- Stichpunkt 2
- ...
:::


## Buttons

{{% button href="https://fh-bielefeld.de" %}}FHB{{% /button %}}

{{% button %}}FHB{{% /button %}}

[Beispiel: Wuppie]{.bsp}


## Literatur

### Einsatz von Variablen im YAML-Header der Seite

Im YAML-Header der Seite k??nnen Eintr??ge definiert werden:

```yaml
readings:
  - key: "Russell2020"
  - key: "Ertel2017"
    comment: "Kapitel 2 und 3"
  - key: "Wuppie"
  - key: "Fluppie"
    comment: "UGH!!"
```

Dabei ist `readings` die Variable, unter der Tupel mit `key` und `comment` definiert werden k??nnen. Der `key` ist dabei der in `data/readings.yaml` verwendete BibTex-Key. Leere `comment` k??nnen weggelassen werden.

Dann wird mit dem Shortcode `bib` (ohne Parameter) das Literaturverzeichnis generiert (inkl. H2-??berschrift "Literatur").

`{{< bib />}}`{=markdown}

**Achtung**: Die Eintr??ge f??r `key` m??ssen als Schl??ssel in `data/readings.yaml` vorkommen. Anderenfalls wird der Eintrag stillschweigend ignoriert (keine Fehlermeldung, da Verwendung in GH-Actions). Im Beispiel oben w??rden die Keys "Wuppie" und "Fluppie" nicht gefunden und die Eintr??ge entsprechend nicht in die Seite aufgenommen.

### Freier Inhalt

Dem Shortcode `bib` (ohne Parameter) kann auch Inhalt ??bergeben werden (zw. ??ffnendem und schlie??endem Shortcode). Dieser wird dann als Literaturverzeichnis angezeigt (**ohne** Default-??berschrift!).

{{% bib %}}
Hier k??nnte ein Literaturverzeichnis entstehen ...
{{% /bib %}}

### Vorrang

Der Aufruf des Shortcodes `bib` mit Inhalt hat Vorrang von dem Aufruf ohne Inhalte (aber mit gesetztem Parameter `readings`). Wenn beides nicht gesetzt/vorhanden ist, passiert nichts.

### Zitieren

Im Text werden die Keys normal benutzt: `@key`.

Beim Erzeugen der Slides (Beamer/PDF) erzeugt Pandoc mit dem Bibtex-File und den Keys einen verlinkten Eintrag im Text und ggf. am Ende der Folien ein Literaturverzeichnis.

Beim Erzeugen der Webseiten wird zun??chst bei der Vorverarbeitung mit Pandoc plus einem Filter aus den Keys ein Link ins lokale Literaturverzeichnis erstellt und in den Text eingebettet. Danach kann beim Ausf??hren von Hugo der Shortcode/Partial `bib` das Literaturverzeichnis mit den entsprechenden Ankern generieren.

Blablab @Russell2020 blublbubl [@Russell2020] bla [@Russell2020, S.10] ...

Hier eine Mehrfachzitierung [@Russell2014; @Russell2020; @Pedregosa2011]

Lorem Ipsum.


::: slides
## Zitieren (Test f??r Folien)

Im Text werden die Keys normal benutzt: `@key`.

Beim Erzeugen der Slides (Beamer/PDF) erzeugt Pandoc mit dem Bibtex-File und den Keys einen verlinkten Eintrag im Text und ggf. am Ende der Folien ein Literaturverzeichnis.

Beim Erzeugen der Webseiten wird zun??chst bei der Vorverarbeitung mit Pandoc plus einem Filter aus den Keys ein Link ins lokale Literaturverzeichnis erstellt und in den Text eingebettet. Danach kann beim Ausf??hren von Hugo der Shortcode/Partial `bib` das Literaturverzeichnis mit den entsprechenden Ankern generieren.

Blablab @Russell2020 blublbubl [@Russell2020] bla [@Russell2020, S.10] ...

Hier eine Mehrfachzitierung [@Russell2014; @Russell2020; @Pedregosa2011]

Lorem Ipsum.
:::


## Sonstige Special Sections

In der Datei `static/css/tldr.css` finden sich die Klassen f??r "TLDR" etc. aus meinem [Pandoc-Lecture](https://github.com/cagix/pandoc-lecture).

Ein Versuch w??re, diese Klassen explizit ??ber ein `<div class="tldr">` etc. einzubauen. ... Wird aber von Hugo aus Sicherheitsgr??nden unterdr??ckt, im Output steht dann nur noch `<!-- raw HTML omitted -->` ... Das k??nnte man ggf. durch eine Konfiguration aktivieren (siehe [Stackoverflow](https://stackoverflow.com/questions/63198652/hugo-shortcode-ignored-saying-raw-html-omitted)).

Ein anderer Weg k??nnten ["Custom Shortcode Templates"](https://gohugo.io/templates/shortcode-templates/) sein. Aber auch hier muss man letztlich das "unsafe" Rendering explizit freischalten. Offenbar wird ein Unterscheid zwischen eigenen Shortcode Templates und denen aus einem Theme gemacht (warum?!).


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
Platz f??r Lernziele
*   Behebung von Bad Smells durch Refactoring

Blablabla
{{% /outcomes %}}

#### Ohne Parameter: Auslesen der Page-Resource `outcomes.md`
`{{< outcomes />}}`{=markdown}


### Quizzes

Quizzes werden auf Kahoot angelegt. Diese kann man entweder in der Vorlesung nutzen/starten oder als einzeln zu spielendes Quizz einstellen. Die bisherigen Quizzfragen werden als Kahoot-Quizzes in der zweiten Form (einzeln zu spielen) eingepflegt.

??ber "Play > Assign > Invite more Players > Copy URL" wird die URL zu einem Self-Play-Kahoot kopiert.

Im YAML-Block einer Seite wird unter dem Schl??ssel `quizzes` dann die URL sowie ein Name oder kurze Beschreibung hinterlegt. Dies kann mehrfach wiederholt werden. Alle Quizzes werden ??ber das `lecture`-Template am Ende des Skripts mit einem buntem Hintergrund aufgelistet.

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

Es gibt einen Shortcode f??r YouTube: `youtube`. Hier kann man die ID eines Videos als Parameter ??bergeben, und das Video wird an dieser Stelle mit einem Player in der Webseite eingebettet.

Beispiel:
`{{< youtube JOmyP1ypJBs >}}`{=markdown}

F??r das FH-Medienportal gibt es analog einen Shortcode `fhmedia`, der als Parameter den Key des Direkt-Links bekommt.

Beispiel:
`{{< fhmedia c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67 >}}`{=markdown}


Zus??tzlich kann man im YAML-Header der Page zum Schl??ssel `youtube` eine oder mehrere Video-IDs in `id` ablegen oder alternativ mit `link` den Link zum Video eingeben. In `name` kann man optional jeweils einen String eingeben, der als H3-Header vor dem Video gesetzt wird:

```yaml
youtube:
  - id: JOmyP1ypJBs
  - id: ooWCzdWL2Co
  - name: "Use As Header H3 Before Video"
    link: https://youtu.be/ooWCzdWL2Co
```

Diese werden dann ??ber das `lecture`-Template automatisch im Block "TL;DR" am Anfang des Scripts eingebunden.

Analog funktioniert der Eintrag `fhmedia` im YAML-Header. Hier wird die ID bzw. die URL des Direkt-Links des Videos eingetragen.


## Schedule

Zum Erzeugen eines Schedules (aka "Fahrplan") gibt es den Shortcode `schedule`.
Dabei wird die Datei `data/schedule.yaml` ausgelesen und verarbeitet.

`{{< schedule >}}`{=markdown}


## Pandoc native Divs/Spans

Native Divs `::: slides ... :::` and `::: notes ... :::` werden je nach Kontext durch den Pandoc-Filter entfernt, also beim Erzeugen von Folien (PDF/Beamer) wird der Inhalt von `::: slides` ber??cksichtigt und `::: notes` komplett entfernt und beim Generien der Webseiten anders herum.

Andere native Divs wie `::: cbox ... :::` und `::: center ... :::` werden in "normale" Divs mit der entsprechenden Klasse umgewandelt, so dass ??ber Hugo und das passende CSS die Formatierung erreicht wird.

Analoges gilt f??r native Spans wie `[]{.origin}` und `[]{.alert}`.

F??r manche Elemente wie `::: showme ... :::` und `[]{.bsp}` werden passende Shortcodes eingesetzt.

::: cbox
Hier ein wichtiger Text!
:::

Oder zentriert:

::: center
Hier wird zentriert ...
:::

Dies ist eine [wichtige]{.alert} Bemerkung. Und noch [**wichtiger**]{.alert} ... Und hier noch ein [Quellenhinweis: [URL](https://www.google.de/)]{.origin}.

F??r `::: columns ... :::` wurde noch kein passender Ersatz gefunden.

::: showme
Das hier ist erstmal versteckt!

- Punkt 1
- Punkt 2
- Punkt 3
:::

[Hier ein Beispiel]{.bsp}

::: slides
Dieser Text erscheint nur auf den Folien, nicht aber auf den Webseiten.
:::

::: notes
Dieser Text erscheint nur auf den Webseiten, nicht aber auf den Folien.
:::
