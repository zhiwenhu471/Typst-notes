#set page(
  paper: "a4", 
  header: align(
    right + horizon)[Day 1],
  numbering: "1 / 1",
  columns: 1)
#counter(page).update(1)

#set par(justify: true)

#set text(font: (
  (name: "Times New Roman", covers: "latin-in-cjk"),
  "Noto Sans SC"
), size: 13pt)

#place(
  top + center, 
  float: true,
  scope: "parent",
  clearance: 2em
)[
  #title[Hello, 2026!]
]

#show link: set text(fill: blue, weight: 700)
#show link: underline

#set heading(numbering: "1.")

= Record <record>

我开始学习 `Typst` 中文教程。

= 终端命令

```bash
typst compile file.typ
typst watch file.typ
```

= 笔记

为了创建新的段落，需要至少空一行

- *着重和加强语气*
// #show strong: content => {
//   show regex("\p{Hani}"): it => 
// box(place(text("·", size: 0.8em), dx:
// 0.1em, dy: 0.75em) + it)
//   content.body 
// }
*中文排版的着重语义用加点表示。*

```js
function fibnacci(n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
```

\u{2665}

AB v.s A~B

长沙--东莞

真的假的......

#strong[
  从前有座山，山会讲故事，故事讲的是
  ...
]

#emph()[
  This is a paragraph with some *emphasized* text.
]

#(1024*1024*1024*1024)

#2是一个素数 \
2是一个素数

四的三次方是#calc.pow(4, 3)

#let exercise(question, answer) = strong(question) + parbreak() + answer

#exercise[
  Question: _turing complete_?
][
  Answer: Yes, Typst is.
]

#highlight()[高亮] \
#highlight(fill: red)[红色高亮]

#underline(offset: 1.5pt)[回家了吗] \
#overline()[回家] \
#strike()[回家] \
#underline(offset: 1.5pt, underline(offset: 3pt, [回家])) \

#underline()[language] \  // 下划线不连贯
#underline(evade: false)[language] \  // 下划线连贯

x#sub[y] \
x#super[y] \
x#super(size: 0.8em)[y] \
x#super(baseline: -0.1em)[y] \

pt 和中文字号的对应关系：
#figure(
  image("img/pt.png"), 
  caption: "pt 和中文字号的对应关系"
)

#text(fill: blue)[2em]即是两倍于当前文字大小的长度

#import "@preview/pointless-size:0.1.2": zh
#zh(5) \  // 五号是1.5pt

#[ 一段文本 ] \
#repr([ 一段文本 ])

#type(1) \
#type([Typst])

$inf$ = #calc.inf \
$pi$ = #calc.round(calc.pi, digits: 15) \
$e$ = #calc.round(calc.e, digits: 15) \
$tau$ = #calc.round(calc.tau, digits: 15) \

#figure(
  image("img/toc.png"), 
  caption: "建议文件夹目录设置"
)

#[ab] v.s. $#[a]#[b]$

#[$lambda$$(X)$] v.s. $lambda(X)$

两只#{
  [兔]
  set text(rgb("#ffd1dc").darken(15%))
  { [兔白]; set text(orange); [又白] }
  [，真可爱]
}

#let is-dark-theme = true
#if is-dark-theme {
  set rect(fill: black)
}
#rect([wink!])

#let is-dark-theme = true
#set rect(fill: black) if is-dark-theme
#set text(fill: white) if is-dark-theme
#rect([wink!])

#figure(
  image("img/compile_tips.png"), 
  caption: "Typst 编译步骤"
)

#eval("1 + 1")

#content text.size

- *色彩空间*

#box(square(fill: color.rgb("#b1f2eb")))
#box(square(fill: rgb(87, 127, 230)))
#box(square(fill: rgb(25%, 13%, 65%)))

#box(square(fill: red, size: 7pt))
#box(square(fill: blue, size: 7pt))

#show square: box
#set square(size: 15pt)
#square(fill: red.lighten(20%))
#square(fill: red.darken(20%)) \
#square(fill: red.saturate(20%))
#square(fill: red.desaturate(20%)) \
#square(fill: blue.mix(green))

- 渐变色
#let sqr(f) = square(fill: f(
    ..color.map.rainbow))
#stack(
  dir: ltr, spacing: 10pt,  // ltr 从左到右排列，spacing 设置间距
  sqr(gradient.linear),
  sqr(gradient.radial),
  sqr(gradient.conic))

#let pat = pattern(size: (61.8pt, 50pt))[
  #place(line(start: (0%, 0%), end: (100%, 100%)))
  #place(line(start: (0%, 100%), end: (100%, 0%)))
]

#rect(fill: pat, width: 100%, height: 60pt, stroke: 1pt)

#line(length: 100%)
#line(end: (50%, 50%))
#line(
  length: 30%, stroke: 2pt + maroon)  // maroon 是一种颜色

#curve(
  stroke: blue,
  curve.move((0pt, 20pt)),
  curve.quad((40%, 0pt), (100%, 0pt)),
  curve.line((100%, 20pt)),
  curve.close()
)

#set line(length: 100%)
#let rainbow = gradient.linear(
  ..color.map.rainbow)
#stack(
  spacing: 1em,
  line(stroke: 2pt + red),
  line(stroke: (paint: blue, thickness: 4pt, cap: "round")),
  line(stroke: (paint: blue, thickness: 1pt, dash: "dashed")),
  line(stroke: 2pt + rainbow),
)

#curve(
  fill: blue.lighten(80%),
  stroke: blue,
  curve.move((0pt, 50pt)),
  curve.line((100pt, 50pt)),
  curve.cubic(none, (90pt, 0pt), (50pt, 0pt)),
  curve.close(),
)

#box(circle(radius: 12.5pt, fill: blue))
#box(ellipse(width: 50pt, height: 25pt))
#box(square(size: 25pt, stroke: red))
#box(rect(width: 50pt, height: 25pt))

#rect[
  Automatically sized \
  to fit the content.
]

#polygon(
  fill: blue.lighten(80%),
  stroke: blue,
  (20%, 0pt),
  (60%, 0pt),
  (80%, 2cm),
  (0%,  2cm),
)

+ syntree: https://typst.app/universe/package/syntree \
+ fletcher: https://typst.app/universe/package/fletcher

