---
author: "Carsten Gips (FH Bielefeld)"
title: "Test der verschiedenen Markdown-Elemente (Pandoc-Markdown)"

jupyter:
  nbformat: 4
  nbformat_minor: 5
---


<!--
pandoc -s --webtex --toc --toc-depth=2               --wrap=preserve --strip-comments -t gfm    pandoc-markdown.md  -o gh-markdown.md
pandoc -s -f markdown-raw_html-raw_tex+raw_attribute --wrap=preserve --strip-comments -t ipynb  pandoc-markdown.md  -o gh-markdown.ipynb
pandoc -s                                            --wrap=preserve --strip-comments -t ipynb  pandoc-markdown.md  -o gh-markdown.ipynb
pandoc -s --slide-level=2                            --wrap=preserve --strip-comments -t pptx   pandoc-markdown.md  -o gh-markdown.pptx
-->


## BlueArrow

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
    \alpha = \left\lbrace \begin{array}{ll}
        \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
        x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
    \end{array} \right.
    $$

*   **Entscheidungsbaum** $\alpha$:
    $\alpha = \left\lbrace \begin{array}{ll}
        \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
        x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
    \end{array} \right.$


### **Entscheidungsbaum** $\alpha$:

$$
\alpha = \left\lbrace \begin{array}{ll}
    \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
    x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
\end{array} \right.
$$


Geht das auch im Fließtext?

$$
\alpha = \left\lbrace \begin{array}{ll}
    \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
    x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
\end{array} \right.
$$


## Images

![Sky](images/somefig.png)

## Stichpunkte

*   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
*   sed diam nonumy eirmod tempor invidunt ut labore et dolore ...
    a)  sed diam nonumy eirmod tempor invidunt ut labore et dolore ...
    b)  sed diam nonumy eirmod tempor invidunt ut labore et dolore ...
*   magna aliquyam erat, sed diam voluptua.
    1.  magna aliquyam erat, sed diam voluptua.
    2.  magna aliquyam erat, sed diam voluptua.

Nummerierte Aufzählungen funktionieren scheinbar nur mit 1., 2., ...

## Hervorhebungen

*   Use `*italic*` to *emphasize* in Markdown
*   Use `**bold**` to **emphasize** in Markdown

## Quotes

> Artificial Intelligence is the study of how to make computers do things at
> which, at the moment, people are better.
>
> -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)

## Lokale Abbildungen

![Bildunterschrift](images/somefig.png)

## Abbildungen im Web

![Minion](https://octodex.github.com/images/minion.png)
(Quelle: https://learn.netlify.app/en/cont/markdown/)

## Skalierte Abbildungen

![Bildunterschrift](images/somefig.png){width="10%"}

![](images/somefig.png){width="10%"}

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

## Code-Block

:::::: {.cell .code execution_count=1}
``` {.python}
print("hello")
```

::: {.output .stream .stdout}
```
hello
```
:::
::::::


:::::: {.cell .code execution_count=2}
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
::::::


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


## Columns

:::::: columns
::: {.column width="40%"}
Hinweis:
$\log_2 x = \frac{\log_{10} x}{\log_{10} 2} = \frac{\log x}{\log 2}$
:::
::: {.column width="50%"}
![](images/somefig.png)
:::
::::::
