#set text(15pt)

#set document(date: auto)

#place(
  top + center,
  float: true
)[
  #title("Math symbols")
]

// #set text(font: (
  // (name: "Times New Roman", covers: "latin-in-cjk"),
  // "Noto Sans SC"
// ), size: 15pt)

#set heading(numbering: "1.")

#grid(
  columns: 4,
  gutter: 2.5em,
  align()[
    $hat(a)$#h(1em)hat(a) \
    $dot(a)$#h(1em)dot(a) \
    $acute(a)$#h(1em)acute(a) \
  ],
  align()[
    $caron(a)$#h(1em)caron(a) \
    $dot.double(a)$#h(1em)dot.double(a) \
    $breve(a)$#h(1em)breve(a) \
  ],
  align()[
    $tilde(a)$#h(1em)tilde(a) \
    $macron(a)$#h(1em)macron(a) \
    $grave(a)$#h(1em)grave(a) \ 
  ],
  align()[
    $arrow(a)$#h(1em)arrow(a)
  ]
)
#parbreak()
#grid(
  columns: 4, 
  gutter: 3em,
  align()[
    $alpha$#h(1em)alpha \
    $beta$#h(1em)beta \
    $gamma$#h(1em)gamma \
    $delta$#h(1em)delta \
    $epsilon.alt$#h(1em)epsilon.alt \
    $epsilon$#h(1em)epsilon \
    $zeta$#h(1em)zeta \
    $eta$#h(1em)eta \
    $Gamma$#h(1em)Gamma \
    $Delta$#h(1em)Delta \
    $Theta$#h(1em)Theta \
  ], 
  align()[
    $theta$#h(1em)theta \
    $theta.alt$#h(1em)theta.alt \
    $iota$#h(1em)iota \
    $kappa$#h(1em)kappa \
    $lambda$#h(1em)lambda \
    $mu$#h(1em)mu \
    $nu$#h(1em)nu \
    $xi$#h(1em)xi \
    $Lambda$#h(1em)Lambda \
    $Xi$#h(1em)Xi \
    $Pi$#h(1em)Pi \
  ], 
  align()[
    $pi$#h(1em)pi \
    $o$#h(1em)0 \
    $pi.alt$#h(1em)pi.alt \
    $rho$#h(1em)rho \
    $rho.alt$#h(1em)rho.alt \
    $sigma$#h(1em)sigma \
    $sigma.alt$#h(1em)sigma.alt \
    $tau$#h(1em)tau \
    $Sigma$#h(1em)Sigma \
    $Upsilon$#h(1em)Upsilon \
    $Phi$#h(1em)Phi \
  ], 
  align()[
    $upsilon$#h(1em)upsilon \
    $phi$#h(1em)phi \
    $chi$#h(1em)chi \
    $psi$#h(1em)psi \
    $omega$#h(1em)omega \
    #linebreak()
    #linebreak()
    $Psi$#h(1em)Psi \
    $Omega$#h(1em)Omega \
  ]
)
#parbreak()
#grid(
  columns: 3, 
  gutter: 2em, 
  align()[
    $<$ or $lt$#h(1em)< or lt \
    $>$ or $gt$#h(1em)> or gt \
    $=$ or $eq$#h(1em)= or eq \
    $<<$ or $lt.double$#h(1em)<< or lt.double \
    $>>$ or $gt.double$#h(1em)>> or gt.double \
    $prec$#h(1em)prec \
    $prec.eq$#h(1em)prec.eq \
    $subset$#h(1em)subset \
    $subset.eq$#h(1em)subset.eq \
    $subset.sq$#h(1em)subset.sq \
    $subset.eq.sq$#h(1em)subset.eq.sq \
    $subset.neq$#h(1em)subset.neq \
  ], 
  align()[
    $succ$#h(1em)succ \
    $succ.eq$#h(1em)succ.eq \
    $supset$#h(1em)supset \
    $supset.eq$#h(1em)supset.eq \
    $supset.sq$#h(1em)supset.sq \
    $supset.eq.sq$#h(1em)supset.eq.sq \
    $in.rev$#h(1em)in.rev \
    $tack.l$#h(1em)tack.l \
    $parallel$#h(1em)parallel \
    $in.not$#h(1em)in.not \
    $in$#h(1em)in \
    $tack.r$#h(1em)tack.r \
  ],
  align()[
    $equiv$#h(1em)equiv \
    $tilde$#h(1em)tilde \
    $tilde.eq$#h(1em)tilde.eq \
    $approx$#h(1em)approx \
    $tilde.equiv$#h(1em)tilde.equiv \
    $join$#h(1em)join \
    $prop$#h(1em)prop \
    $tack.r.double$#h(1em)tack.r.double \
    $tack.l.double$#h(1em)tack.l.double \
    $tack.t$#h(1em)tack.t \
    $!=$ or $eq.not$#h(1em)!= or eq.not \
    $divides$#h(1em)divides \
  ]
)
#parbreak()
#grid(
  columns: 3,
  gutter: 2em,
  align()[
    $+$ or $plus$#h(1em)+ or plus \
    $plus.minus$#h(1em)plus.minus \
    $dot$#h(1em)dot \
    $times$#h(1em)times \
    $union$#h(1em)union \
    $union.sq$#h(1em)union.sq \
    $or$#h(1em)or \
    $xor$#h(1em)xor \
    $union.plus$#h(1em)union.plus \
    $product.co$#h(1em)product.co \
    $dagger$#h(1em)dagger \
    $dagger.double$#h(1em)dagger.double \
  ],
  align()[
    $-$ or $minus$#h(1em)- or minus \
    $minus.plus$#h(1em)minus.plus \
    $div$#h(1em)div \
    $without$#h(1em)without \
    $inter$#h(1em)inter \
    $inter.sq$#h(1em)inter.sq \
    $and$#h(1em)and \
    $minus.o$#h(1em)minus.o \
    $plus.o$#h(1em)plus.o \
    $times.o$#h(1em)times.o \
    $triangle.stroked.t$#h(1em)triangle.stroked.t \
    $lt.tri$#h(1em)lt.tri \
  ], 
  align()[
    $gt.tri$#h(1em)gt.tri \
    $gt.tri.eq$#h(1em)gt.tri.eq \
    $star$#h(1em)star \
    $*$#h(1em)\* \
    $circle.stroked.tiny$#h(1em)circle.stroked.tiny \
    $bullet$#h(1em)bullet \
    $dot.o$#h(1em)dot.o \
    $circle.big$#h(1em)circle.big \
    $triangle.stroked.b$#h(1em)triangle.stroked.b \
    $lt.tri.eq$#h(1em)lt.tri.eq \
    $wreath$#h(1em)wreath \
  ]
)
#parbreak()
#grid(
  columns: 3,
  gutter: 4em, 
  align()[
    $sum$#h(1em)sum \
    $product$#h(1em)product \
    $product.co$#h(1em)product.co \
    $integral$#h(1em)integral \
    $plus.o.big$#h(1em)plus.o.big \
  ],
  align()[
    $union.big$#h(1em)union.big \
    $inter.big$#h(1em)inter.big \
    $union.sq.big$#h(1em)union.sq.big \
    $integral.cont$#h(1em)integral.cont \
    $times.o.big$#h(1em)times.o.big \
  ], 
  align()[
    $or.big$#h(1em)or.big \
    $and.big$#h(1em)and.big \
    $union.plus.big$#h(1em)union.plus.big \
    $dot.o.big$#h(1em)dot.o.big \
  ]
) 
#parbreak()
#grid(
  columns: (auto, auto, auto),
  gutter: 1em,
  align()[
    $arrow.l$#h(1em)arrow.l \
    $arrow.r$#h(1em)arrow.r \
    $arrow.l.r$#h(1em)arrow.l.r \
    $arrow.l.double$#h(1em)arrow.l.double \
    $arrow.r.double$#h(1em)arrow.r.double \
    $arrow.l.r.double$#h(1em)arrow.l.r.double \
    $arrow.r.bar$#h(1em)arrow.r.bar \
    $arrow.l.bar$#h(1em)arrow.l.bar \
    $arrow.l.hook$#h(1em)arrow.l.hook \
    $harpoon.lt$#h(1em)harpoon.lt \
    $harpoon.lb$#h(1em)harpoon.lb \
    $harpoons.ltrb$#h(1em)harpoons.ltrb \
    $harpoon.lt.rb$#h(1em)harpoon.lt.rb \
  ],
  align()[
    $arrow.b$#h(1em)arrow.b \
    $arrow.t.double$#h(1em)arrows.t.double \
    $arrow.t.b.double$#h(1em)arrow.t.b.double \
    $arrow.br$#h(1em)arrow.br \
    $arrow.tl$#h(1em)arrow.tl \
    $arrow.l.long$#h(1em)arrow.l.long \
    $arrow.l.double.long$#h(1em)arrow.l.double.long \
    $arrow.r.long$#h(1em)arrow.r.long \
    $arrow.r.hook$#h(1em)arrow.r.hook \
    $arrow.r.double.long$#h(1em)arrow.r.double.long \
    $arrow.l.r.long$#h(1em)arrow.l.r.long \
    $arrow.l.r.double.long$#h(1em)arrow.l.r.double.long \
    $arrow.r.long.bar$#h(1em)arrow.r.long.bar \
  ],
  align()[
    $harpoon.lt$#h(1em)harpoon.lt \
    $harpoon.rb$#h(1em)harpoon.rb \
    $arrow.t$#h(1em)arrow.t \
    $arrow.t.b$#h(1em)arrow.t.b \
    $arrow.b.double$#h(1em)arrow.b.double \
    $arrow.tr$#h(1em)arrow.tr \
    $arrow.bl$#h(1em)arrow.bl \
    $arrow.r.squiggly$#h(1em)arrow.r.squiggly \
  ]
)
#parbreak()
#grid(
  columns: 3,
  gutter: 2em,
  align()[
    $dots$#h(1em)dots \
    $dots.down$#h(1em)dots.down \
    $dotless.j$#h(1em)dotless.j \
    $Im$#h(1em)Im \
    $exists$#h(1em)exists \
    $prime$#h(1em)prime \
    $nabla$#h(1em)nabla \
    $diamond.stroked$#h(1em)diamond.stroked \
    $angle$#h(1em)angle \
    $not$#h(1em)not \ 
  ],
  align()[
    $dots.c$#h(1em)dots.c \
    $planck$#h(1em)planck.reduce\
    $ell$#h(1em)ell \
    $aleph$#h(1em)aleph \
    $Omega.inv$#h(1em)Omega.inv \
    $emptyset$#h(1em)emptyset \
    $triangle.stroked.t$#h(1em)triangle.stroked.t \
    $bot$#h(1em)bot \
    $top$#h(1em)top \
    $infinity$#h(1em)infinity \
  ],
  align()[
    $dots.v$#h(1em)dots.v \
    $dotless.i$#h(1em)dotless.i \
    $Re$#h(1em)Re \
    $forall$#h(1em)forall \
    $partial$#h(1em)partial \
    $square.stroked$#h(1em)square.stroked \
    $suit.club$#h(1em)suit.club \
    $suit.spade$#h(1em)suit.spade \
    $suit.heart$#h(1em)suit.heart \
    $suit.diamond$#h(1em)suit.diamond \
  ]
)