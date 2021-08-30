---
type: lecture-cg
title: "Test2: Ordner statt Datei"
weight: 2
---


## Lokale Abbildungen mit Markdown

![Bildunterschrift](images/somefig.png)


## Lokale Abbildungen mit Shortcodes

{{% figure src="images/somefig.png" title="Bildunterschrift" %}}

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


## Anhänge

Siehe [Anleitung](https://learn.netlify.app/en/shortcodes/attachments/): Wenn die Seite ein Ordner `<name>/` ist (mit der entsprechenden Markdown-Datei `index.md` darin), dann können Anhänge im Ordner `<name>/files/` gespeichert werden.

Über den [Shortcode](https://gohugo.io/content-management/shortcodes/) `attachments` können dann die zur Seite gehörigen Anhänge an dieser Stelle eingebunden werden. Im Beispiel werden nur PDF-Dateien angezeigt/verlinkt.

{{% attachments title="Anhänge" pattern=".*(pdf)" /%}}
