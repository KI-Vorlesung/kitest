---
type: lecture-cg
title: "Test-Vorlesung für Carsten"
weight: 4
readings:
  - key: "Russell2020"
  - key: "Ertel2017"
    comment: "Kapitel 2 und 3"
  - key: "Wuppie"
  - key: "Fluppie"
    comment: "UGH!!"
youtube:
  - id: JOmyP1ypJBs
    name: "Wuppie"
fhmedia:
  - id: c5eacefca7463f3f284ce575fa3a5bafab65a3851e477bbaa9d8b9ba0cce3a1c49384f10e80e38dae73f0f3b22b342a2827850c3b8a1b85163ac5ebb616ccf67
---


## Standard-Markdown

### Stichpunkte

*   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
*   sed diam nonumy eirmod tempor invidunt ut labore et dolore `...`{=markdown}
    a)  sed diam nonumy eirmod tempor invidunt ut labore et dolore `...`{=markdown}
    b)  sed diam nonumy eirmod tempor invidunt ut labore et dolore `...`{=markdown}
*   magna aliquyam erat, sed diam voluptua.
    1.  magna aliquyam erat, sed diam voluptua.
    2.  magna aliquyam erat, sed diam voluptua.

Nummerierte Aufzählungen funktionieren scheinbar nur mit `1.`, `2.`, `...`{=markdown}

### Hervorhebungen

*   Use `*italic*` to *emphasize* in Markdown
*   Use `**bold**` to **emphasize** in Markdown

### Quotes

> Artificial Intelligence is the study of how to make computers do things at
> which, at the moment, people are better.
>
> -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)


## Abbildungen

### Lokale Abbildungen mit Markdown

![Bildunterschrift](images/somefig.png)

### Lokale Abbildungen mit Shortcodes

{{% figure src="images/somefig.png" title="Bildunterschrift" %}}


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
Also with syntax highlighting like `int main()`{.c} `...`{=markdown}


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

Unterstützung für [MathJax](https://www.mathjax.org/) muss erst noch über Partials implementiert werden. Hier eine [Anleitung](https://geoffruddock.com/math-typesetting-in-hugo/).


### Listings und Math

![Listings mit Mathescape](images/fancy2.png)


## Verlinkungen

-   Links nach außen: [Pandoc](https://pandoc.org/)
-   Links im Dokument (automatische Label): ["Stichpunkte"](#stichpunkte)
-   Links auf andere Dokumente:
    * [Fahrplan]({{% ref "/fahrplan.md" %}})
    * [Note und Credits]({{% ref "note_und_credits" %}})
    * [Syllabus]({{% ref "syllabus.md" %}})
    * [Reading]({{% ref "reading.md" %}})
    * [Reading]( {{% ref "reading.md" %}} )
    * <a href='{{% ref "reading.md" %}}'>Reading</a>


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


## Tooggles ("ShowMe")

Mit dem Shortcode `expand` können Toggles realisiert werden.

{{% expand %}}
Kurzer Toggle ohne extra Namen `...`{=markdown}
{{% /expand %}}


{{% expand "Was ist die Antwort?" %}}
Toggle mit Namen `...`{=markdown}

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
**Achtung**: Es gibt scheinbar Shortcodes (["Videos"](#videos)), die nur mit `<` funktionieren `...`{=markdown}
