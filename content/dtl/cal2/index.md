---
type: lecture-cg
title: "CAL2"
weight: 2
---


## Entscheidungsbäume: Klassifikation
...

## Definition Entscheidungsbaum

*   Erinnerung: **Merkmalsvektor** für Objekt $v$:
    $$
        \mathbf{x}(v) = (x_1, x_2, \ldots, x_n)
    $$

    *   $n$ Merkmale (Attribute)
    *   Attribut $x_t$ hat $m_t$ mögliche Ausprägungen
    *   Ausprägung von $v$ bzgl. $x_t$: $\quad x_t(v) = i \quad$ (mit $i = 1 \ldots m_t$)

*   **Alphabet** für Baum:
    $$
        \{x_t |\; t=1,\ldots,n\} \cup \{\kappa |\; \kappa = *,A,B,C,\ldots\} \cup \{(,)\}
    $$

*   **Entscheidungsbaum** $\alpha$:
    <div>
    $$
        \alpha = \left\{ \begin{array}{ll}
            \kappa  & \text{Terminalsymbole: } \kappa = *,A,B, \ldots \\
            x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Ausprägungen}
        \end{array} \right.
    $$
    </div>

::: notes
*Anmerkung*: Stellen Sie sich die linearisierte Schreibweise wieder
wie den (verschachtelten) Aufruf von Konstruktoren vor. Es gibt die
Oberklasse `Baum`, von der für jedes Attribut eine Klasse abgeleitet
wird. D.h. der Konstruktor für eine Attributklasse erzeugt letztlich
ein Objekt vom Obertyp `Baum`. Außerdem sind die Terminalsymbole `A`,
`B`, ... Objekte vom Typ `Blatt`, welches eine Unterklasse von `Baum`
ist ...

Dabei wird die Anzahl der möglichen Ausprägungen für ein Attribut
berücksichtigt: Jede Ausprägung hat einen Parameter im Konstruktor.
Damit werden die Unterbäume beim Erzeugen des Knotens übergeben.
:::


## Induktion von Entscheidungsbäumen: CAL2
...

## Beispiel
...

## CAL2: Bemerkungen
...
