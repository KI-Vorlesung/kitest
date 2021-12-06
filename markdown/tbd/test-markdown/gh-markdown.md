---
author: Carsten Gips (FH Bielefeld)
jupyter:
  nbformat: 4
  nbformat_minor: 5
title: Test der verschiedenen Markdown-Elemente (Pandoc-Markdown)
---

-   [BlueArrow](#bluearrow)
-   [Math](#math)
-   [Images](#images)
-   [Stichpunkte](#stichpunkte)
-   [Hervorhebungen](#hervorhebungen)
-   [Quotes](#quotes)
-   [Lokale Abbildungen](#lokale-abbildungen)
-   [Abbildungen im Web](#abbildungen-im-web)
-   [Skalierte Abbildungen](#skalierte-abbildungen)
-   [Code und Syntax-Highlighting](#code-und-syntax-highlighting)
-   [Code-Block](#code-block)
-   [Tabellen](#tabellen)
-   [Columns](#columns)

## BlueArrow

Lorem Ipsum.

## Math

![E = m c^2](https://latex.codecogs.com/png.latex?E%20%3D%20m%20c%5E2 "E = m c^2")

Statt ![P(D_i=x\|h) = \\dfrac{\|S\_{D_i}(x) \\cap S(h)\|}{\|S(h)\|}](https://latex.codecogs.com/png.latex?P%28D_i%3Dx%7Ch%29%20%3D%20%5Cdfrac%7B%7CS_%7BD_i%7D%28x%29%20%5Ccap%20S%28h%29%7C%7D%7B%7CS%28h%29%7C%7D "P(D_i=x|h) = \dfrac{|S_{D_i}(x) \cap S(h)|}{|S(h)|}") nutze ![P(D_i=x\|h) = \\dfrac{\|S\_{D_i}(x) \\cap S(h)\| + m \\cdot p_i}{\|S(h)\| + m}](https://latex.codecogs.com/png.latex?P%28D_i%3Dx%7Ch%29%20%3D%20%5Cdfrac%7B%7CS_%7BD_i%7D%28x%29%20%5Ccap%20S%28h%29%7C%20%2B%20m%20%5Ccdot%20p_i%7D%7B%7CS%28h%29%7C%20%2B%20m%7D "P(D_i=x|h) = \dfrac{|S_{D_i}(x) \cap S(h)| + m \cdot p_i}{|S(h)| + m}")

![
    \\begin{array}{rcl}
    h\_{MAP} &=& \\operatorname{argmax}\_{h \\in H} P(h\|D_1, ..., D_n) \\\\\\\\\[5pt\]
            &=& \\operatorname{argmax}\_{h \\in H} P(h) \\prod_i P(D_i\|h) \\\\\\\\\[5pt\]
            &=& \\operatorname{argmax}\_{h \\in H} \[\\log(P(h)) + \\sum_i \\log(P(D_i\|h))\]
    \\end{array}
](https://latex.codecogs.com/png.latex?%0A%20%20%20%20%5Cbegin%7Barray%7D%7Brcl%7D%0A%20%20%20%20h_%7BMAP%7D%20%26%3D%26%20%5Coperatorname%7Bargmax%7D_%7Bh%20%5Cin%20H%7D%20P%28h%7CD_1%2C%20...%2C%20D_n%29%20%5C%5C%5C%5C%5B5pt%5D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%3D%26%20%5Coperatorname%7Bargmax%7D_%7Bh%20%5Cin%20H%7D%20P%28h%29%20%5Cprod_i%20P%28D_i%7Ch%29%20%5C%5C%5C%5C%5B5pt%5D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%3D%26%20%5Coperatorname%7Bargmax%7D_%7Bh%20%5Cin%20H%7D%20%5B%5Clog%28P%28h%29%29%20%2B%20%5Csum_i%20%5Clog%28P%28D_i%7Ch%29%29%5D%0A%20%20%20%20%5Cend%7Barray%7D%0A "
    \begin{array}{rcl}
    h_{MAP} &=& \operatorname{argmax}_{h \in H} P(h|D_1, ..., D_n) \\\\[5pt]
            &=& \operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i|h) \\\\[5pt]
            &=& \operatorname{argmax}_{h \in H} [\log(P(h)) + \sum_i \log(P(D_i|h))]
    \end{array}
")

-   **Entscheidungsbaum** ![\\alpha](https://latex.codecogs.com/png.latex?%5Calpha "\alpha"):

    ![
    \\alpha = \\left\\lbrace \\begin{array}{ll}
        \\kappa  & \\text{Terminalsymbole: } \\kappa = \\ast,A,B, \\ldots \\\\
        x_t(\\alpha_1, \\alpha_2, \\ldots, \\alpha\_{m_t}) & x_t \\text{ Testattribut mit } m_t \\text{ Auspr\\"agungen}
    \\end{array} \\right.
    ](https://latex.codecogs.com/png.latex?%0A%5Calpha%20%3D%20%5Cleft%5Clbrace%20%5Cbegin%7Barray%7D%7Bll%7D%0A%20%20%20%20%5Ckappa%20%20%26%20%5Ctext%7BTerminalsymbole%3A%20%7D%20%5Ckappa%20%3D%20%5Cast%2CA%2CB%2C%20%5Cldots%20%5C%5C%0A%20%20%20%20x_t%28%5Calpha_1%2C%20%5Calpha_2%2C%20%5Cldots%2C%20%5Calpha_%7Bm_t%7D%29%20%26%20x_t%20%5Ctext%7B%20Testattribut%20mit%20%7D%20m_t%20%5Ctext%7B%20Auspr%5C%22agungen%7D%0A%5Cend%7Barray%7D%20%5Cright.%0A "
    \alpha = \left\lbrace \begin{array}{ll}
        \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
        x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
    \end{array} \right.
    ")

-   **Entscheidungsbaum** ![\\alpha](https://latex.codecogs.com/png.latex?%5Calpha "\alpha"):
    ![\\alpha = \\left\\lbrace \\begin{array}{ll}  \\kappa & \\text{Terminalsymbole: } \\kappa = \\ast,A,B, \\ldots \\\\  x_t(\\alpha_1, \\alpha_2, \\ldots, \\alpha\_{m_t}) & x_t \\text{ Testattribut mit } m_t \\text{ Auspr\\"agungen} \\end{array} \\right.](https://latex.codecogs.com/png.latex?%5Calpha%20%3D%20%5Cleft%5Clbrace%20%5Cbegin%7Barray%7D%7Bll%7D%20%20%5Ckappa%20%26%20%5Ctext%7BTerminalsymbole%3A%20%7D%20%5Ckappa%20%3D%20%5Cast%2CA%2CB%2C%20%5Cldots%20%5C%5C%20%20x_t%28%5Calpha_1%2C%20%5Calpha_2%2C%20%5Cldots%2C%20%5Calpha_%7Bm_t%7D%29%20%26%20x_t%20%5Ctext%7B%20Testattribut%20mit%20%7D%20m_t%20%5Ctext%7B%20Auspr%5C%22agungen%7D%20%5Cend%7Barray%7D%20%5Cright. "\alpha = \left\lbrace \begin{array}{ll}  \kappa & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\  x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen} \end{array} \right.")

### **Entscheidungsbaum** ![\\alpha](https://latex.codecogs.com/png.latex?%5Calpha "\alpha"):

![
\\alpha = \\left\\lbrace \\begin{array}{ll}
    \\kappa  & \\text{Terminalsymbole: } \\kappa = \\ast,A,B, \\ldots \\\\
    x_t(\\alpha_1, \\alpha_2, \\ldots, \\alpha\_{m_t}) & x_t \\text{ Testattribut mit } m_t \\text{ Auspr\\"agungen}
\\end{array} \\right.
](https://latex.codecogs.com/png.latex?%0A%5Calpha%20%3D%20%5Cleft%5Clbrace%20%5Cbegin%7Barray%7D%7Bll%7D%0A%20%20%20%20%5Ckappa%20%20%26%20%5Ctext%7BTerminalsymbole%3A%20%7D%20%5Ckappa%20%3D%20%5Cast%2CA%2CB%2C%20%5Cldots%20%5C%5C%0A%20%20%20%20x_t%28%5Calpha_1%2C%20%5Calpha_2%2C%20%5Cldots%2C%20%5Calpha_%7Bm_t%7D%29%20%26%20x_t%20%5Ctext%7B%20Testattribut%20mit%20%7D%20m_t%20%5Ctext%7B%20Auspr%5C%22agungen%7D%0A%5Cend%7Barray%7D%20%5Cright.%0A "
\alpha = \left\lbrace \begin{array}{ll}
    \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
    x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
\end{array} \right.
")

Geht das auch im Fließtext?

![
\\alpha = \\left\\lbrace \\begin{array}{ll}
    \\kappa  & \\text{Terminalsymbole: } \\kappa = \\ast,A,B, \\ldots \\\\
    x_t(\\alpha_1, \\alpha_2, \\ldots, \\alpha\_{m_t}) & x_t \\text{ Testattribut mit } m_t \\text{ Auspr\\"agungen}
\\end{array} \\right.
](https://latex.codecogs.com/png.latex?%0A%5Calpha%20%3D%20%5Cleft%5Clbrace%20%5Cbegin%7Barray%7D%7Bll%7D%0A%20%20%20%20%5Ckappa%20%20%26%20%5Ctext%7BTerminalsymbole%3A%20%7D%20%5Ckappa%20%3D%20%5Cast%2CA%2CB%2C%20%5Cldots%20%5C%5C%0A%20%20%20%20x_t%28%5Calpha_1%2C%20%5Calpha_2%2C%20%5Cldots%2C%20%5Calpha_%7Bm_t%7D%29%20%26%20x_t%20%5Ctext%7B%20Testattribut%20mit%20%7D%20m_t%20%5Ctext%7B%20Auspr%5C%22agungen%7D%0A%5Cend%7Barray%7D%20%5Cright.%0A "
\alpha = \left\lbrace \begin{array}{ll}
    \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots \\
    x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Auspr\"agungen}
\end{array} \right.
")

## Images

![Sky](images/somefig.png)

## Stichpunkte

-   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
    -   Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
-   sed diam nonumy eirmod tempor invidunt ut labore et dolore …
    1.  sed diam nonumy eirmod tempor invidunt ut labore et dolore …
    2.  sed diam nonumy eirmod tempor invidunt ut labore et dolore …
-   magna aliquyam erat, sed diam voluptua.
    1.  magna aliquyam erat, sed diam voluptua.
    2.  magna aliquyam erat, sed diam voluptua.

Nummerierte Aufzählungen funktionieren scheinbar nur mit 1., 2., …

## Hervorhebungen

-   Use `*italic*` to *emphasize* in Markdown
-   Use `**bold**` to **emphasize** in Markdown

## Quotes

> Artificial Intelligence is the study of how to make computers do things at
> which, at the moment, people are better.
>
> – Elaine Rich (“Artificial Intelligence”, McGraw-Hill, 1983)

## Lokale Abbildungen

![Bildunterschrift](images/somefig.png)

## Abbildungen im Web

![Minion](https://octodex.github.com/images/minion.png)
(Quelle: https://learn.netlify.app/en/cont/markdown/)

## Skalierte Abbildungen

<figure>
<img src="images/somefig.png" style="width:10.0%" alt="Bildunterschrift" /><figcaption aria-hidden="true">Bildunterschrift</figcaption>
</figure>

<img src="images/somefig.png" style="width:10.0%" />

## Code und Syntax-Highlighting

``` c
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
Also with syntax highlighting like `int main()` …

## Code-Block

<div class="cell code" execution_count="1">

``` python
print("hello")
```

<div class="output stream stdout">

    hello

</div>

</div>

<div class="cell code" execution_count="2">

``` c
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

</div>

## Tabellen

| KW  | VL                                                                                                                                                                                                                               | Praktikum                                                |
|-----|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------|
| 45  | \[Orga FHB\] (**Zoom**) \|\| \[Einführung KI\] \| \[Problemlösen\]                                                                                                                                                               | –                                                        |
| 46  | Suche: \[Tiefensuche\] \| \[Breitensuche\] \| \[Branch-and-Bound und Best First\] \| \[A\*\]                                                                                                                                     | \[FHB01: Grenzen der KI, Problemraum (T)\]               |
| 47  | Lokale Suche: \[Gradientenabstieg und Simulated Annealing\] \| \[Evolutionäre/Genetische Algorithmen\]                                                                                                                           | \[FHB02: Tiefen- und Breitensuche, A-Stern (T)\]         |
| 48  | Spiele: \[Minimax\] \| \[Minimax Erweiterungen\] \| \[Alpha-Beta-Pruning\]                                                                                                                                                       | \[FHB03: Lokale Suche: Genetische Algorithmen (T,I)\]    |
| 49  | \[Constraints\] \| \[Backtracking, Heuristiken\] \| \[Forward Checking und AC-3\]                                                                                                                                                | \[FHB04: Spiele: Minimax, Alpha-Beta-Pruning (T,I)\]     |
| 50  | \[Machine Learning 101\] \| Entscheidungsbäume: \[CAL2, Pruning\] \| \[CAL3\] \| \[Entropie\] \| \[ID3 und C4.5\]                                                                                                                | \[FHB05: Constraints (AIMA), AC-3-Handsimulation (T,I)\] |
| 51  | \[Wahrscheinlichkeitstheorie 101\] \| Textklassifikation mit \[Naive Bayes\]                                                                                                                                                     | \[FHB06: Entscheidungsbäume (T)\]                        |
| 52  | –                                                                                                                                                                                                                                | –                                                        |
| 53  | –                                                                                                                                                                                                                                | –                                                        |
| 01  | \[ML Einführung, Vektorisierung, Perzeptron Lernalgorithmus\]                                                                                                                                                                    | –                                                        |
| 02  | \[Lineare Regression, Fehlerfunktion, Mean Square Error (MSE), Gradientenabstieg\]                                                                                                                                               | \[TDU01: Perzeptron\]                                    |
| 03  | \[Logistische Regression, Overfitting, Generalisierung, Regularisierung, Train-Dev-Test Sets\]                                                                                                                                   | \[TDU02: Lineare Regression\]                            |
| 04  | \[Nichtlineare Modelle\] \| \[Overfitting und Regularisierung\] \| \[Multi-Layer Perceptron (MLP)\] \| \[Backpropagation\] \| \[Backpropagation (Nachtrag)\] \|\| \[Rückblick\] \| Umfrage \| \[Klausurvorbereitung\] (**Zoom**) | \[TDU03: Logistische Regression und MLP\]                |

## Columns

<div class="columns">

<div class="column" width="40%">

Hinweis:
![\\log_2 x = \\frac{\\log\_{10} x}{\\log\_{10} 2} = \\frac{\\log x}{\\log 2}](https://latex.codecogs.com/png.latex?%5Clog_2%20x%20%3D%20%5Cfrac%7B%5Clog_%7B10%7D%20x%7D%7B%5Clog_%7B10%7D%202%7D%20%3D%20%5Cfrac%7B%5Clog%20x%7D%7B%5Clog%202%7D "\log_2 x = \frac{\log_{10} x}{\log_{10} 2} = \frac{\log x}{\log 2}")

</div>

<div class="column" width="50%">

![](images/somefig.png)

</div>

</div>
