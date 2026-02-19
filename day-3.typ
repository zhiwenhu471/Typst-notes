#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import fletcher.shapes: house, hexagon, diamond
#set page(
  paper: "a4", 
  header: align(
    right + horizon)[Day 3],
  numbering: "1 / 1",
  columns: 1)
#counter(page).update(1)

#set par(justify: true)

#set text(font: (
  (name: "Arial", covers: "latin-in-cjk"),
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


= _fletcher_
- fig 1
#align(center, fletcher.diagram(
  node((0, 0), $S_1$),
  node((1, 0), $S_2$),

  edge((1, 0), (0, 0), $g$, "..}>", bend: 25deg),
  edge((0, 0), (1, 0), $f$, "..}>", bend: 25deg),
))

#context text.size

- fig 2
#box(square(fill: red, size: 7pt))
#box(square(fill: blue, size: 7pt))

- fig 3
#diagram(cell-size: 15mm, $
	G edge(f, ->) edge("d", pi, ->>) & im(f) \
	G slash ker(f) edge("ur", tilde(f), "hook-->")
$)

- fig 4
#diagram(
	node-stroke: 1pt,
	node((0,0), [Start], corner-radius: 2pt, extrude: (0, 3)),
	edge("-|>"),
	node((0,1), align(center)[
		Hey, wait,\ this flowchart\ is a trap!
	], shape: diamond),
	edge("d,r,u,l", "-|>", [Yes], label-pos: 0.1)
)

- fig 5
// #set text(10pt)
#diagram(
	node-stroke: .1em,
	node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
	spacing: 4em,
	edge((-1,0), "r", "-|>", `open(path)`, label-pos: 0, label-side: center),
	node((0,0), `reading`, radius: 2em),
	edge(`read()`, "-|>"),
	node((1,0), `eof`, radius: 2em),
	edge(`close()`, "-|>"),
	node((2,0), `closed`, radius: 2em, extrude: (-2.5, 0)),
	edge((0,0), (0,0), `read()`, "--|>", bend: 130deg),
	edge((0,0), (2,0), `close()`, "-|>", bend: -40deg),
)

// bend 是一个角度，表示边的弯曲程度和方向。正值表示顺时针弯曲，负值表示逆时针弯曲
// label-pos 是一个介于 0 和 1 之间的值，表示标签在边上的位置。0 表示起点，1 表示终点，0.5 表示中点
// extrude 是一个坐标，表示节点的挤出方向和距离。挤出是指将节点从二维平面拉伸到三维空间，使其具有厚度和立体感。坐标的 x 分量表示水平挤出，y 分量表示垂直挤出。正值表示向右或向下挤出，负值表示向左或向上挤出

- fig 6
#diagram($
	e^- edge("rd", "-<|-") & & & edge("ld", "-|>-") e^+ \
	& edge(gamma, "wave") \
	e^+ edge("ru", "-|>-") & & & edge("lu", "-<|-") e^- \
$)

- fig 7
#diagram(
	node-defocus: 0,
	spacing: (1cm, 2cm),
	edge-stroke: 1pt,
	crossing-thickness: 5,
	mark-scale: 70%,
	node-fill: luma(97%),
	node-outset: 3pt,
	node((0,0), "magma"),

	node((-1,1), "semigroup"),
	node(( 0,1), "unital magma"),
	node((+1,1), "quasigroup"),

	node((-1,2), "monoid"),
	node(( 0,2), "inverse semigroup"),
	node((+1,2), "loop"),

	node(( 0,3), "group"),

	{
		let quad(a, b, label, paint, ..args) = {
			paint = paint.darken(25%)
			edge(a, b, text(paint, label), "-|>", stroke: paint, label-side: center, ..args)
		}

		quad((0,0), (-1,1), "Assoc", blue)
		quad((0,1), (-1,2), "Assoc", blue, label-pos: 0.3)
		quad((1,2), (0,3), "Assoc", blue)

		quad((0,0), (0,1), "Id", red)
		quad((-1,1), (-1,2), "Id", red, label-pos: 0.3)
		quad((+1,1), (+1,2), "Id", red, label-pos: 0.3)
		quad((0,2), (0,3), "Id", red)

		quad((0,0), (1,1), "Div", yellow)
		quad((-1,1), (0,2), "Div", yellow, label-pos: 0.3, "crossing")

		quad((-1,2), (0,3), "Inv", green)
		quad((0,1), (+1,2), "Inv", green, label-pos: 0.3)

		quad((1,1), (0,2), "Assoc", blue, label-pos: 0.3, "crossing")
	},
)

- fig 8
#diagram(
	spacing: (1em, 3em),
	$
		& tau^* (bold(A B)^n R slash.double R^times) edge(->) & bold(B)^n R slash.double R^times \
		X edge("ur", "-->") edge("=") & X edge(->, tau) edge("u", <-) & bold(B) R^times edge("u", <-)
	$,
	edge((2,1), "d,ll,u", "->>", text(blue, $Gamma^*_R$), stroke: blue, label-side: center)
)

- fig 9
#let blob(pos, label, tint: white, ..args) = node(
	pos, align(center, label),
	width: 28mm,
	fill: tint.lighten(60%),
	stroke: 1pt + tint.darken(20%),
	corner-radius: 5pt,
	..args,
)
#diagram(
	spacing: 8pt,
	cell-size: (8mm, 10mm),
	edge-stroke: 1pt,
	edge-corner-radius: 5pt,
	mark-scale: 70%,

	blob((0,1), [Add & Norm], tint: yellow, shape: hexagon),
	edge(),
	blob((0,2), [Multi-Head\ Attention], tint: orange),
	blob((0,4), [Input], shape: house.with(angle: 30deg),
		width: auto, tint: red),

	for x in (-.3, -.1, +.1, +.3) {
		edge((0,2.8), (x,2.8), (x,2), "-|>")
	},
	edge((0,2.8), (0,4)),

	edge((0,3), "l,uu,r", "--|>"),
	edge((0,1), (0, 0.35), "r", (1,3), "r,u", "-|>"),
	edge((1,2), "d,rr,uu,l", "--|>"),

	blob((2,0), [Softmax], tint: green),
	edge("<|-"),
	blob((2,1), [Add & Norm], tint: yellow, shape: hexagon),
	edge(),
	blob((2,2), [Feed\ Forward], tint: blue),
)

- fig 10
#let colors = (maroon, olive, eastern)
#set text(white)
#diagram(
	edge-stroke: 1pt,
	node-corner-radius: 5pt,
	edge-corner-radius: 8pt,
	mark-scale: 80%,

	node((0,0), [input], fill: colors.at(0)),
	node((2,+1), [memory unit (MU)], fill: colors.at(1)),
	node((2, 0), align(center)[arithmetic & logic \ unit (ALU)], fill: colors.at(1)),
	node((2,-1), [control unit (CU)], fill: colors.at(1)),
	node((4,0), [output], fill: colors.at(2), shape: fletcher.shapes.hexagon),

	edge((0,0), "r,u,r", "-}>"),
	edge((2,-1), "r,d,r", "-}>"),
	edge((2,-1), "r,dd,l", "--}>"),
	edge((2,1), "l", (1,-.5), marks: ((inherit: "}>", pos: 0.65, rev: false),)),

	for i in range(-1, 2) {
		edge((2,0), (2,1), "<{-}>", shift: i*5mm, bend: i*20deg)
	},

	edge((2,-1), (2,0), "<{-}>"),
)

- fig 11
#set text(black)
#let nodes = ("A", "B", "C", "D", "E", "F", "G")
#let edges = (
	(3, 2),
	(4, 1),
	(1, 4),
	(0, 4),
	(3, 0),
	(5, 6),
	(6, 5),
)
#diagram({
	for (i, n) in nodes.enumerate() {
		let θ = 90deg - i*360deg/nodes.len()
		node((θ, 18mm), n, stroke: 0.5pt, name: str(i))
	}
	for (from, to) in edges {
		let bend = if (to, from) in edges { 10deg } else { 0deg }
		// refer to nodes by label, e.g., <1>
		edge(label(str(from)), label(str(to)), "-|>", bend: bend)
	}
})

- fig 12
#diagram(
	node-corner-radius: 4pt,
	node((0,0), $S a$),
	node((1,0), $T b$),
	node((0,1), $S a'$),
	node((1,1), $T b'$),
	edge((0,0), (1,0), "->", $f$),
	edge((0,1), (1,1), "->", $f'$),
	edge((0,0), (0,1), "->", $alpha$),
	edge((1,0), (1,1), "->", $beta$),

	node((2,0), $(a, b, f)$),
	edge("->", text(0.8em, $(alpha, beta)$)),
	node((2,1), $(a', b', f')$),

	node((0,2), $S a$),
	edge("->", $f$),
	node((1,2), $T b$),

	node((2,2), $(a, b, f)$),

	{
		let tint(c) = (stroke: c, fill: rgb(..c.components().slice(0,3), 5%), inset: 8pt)
		node(enclose: ((0,0), (1,1)), ..tint(teal), name: <big>)
		node(enclose: ((2,0), (2,1)), ..tint(teal), name: <tall>)
		node(enclose: ((0,2), (1,2)), ..tint(green), name: <wide>)
		node(enclose: ((2,2),), ..tint(green), name: <small>)
	},

	edge(<big>, <tall>, "<==>", stroke: teal + .75pt),
	edge(<wide>, <small>, "<==>", stroke: green + .75pt),
	edge(<big>, <wide>, "<=>", stroke: .75pt),
	edge(<tall>, <small>, "<=>", stroke: .75pt),
)

- fig 13
#diagram(
	spacing: (18mm, 10mm),
	node-stroke: luma(80%),
	node((0.5,0), [*Diagram*], name: <d>),
	node((0,1), [*Node*], name: <n>),
	node((1,1), [*Edge*], name: <e>),

	edge(<d>, ((), "|-", (0,0.5)), ((), "-|", <n>), <n>, "1!-n!"),
	edge(<d>, ((), "|-", (0,0.5)), ((), "-|", <e>), <e>, "1!-n?"),


	edge("1!-n?"),

	node((1,2), [*Mark*], name: <m>),

	edge(<e>, "-|>", <n>, stroke: teal, label: text(teal)[snap], left),

	edge((rel: (-15pt, 0pt), to: <n>), <d>, "-|>", bend: 40deg, stroke: orange, text(orange)[layout], label-angle: auto)
)

#let bent-edge(from, to, ..args) = {
  let midpoint = (from, 50%, to)
  let vertices = (
    from,
    (from, "|-", midpoint),
    (midpoint, "-|", to),
    to,
  )
  edge(..vertices, "-|>", ..args)
}

- fig 14
#diagram(
  node-stroke: luma(80%),
  edge-corner-radius: none,
  spacing: (10pt, 20pt),

  // Nodes
  node((1.5,0), [*Entrate\ pubblicitarie*], name: <a>),
  node((0.5,1), [*Numero di\ impression*], name: <b>),
  node((2.5,1), [*Guadagno medio\ per impression*], name: <c>),

  node((0,2), [*Traffico\ sul sito*], name: <d>),
  node((1,2), [*Impression/\ visitatori*], name: <e>),

  node((2,2), [*Modalità\ di vendita*], name: <f>),
  node((3,2), [*Tipo di\ posizionamento*], name: <g>),

  // Edges
  bent-edge(<a>, <b>),
  bent-edge(<a>, <c>),
  bent-edge(<b>, <d>),
  bent-edge(<b>, <e>),
  bent-edge(<c>, <f>),
  bent-edge(<c>, <g>),
)

- fig 15
#diagram(
	mark-scale:130%,
$
	edge("rdr", overline(q), "-<|-")
	edge(#(4, 0), #(3.5, 0.5), b, "-<|-")
	edge(#(4, 1), #(3.5, 0.5), overline(b), "-<|-", label-side:#left) \
	& & edge("d", "-<|-") & & edge(#(3.5, 0.5), #(2, 1), Z', "wave") \
	& & edge(#(3.5, 2.5), #(2, 2), gamma, "wave") \
	edge("rru", q, "-|>-") & \
$)

#let member(..args) = edge(..args, " ", label: $in$, label-side: center, label-angle: right)

- fig 16
#diagram(
  spacing: 7mm,
  node-inset: 7pt,
$
id_S member() edge("d", |->) &
  "Hom"_cal(C)(S, S) edge(->, script(phi.alt_S)) edge("d", ->, script(f^*), #right) &
  A(S) edge("d", ->, script(A(f)), #left) &
  u_S member("l") edge("d", |->) \
f member() &
  "Hom"_cal(C)(T, S)) edge(->, script(phi.alt_T), #right) &
  A(T) &
  phi.alt_T (f) member("l") \
$)

= _syntree_

#import "@preview/syntree:0.2.1": *

- fig 1
#syntree(
  nonterminal: (font: "Hack"),
  terminal: (fill: blue),
  child-spacing: 3em, // default 1em
  layer-spacing: 3em, // default 2.3em
  "[S [NP This] [VP [V is] [^NP a wug]]]"
)

- fig 2
#let bx(col) = box(fill: col, width: 1em, height: 1em)
#tree("colors",
  tree("warm", bx(red), bx(orange)),
  tree("cool", bx(blue), bx(teal)))


#let p(w, f, ..args) = box(
  width: w, height: 10pt, fill: f, ..args)
4比6：#p(100pt, blue, p(40%, red))

4比6：#p(100pt, blue,
  p(4fr, red) + p(6fr, blue))

#pagebreak(weak: true)  // new page

// #pagebreak(weak: true), new page, not if there are nothing

// parbreak(), new paragraph, not if there are nothing

#block(fill: blue)[A]
#block(fill: red)[B]

#rect(width: 100pt)[#box(fill: blue)[A A A A A A A A A A A A A]]

#rect(width: 100pt)[a a a a#box(fill: blue, width: 50%)[A A A A A A A A A]a a a]
#rect(width: 100pt)[a a a a a#box(fill: blue, width: 50%)[A A A A A A A A A]a a a]

我们之中混入了
#box(rect(width: 100pt)[a a a a#box(fill: blue, width: 50%)[A A A A A A A A A]a a a])
两个矩形
#box(rect(width: 100pt)[a a a a a#box(fill: blue, width: 50%)[A A A A A A A A A]a a a])

#show <fill-yellow>: it => {
  show regex("[\w]"): it => {
    box(place(dx: -0.1em, dy: -0.15em, box(fill: yellow, width: 0.85em, height: 0.95em)) + it)
  }
  it
}
#rect(width: 100pt)[#[a a a a a a] #[a a a a a a a ab] <fill-yellow> ]

`\w` means any word character, which includes letters (both uppercase and lowercase), digits, and underscores. It does not include spaces or punctuation characters.

= pad

#let square = rect(fill: blue, width: 15pt, height: 15pt)
#box(fill: red, square)
#box(fill: red, pad(square))

#let square = rect(fill: blue, width: 15pt, height: 15pt)
#box(fill: red, pad(left: 5pt, square))
#box(fill: red, pad(top: 5pt, square))
#box(fill: red, pad(right: 5pt, square))
#box(fill: red, baseline: 5pt, pad(bottom: 5pt, square))
#box(fill: red, pad(left: 5pt, top: 5pt, square))
#box(fill: red, pad(left: 5pt, right: 5pt, square))

#let square = rect(fill: blue, width: 15pt, height: 15pt)
#box(fill: red, pad(x: 5pt, square))
#box(fill: red, baseline: 5pt, pad(y: 5pt, square))
#box(fill: red, baseline: 2pt, pad(left: 5pt, rest: 2pt, square))

In this, `x` represents left and right, `y` represents top and bottom.

= align

#let a_square = rect(fill: red, width: 15pt, height: 15pt)
#let abox = box.with(fill: gradient.radial(..color.map.mako), width: 20pt, height: 20pt)

#abox(a_square)
#abox(align(a_square))

To contron the direction of the box, we can use the `left`, `top`, `right`, and `bottom` keywords. For example, `align(left + top, square)` means to align the square to the left and top of the box.

#abox(align(left + top, a_square))
#abox(align(right + top, a_square)) \
#abox(align(left + bottom, a_square))
#abox(align(right + bottom, a_square))

#abox(align(center, a_square))
#abox(align(horizon, a_square))
#abox(align(center + horizon, a_square))

// // #box(square(fill: color.rgb("#b1f2eb")))
// // #box(square(fill: rgb(87, 127, 230)))
// #box(a_square(fill: rgb(25%, 13%, 65%)))

// #show a_square: box
// #set a_square(size: 15pt)
// #a_square(fill: red.lighten(20%))
// #a_square(fill: red.darken(20%)) \
// #a_square(fill: red.saturate(20%))
// #a_square(fill: red.desaturate(20%)) \
// #a_square(fill: blue.mix(green))

// #let sqr(f) = a_square(fill: f(
//     ..color.map.rainbow))
// #stack(
//   dir: ltr, spacing: 10pt,
//   sqr(gradient.linear),
//   sqr(gradient.radial),
//   sqr(gradient.conic ))

#let sqr(f) = std.square(fill: f(
    ..color.map.rainbow))
#stack(
  dir: ltr, spacing: 10pt,
  sqr(gradient.linear),
  sqr(gradient.radial),
  sqr(gradient.conic ))

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

#let se = abox(align(start, square)) + abox(align(end, square))
#se \
// #set text(dir: ltr)
// #se

#let rects = (rect(fill: red)[1], rect(fill: blue)[2], rect(fill: green)[3])
#stack(dir: ltr, ..rects)

= 空间变换

- move
#rect(inset: 0pt, move(
  dx: 6pt, dy: 6pt,
  rect(
    inset: 8pt,
    fill: white,
    stroke: black,
    [Abra cadabra]
  )
))

#let TeX(width) = {
  set text(font: "New Computer Modern", weight: "regular")
  box(width: width, {
    [T]
    box(stroke: red, move(dx: -0.2em, dy: 0.22em)[E])
    box(stroke: green, move(dx: -0.4em)[X])
  })
}
#TeX(2.2em) is a digital typographical systems. \
#TeX(2.1em) is a digital typographical systems.

- scale
This is original size.
#scale(x: 110%)[This is mirrored.]
#box(scale(x: 100%)[This is scaled.]) 1 \
#box(scale(x: 115%)[This is scaled.]) 1
#scale(x: -100%)[This is mirrored.]

- rotate
#rotate(5deg)[This is rotated.]

#let ac(a) = calc.abs(calc.cos(a))
#let ax(a) = calc.abs(calc.sin(a))
#let rot(x,y,a) = .5*(x*(ac(a)-1)+y*ax(a))
#let rotx(body, angle) = context {
let sz = measure(body)
box(stroke: green, inset: (
  x: rot(sz.width, sz.height, angle),
  y: rot(sz.height, sz.width, angle)),
  rotate(body, angle))
}
#lorem(7) This is a #rotx([Vertical],-90deg) word, and #rotx([this],-7deg) is #rotx([skew.],7deg) It also works with #rotx($e^(-x)$,-95deg). #lorem(20)

#{
  [= 生活在Content树上]
  [现代社会以海德格尔的一句“一切实践传统都已经瓦解完了”为嚆矢。]
  [滥觞于家庭与社会传统的期望正失去它们的借鉴意义。]
  [但面对看似无垠的未来天空，我想循卡尔维诺“树上的男爵”的生活好过过早地振翮。]
}

#import "@preview/cetz:0.4.2"
#align(center, cetz.canvas({
  // 导入cetz的draw方言
  import cetz.draw: *; import cetz.vector: add
  let neg(u) = if u == 0 { 1 } else { -1 }
  for (p, c) in (
    ((0, 0, 0), black), ((1, 1, 0), red), ((1, 0, 1), blue), ((0, 1, 1), green),
  ) {
    line(add(p, (0, 0, neg(p.at(2)))), p, stroke: c)
    line(add(p, (0, neg(p.at(1)), 0)), p, stroke: c)
    line(add(p, (neg(p.at(0)), 0, 0)), p, stroke: c)
  }
}))

#import "@preview/curryst:0.5.0": rule, prooftree
#let tree-dict = rule(
  name: $R$,
  $C_1 or C_2 or C_3$,
  rule(
    name: $A$,
    $C_1 or C_2 or L$,
    rule(
      $C_1 or L$,
      $Pi_1$,
    ),
  ),
  rule(
    $C_2 or overline(L)$,
    $Pi_2$,
  ),
)
`tree-dict`的类型：#type(tree-dict) \
`tree-dict`代表的树：#prooftree(tree-dict)

#text(fill: blue)[Typst $arrow.l.r.double.long$ Typ(setting Ru)st $arrow.l.r.double.long$ Typesetting Rust]

