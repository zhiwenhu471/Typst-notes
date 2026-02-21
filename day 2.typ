#set page(
  paper: "a4", 
  header: align(
    right + horizon)[Preface],
  numbering: "i",
  columns: 2)
#set par(justify: true)

#set text(font: (
  (name: "Times New Roman", covers: "latin-in-cjk"),
  "Noto Sans SC"
), size: 13pt)  //分别设置“中文”和English字体

= Preface <pre>
== 02/14/2026
#lorem(400)

#set page(
  paper: "a4", 
  header: align(
    right + horizon)[Day 2],
  numbering: "1 / 1",
  columns: 2)
#counter(page).update(1)  // to reset page number to 1, and the total page number to 1

#place(
  top + center,
  float: true,
  scope: "parent",  // to make it only affect the current page
  clearance: 2em  // to add some space between the header and the content
)[
#title[Hello, Typst!]
2/14/2026
#grid(  // to make the header have two columns
  columns: (1fr, 1fr),
  align(center)[
    Zhiwen Hu \
    Central South University \
    #link("hzwzndx@163.com")
  ],
  align(center)[
    Dr. Hu \
    A nonsense institute \
    #link("zhiwenhu471@gmail.com")
  ]
)

#align(center)[
  #set par(justify: true)
  *Abstract* \
  // #place(
  //   center,
  //   rect(fill: black)
  // )
  This is the abstract of this document. 
  It is mainly about the introduction of me. 
  Now is the 2026 New Year, and I like the winter than 
  summer.I enjoy programming, and I have been learning 
  programming laguages for a long time. Whatever R, 
  Python, C, I like the programming languages. I also 
  like learning new things, and I have learned a lot of 
  things in the past few years. I am looking forward to 
  learning more things in the future. I hope this 
  document can give you a better understanding of me.
]
]
  
#set heading(numbering: "1.")
// #set heading(numbering: "(I)")
// #show heading: it => block[
//   \~
//   #emph(it.body)
//   #counter(heading).display(it.numbering)
//   \~
// ]

#set text(font: (
  (name: "Times New Roman", covers: "latin-in-cjk"),
  "Noto Sans SC"
), size: 13pt)  //分别设置“中文”和English字体

// #set text(font: "New Computer Modern")

// #set text(font: "Noto Sans CJK SC" )

#set par(justify: true)

// #lorem(600)

#show link: set text(fill: blue, weight: 700)
#show link: underline

// #show cite: it => #super[it]

#show title: set text(size: 17pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

#show cite: super

#set math.equation(numbering: "(1)")

#set line(length: 100%)
#stack(
  spacing: 1em,
  line(stroke: 2pt + red),
  line(stroke: (paint: blue, thickness: 4pt, cap: "round")),
  line(stroke: (paint: blue, thickness: 1pt, dash: "dashed")),
  line(stroke: 2pt + gradient.linear(..color.map.rainbow)),
)

= Introduction #emoji.alien <intro>

This is the @intro.

My name is *Joyboy*, which is a name from the anime *ONEPIECE* from Japan.

I like playing _Plants VS. Zombies_.

#figure(
  image("img/bean.png", width: 50%), 
  caption: [_bean shooter_ is the plant I like best.]
) <Beans>

@Beans shows the plant I like best in the _Plants VS. Zombies_ games. It does a lot harm to the zombies who walk deadly and stupid and silly. They are trying to eat my brain, but I won't let that happen in my garden.

这是我用 `Typst` 写的第一篇文档，简单，但是力求把所有的知识点都包含
在里面。

The last section is the bibliography of this document. 
It contains all the references I have cited in this 
document.

= My interests <interests>

I like learning programming, although my major is 
clinical medicine. In my spare time, I will learn 
anything interesting for me. In the past few months, 
I have learned _R, Python, Java, Git, Linux, Docker_ 
in a better way.

+ R
+ Python
+ C
+ Linux
+ Github

== Typst <Typst>

As is shown in @Typst (see #ref(<Typst>, form: "page")), 
it is a new typesetting system.

I also like math, in _typst_, math equations are like 
$Q = rho A v + C$. 
#parbreak()
If you want to make it have its own line, just like 
$ Q = rho A v + C $ To add some variables such as 
$ Q = rho A v + "time offset" $ 

$ 7.32 beta + sum_(i=0)^nabla Q_i / 2 $

$ a arrow.squiggly b $

- *arrows collections*
$ abs(arrow) $
$ attach(arrows) $
$ arrows.bt $

$ oo $

`R` and `Python` are relatively easier than other 
programming languages. 

This is a block of `R` script:
```r
getwd()
setwd()
```

Then `C`:
```c
int main()
{
  printf('Hello, Typst!')
}
```

Then `Python`:
```python
print("Hello, Typst!")
```

#text(font: "Hack")[
  `Python`
  ```python
  import this
  print("Hello, Typst!")
  ```
]

#text(font: "Hack")[
  This is the `Hack` font, which is a better display font
   for codes.
]

#text(font: "JetBrainsMono NF")[
  Jetbrains
]

*Set rules*
- #text(fill: blue)[_text_] to set font family, size, color, and other properties of text
- #text(fill: blue)[_page_] to set the page size, margins, headers, enable columns, and footers
- #text(fill: blue)[_par_] to justify paragraphs, set line spacing, and more
- #text(fill: blue)[_heading_] to set the appearance of headings and enable numbering
- #text(fill: blue)[_document_] to set the metadata contained in the PDF output, such as title and author

#figure(
  image("img/dasheng_2.jpg", width: 50%), 
  caption: [My new avatar.]
) <dasheng>

@dasheng is my favorite anima character.

#align(center + bottom)[*These words can be centered and bottomed.*]

#show "ArtosFlow": name => box[
  #box(image(
    "img/apachemaven.svg", 
    height: 0.7em
  ))
  #name
]

This project is embedded in the ArtosFlow project. 
ArtosFlow is a project of the Artos Institute.

#show "Redux": name => box[
  #box(image(
    "img/redux.svg", 
    height: 0.7em
  ))
  #name
]

This is the logo of the Redux.

$a^2 = b^2 + c^2$, 这是勾股定理。

#show <b>: set text(blue)
Are these words blue? <b>Yes, they are.

#show label("a"): set text(red)
*red* words #label("a")

#align(center)[_terms_]
#parbreak()
/ Ligature: A merged glyph
/ Kerning: Adjusting space between characters
/ Leading: Adjusting space between lines

The following is a math equation:
$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $ <sum_eq>
@sum_eq is the equation of the sum of the first n natural numbers.

- *sym* is the collection of mathematical symbols in Typst. \
#sym.arrow \
#sym.RR \
#sym.Omega.inv \
#sym.Omega \
#sym.Re \
#sym.infinity.tie \
#sym.nabla \
#sym.integral.surf \
#sym.dollar \
#sym.yuan \
#sym.euro \

#emph[Hello] \
#emoji.face \
#"hello".len()

- *code blocks* \
#{
  let a = [from];
  let b = [*world*]
  [Hello ]
  a + [ the ] + b
}

#let name = "Typst"
This is #name\'s text. It explains _ #name _.

#let my_add(x, y, z) = x + y + z
Sum is #my_add(1, 2, 3)

#let (x, y) = (1, 2)
The coordinates of the point are (#x, #y).

#let (a, .., b) = (1, 2, 3, 4)
The first number is #a, the last number is #b.

#let books = (
  Shakespeare: "Hamlet",
  Tolstoy: "War and Peace",
  Cervantes: "Don Quixote"
)

#let (Shakespeare, ) = books
Shakespeare wrote #Shakespeare.

#let (Tolstoy: h) = books
Tolstoy wrote #h.

#let (Tolstoy: h, ..other) = books
#for (author, book) in books [
  #author wrote #book.
] \
#for (author, book) in other [
  #author wrote #book.
]

#{
  let a = 1
  let b = 2
  (a, b) = (b, a)
  [a: #a, b: #b]
}

#if 1 < 2 [
  1 < 2.
] else [
  It is wrong.
]

#("a", "b", "c"
  ).map(x => x + "1")

#("a", "b", "c"
  ).filter(x => x != "b")

#("a", "b", "c"
  ).reduce((x, y) => x + y)

#"abc".len() is the length of the string "abc".

#import emoji: face
#face.grin

I got an ice cream for \$1.50! \u{1f600}

#list(
  ["apple", "banana", "cherry"],
  ["dog", "cat", "mouse"]
) 

#enum[first][second][third]

#set enum(numbering: "a)")
+ staff
+ forget

#set enum(numbering: "1.")
#enum(
  enum.item(1)[Typst], 
  enum.item(2)[Latex],
  enum.item(3)[Word]
)

This is _emphasized._ \
This is #emph[too.]

// #show emph: it => {
  // text(blue, it.body)
// }

This is #text(fill: purple)[_emphasized_] differently.

- *attach*
$ attach(
  Pi, t: alpha, b: beta,
  tl: 1, tr: 2+3, bl: 4+5, br: 6,
) $

$ scripts(sum)_1^2 != sum_1^2 $
// scripts() is used to make the subscript and 
// superscript closer to the symbol.

$ A = pi r^2 $

$ x < y => x gt.eq.not y $

#let it = [= heading]
#it.body \
#it.depth \
#it.fields()

#let dict = (greet: "Hello")
#dict.greet \
#emoji.face

#3.14 \
#1e4 \
#(10 / 4) \
#float(true) \
#float(false) \

#let dict = (
  name: "Typst",
  born: 2024,
  now: 2026,
  version: "0.14.2"
)

#dict.name \
#dict.version \
#dict.now \
#dict.keys() \
#dict.values() \

#dictionary(sys).at("version")

This list is affected by: #[
  #set list(marker: [--])
  - dash
]

This one is not:
- Bullet

#let task(body, critical: false) = {
  set text(purple) if critical
  [- #body]
}

#task(critical: true)[Food today?]
#task(critical: false)[Work deadline]

#show "Project": smallcaps
#show "badly": "great"

This Project worked badly.

- *languages*

#let value = context text.lang
#value

#set text(lang: "de")

- *context*

#context text.lang

#set text(lang: "fr")
#context text.lang

#context counter(heading).get()

- *module*

#import "@preview/example:0.1.0": add
#add(1, 2)

#("table" in std) \  // to check if the "table" module is in the standard library
#("nope" in std) \

- *array*

#let values = (1, 2, 3, 4, 5)

#values.at(0) \
#values.at(1) \

#for (i, value) in ("A", "B", "C").enumerate() [
  [#i: #value]
]

#("A", "B", "C").map(x => x + "1") \
#("A", "B", "C").enumerate(start: 1)

#let array = (
  (a: 2, b: 4),
  (a: 1, b: 5),
  (a: 2, b: 3),
)
#array
#parbreak()
#array.sorted(key: it => (it.a, it.b))

= Publication <Pub>

#context counter(heading).get()

#context [
  #counter(heading).get() \
  #counter(heading).at(here()) \
  #counter(heading).at(<intro>) \
]

My first article was published in 2024.@ChunrunQu2024 
It took me a long time to accomplish this script, 
although I was only responsible for the _data processing_
 and final revising, which really left a deep impression 
 on me.

= Blog <blog>

I have created my own blog in two ways. One is the 
_github pages_, the other is the _Cloudflare pages_. 
So you can see my blog at the two websites:

- https://zhiwenhu471.github.io/
- https://hzwyyds.online/

= Contact me <contact>

#import "@preview/tiaoma:0.3.0"
#let next-step(url, body) = grid(
  columns: 2,
  gutter: 1em,  // to add some space between the two columns
  tiaoma.qrcode(url, width: 3em),
  {
    show strong: link.with(url)
    body
  }
)

#next-step("https://xhslink.com/m/4QhW4BrmiNJ")[
  This is my Rednote account, you can follow me. 
  I will post everything I have learned in Rednote.
]

#next-step("https://github.com/zhiwenhu471")[
  You can also follow my _github_ account by this code.
]

#bibliography("own-bib.bib") <bib>