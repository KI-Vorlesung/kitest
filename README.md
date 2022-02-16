# TEST: Alternative Bereitstellung der Vorlesungsmaterialien

Die Vorlesungsmaterialien werden als Markdown plus Bilder plus Code im Repo
abgelegt. Da die Pipeline `.md > Pandoc > .md > Hugo > .html` etwas fragil
ist, hier der Test, ob man alternativ nur mit Pandoc arbeiten kann.

Github kann einige Formate direkt als Vorschau rendern, dabei sind auch
Markdown und Jupyter.

Bei Markdown besteht das Problem, dass derzeit keine Formeln gerendert
werden. Dinge wie ein Inhalts- oder Quellenverzeichnis muss man selbst
anlegen.

Bei Jupyter werden fast alle Formeln problemlos in der GH-Vorschau
gerendert. Inhalts- oder Quellenverzeichnis muss man aber auch selbst
anlegen.


Test: Die Materialien werden mit Pandoc übersetzt: Markdown (Formeln
als Link nach https://latex.codecogs.com/) und Jupyter und in einem
eigenen Branch eingebunden und bereit gestellt. Das Readme stellt dann
den Startpunkt für die Studis dar und zeigt auf diese Dateien/Branch.


## Fahrplan

| Woche | Vorlesung                                                                   | Praktikum          | Literatur         |
|-------|-----------------------------------------------------------------------------|--------------------|-------------------|
| 01    | Wuppie (Jupyter v1) [skript][skript01] [video][video01] [slides][slides01]  | [Blatt 01][shee01] | Ertel, Kapitel 12 |
| 02    | Fluppie (Jupyter v2) [skript][skript02] [video][video02] [slides][slides02] | [Blatt 02][shee02] | Ertel, Kapitel 13 |
| 03    | Foo (Markdown) [skript][skript03] [video][video03] [slides][slides03]       | [Blatt 03][shee03] | Ertel, Kapitel 14 |

Hinweis: Die Links sind nur teilweise sinnvoll und zeigen teilweise auf die
selben Dokumente. Dies ist nur ein Test, ob das so funktionieren könnte.


[skript01]: https://github.com/KI-Vorlesung/kitest/blob/test-markdown/markdown/tbd/test-markdown/gh-markdown_.ipynb
[video01]:  https://youtu.be/qnhLQzEyNrA
[slides01]: https://github.com/KI-Vorlesung/kitest/blob/test-markdown/markdown/tbd/test-markdown/gh-markdown.pptx
[sheet01]:  https://github.com/KI-Vorlesung/kitest/blob/test-markdown/README.md

[skript02]: https://github.com/KI-Vorlesung/kitest/blob/test-markdown/markdown/tbd/test-markdown/gh-markdown.ipynb
[video02]:  https://youtu.be/qnhLQzEyNrA
[slides02]: https://github.com/KI-Vorlesung/kitest/blob/test-markdown/markdown/tbd/test-markdown/gh-markdown.pptx
[sheet02]:  https://github.com/KI-Vorlesung/kitest/blob/test-markdown/README.md

[skript03]: https://github.com/KI-Vorlesung/kitest/blob/test-markdown/markdown/tbd/test-markdown/gh-markdown.md
[video03]:  https://youtu.be/qnhLQzEyNrA
[slides03]: https://github.com/KI-Vorlesung/kitest/blob/test-markdown/markdown/tbd/test-markdown/gh-markdown.pptx
[sheet03]:  https://github.com/KI-Vorlesung/kitest/blob/test-markdown/README.md


