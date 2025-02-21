#import "/00-templates/helpers.typ": *
#pagebreak()
= Math Equations <sec:math>

Inline math
#table(
  columns: 2,
  align: left+horizon,
  stroke:none,
  [Let $a$ and $b$, and $c$ be the side of a right-angled triangle.], ```typst
  Let $a$ and $b$, and $c$ be the side of a right-angled triangle.```,
  $sum_(k=1)^n k = (n(n+1)) / 2$, ```typst
  $sum_(k=1)^n k = (n(n+1)) / 2$,
  ```
)

Fullline math
$ a^2 + b^2 = c^2 $ <math-eq1>
```typst
  $ a^2 + b^2 = c^2 $ <math-eq1>
```

Math with caption
#figure(
  $ sum_(k=1)^n k = (n(n+1)) / 2 $,
  caption: [Some proof]
)

```typt
#figure(
  $ sum_(k=1)^n k = (n(n+1)) / 2 $,
  caption: [Some proof]
)
```

== Align

#table(
  columns:(50%, 50%),
  stroke: none,
  align: horizon,
  [*Formula*], [*Raw*],
  $
a_1 = b_1 + c_1 = z_1 \
a_2 = b_2 + c_2 - d_2 + e_2 = z_1
$,
```typst
$
a_1 = b_1 + c_1 = z_+ \
a_2 = b_2 + c_2 - d_2 + e_2 = z_1
$
```,
$
a_1 &= b_1 + c_1 &= z_1 \
a_2 & = b_2 + c_2 - d_2 + e_2 &= z_1
$,
```typst
$
a_1 &= b_1 + c_1 &= z_1 \
a_2 & = b_2 + c_2 - d_2 + e_2 &= z_1
$```,
)

== Symbols

This is an incomplete list for all symbols goto #link("https://typst.app/docs/reference/symbols/sym/")[here]

Outside of the `$$` math environment the symboils can be accessed with #sym.

=== Accents

#table(
  columns:(10%, 23.3%, 10%, 23.3%, 10%, 23.3%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $grave(x)$, ```typst $grave(x)$ ```,
  $acute(x)$, ```typst $acute(x)$ ```,
  $hat(x)$, ```typst $hat(x)$ ```,
  $tilde(x)$, ```typst $tilde(x)$ ```,
  $breve(x)$, ```typst $breve(x)$ ```,
  $dot(x)$, ```typst $dot(x)$ ```,
  $dot.double(x)$, ```typst $dot.double(x)$ ```,
  $dot.triple(x)$, ```typst $dot.triple(x)$ ```,
  $dot.quad(x)$, ```typst $dot.quad(x)$ ```,
  $diaer(x)$, ```typst $diaer(x)$ ```,
  $circle(x)$, ```typst $circle(x)$ ```,
  $acute.double(x)$, ```typst $acute.double(x)$ ```,
  $caron(x)$, ```typst $caron(x)$ ```,
  $arrow(x)$, ```typst $arrow(x)$ ```,
  $arrow.l(x)$, ```typst $arrow.l(x)$ ```,
  $cancel(x)$, ```typst $cancel(x)$ ```,
  $macron(x)$, ```typst $macron(x)$ ```,
  $overline(x y z)$, ```typst $overline(xyz)$ ```,
  $underline(x y z)$, ```typst $overline(xyz)$ ```,
  $underbrace(x y z)$, ```typst $underbrace(xyz)$ ```,
  $overbrace(x y z)$, ```typst $overbrace(xyz)$ ```,
  $underbracket(x y z)$, ```typst $underbracket(xyz)$ ```,
  $overbracket(x y z)$, ```typst $overbracket(xyz)$ ```,
  $overbracket(x y z)$, ```typst $overbracket(xyz)$ ```,
)

=== Equals \& Operators

#table(
  columns:(10%, 23.3%, 10%, 23.3%, 10%, 23.3%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $=$, ```typst $=$ ```,
  $eq$, ```typst $eq$ ```,
  $eq.not$, ```typst $eq.not$ ```,
  $!=$, ```typst $!=$ ```,
  $equiv$, ```typst $equiv$ ```,
  $equiv.not$, ```typst $equiv.not$ ```,
  $tilde.eq$, ```typst $tilde.eq$ ```,
  $tilde.eq.not$, ```typst $tilde.eq.not$ ```,
  $eq.small$, ```typst $eq.small$ ```,
  $gt.eq$, ```typst $gt.eq$ ```,
  $gt.eq.not$, ```typst $gt.eq.not$ ```,
  $lt.eq$, ```typst $lt.eq$ ```,
  $lt.eq.not$, ```typst $lt.eq.not$ ```,
  $approx$, ```typst $approx$ ```,
  $approx.eq$, ```typst $approx.eq$ ```,
  $approx.not$, ```typst $approx.not$ ```,
  $colon$, ```typst $colon$ ```,
  $colon.eq$, ```typst $colon.eq$ ```,
  $eq.colon$, ```typst $eq.colon$ ```,
  $colon.double.eq$, ```typst $colon.double.eq$ ```,
  $+$, ```typst $+$ ```,
  $plus$, ```typst $plus$ ```,
  $plus.small$, ```typst $plus.small$ ```,
  $plus.minus$, ```typst $plus.minus$ ```,
  $plus.circle$, ```typst $plus.circle$ ```,
  $-$, ```typst $-$ ```,
  $minus$, ```typst $minus$ ```,
  $minus.plus$, ```typst $minus.plus$ ```,
  $minus.circle$, ```typst $minus.circle$ ```,

)

=== Scripts

#table(
  columns:(10%, 23.3%, 10%, 23.3%, 10%, 23.3%),
  stroke: none,
  align: left+horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $x_1$, ```typst $x_1$ ```, $x_(12)$, ```typst $x_(12)$ ```, $scripts(x)_1$, ```typst $scripts(x)_1$ ```,
  $x_1$, ```typst $x_1$ ```, $x_(12)$, ```typst $x_(12)$ ```, $scripts(x)_1$, ```typst $scripts(x)_1$ ```,
  $x_1^2$, ```typst $x_1^2$ ```, $x_(12)^(34)$, ```typst $x_(12)^(34)$ ```, $scripts(x)_1^2$, ```typst $scripts(x)_1^2$ ```,
  $limits(x)_1^2$, ```typst $x_1^2$ ```, $x_(12)^(34)$, ```typst $x_(12)^(34)$ ```, $scripts(x)_1^2$, ```typst $scripts(x)_1^2$ ```,
)

=== Special Elements

#table(
  columns:(auto, auto, auto, auto),
  stroke: none,
  align: left+horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $ binom(n, k) $, ```typst $ binom(n, k) $ ```,
  $ vec(1, 2, delim: "[") $, ```typst $ vec(1, 2, delim: "[") $ ```,
  $ round(1/2) $, ```typst $ round(1, 2) $ ```,
  $ mat(1,2; 3,4) $, ```typst $ mat(1,2; 3,4) $ ```,
  $ mat(
      1, 2, ..., 10;
      2, 2, ..., 10;
      dots.v, dots.v, dots.down, dots.v;
      10, 10, ..., 10;
    ) $, ```typst $ mat(
      1, 2, ..., 10;
      2, 2, ..., 10;
      dots.v, dots.v, dots.down, dots.v;
      10, 10, ..., 10;
    ) $ ```,
  $ sum a_k  $, ```typst $ sum a_k $ ```,
  $ sum_(k=0)^n a_k $, ```typst $ sum_(k=0)^n a_k $ ```,
  $ scripts(sum)_(k=0)^n a_k $, ```typst $ scripts(sum)_(k=0)^n a_k $ ```,
  $ root(3, x) $, ```typst $ root(3, x) $ ```,

  table.cell(colspan: 2)[ $ f(x, y) := cases(
  1 "if" (x dot y)/2 <= 0,
  2 "if" x "is even",
  3 "if" x in NN,
  4 "else",
) $ ],
table.cell(colspan: 2)[ ```typst
$ f(x, y) := cases(
  1 "if" (x dot y)/2 <= 0,
  2 "if" x "is even",
  3 "if" x in NN,
  4 "else",
) $
``` ] ,
  $ 1/2 $, ```typst $ 1/2 $ ```,
  $ frac(1,2) $, ```typst $ frac(1,2) $ ```,
  $ (x+1)/(x+2) $, ```typst $ (x+1)/(x+2) $ ```,
  $ ((x+1))/((x+2)) $, ```typst $ ((x+1))/((x+2)) $ ```,
  $ product $, ```typst $ product $ ```,
  $ n! = product_(k=1)^n k $, ```typst $ n! = product_(k=1)^n k $ ```,
  $ n! = scripts(product)_(k=1)^n k $, ```typst $ n! = scripts(product)_(k=1)^n k $ ```,
  $ integral $, ```typst $ integral $ ```,
  $ integral_a^b f(x)  $, ```typst $ integral $ ```,

)

=== Alphabeth

#table(
  columns:(50%, 50%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*],
  $alpha beta gamma delta epsilon zeta eta theta iota kappa lambda mu nu xi omicron pi rho sigma tau upsilon phi chi psi omega$, ```typst $alpha beta gamma delta epsilon zeta eta theta iota kappa lambda mu nu xi omicron pi rho sigma tau upsilon phi chi psi omega$ ```,
  $Alpha Beta Gamma Delta Epsilon Zeta Eta Theta Iota Kappa Lambda Mu Nu Xi Omicron Pi Rho Sigma Tau Upsilon Phi Chi Psi Omega$, ```typst $Alpha Beta Gamma Delta Epsilon Zeta Eta Theta Iota Kappa Lambda Mu Nu Xi Omicron Pi Rho Sigma Tau Upsilon Phi Chi Psi Omega$ ```,
  $AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO PP QQ RR SS TT UU VV WW XX YY ZZ$, ```typst $AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO PP QQ RR SS TT UU VV WW XX YY ZZ$ ```,
)

=== Logical
#table(
  columns:(auto, auto, auto, auto, auto, auto),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $and$, ```typst $and$ ```,
  $and.big$, ```typst $and.big$ ```,
  $amp$, ```typst $amp$ ```,
  $or$, ```typst $or$ ```,
  $bar.v$, ```typst $bar.v$ ```,
  $ast.op$, ```typst $ast.op$ ```,
  $ast.basic$, ```typst $ast.basic$ ```,
  $ast.low$, ```typst $ast.low$ ```,
  $plus.circle$, ```typst $plus.circle$ ```,
  $plus.circle.big$, ```typst $plus.circle.big$ ```,
)

=== Operators

#table(
  columns:(10%, 23.3%, 10%, 23.3%, 10%, 23.3%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $sin x$, ```typst $sin x$ ```,
  $cos x$, ```typst $cos x$ ```,
  $tan x$, ```typst $tan x$ ```,
  $arcsin x$, ```typst $arcsin x$ ```,
  $arccos x$, ```typst $arccos x$ ```,
  $arctan x$, ```typst $arctan x$ ```,
  $sinh x$, ```typst $sinh x$ ```,
  $cosh x$, ```typst $cosh x$ ```,
  $tanh x$, ```typst $tanh x$ ```,
  $arg x$, ```typst $arg x$ ```,
  $csc x$, ```typst $csc x$ ```,
  $deg x$, ```typst $deg x$ ```,
  $det x$, ```typst $det x$ ```,
  $dim x$, ```typst $dim x$ ```,
  $exp x$, ```typst $exp x$ ```,
  $mod x$, ```typst $mod x$ ```,
  $inf x$, ```typst $inf x$ ```,
  $log x$, ```typst $log x$ ```,
  $lim x$, ```typst $lim x$ ```,
  $liminf x$, ```typst $liminf x$ ```,
  $limsup x$, ```typst $limsup x$ ```,
  $min x$, ```typst $min x$ ```,
  $max x$, ```typst $max x$ ```,
  $sup x$, ```typst $sup x$ ```,
)

=== Arrows
#table(
  columns:(5%, 28.3%, 5%, 28.3%, 5%, 28.3%),
  stroke: none,
  align: horizon,
  [*Sym*], [*Raw*], [*Sym*], [*Raw*], [*Sym*], [*Raw*],
  table.cell(colspan: 6)[#align(center,[*Arrows right*])],
  $arrow$, ```typst $arrow$ ```,
  $arrow.long$, ```typst $arrow.long$ ```,
  $arrow.bar$, ```typst $arrow.bar$ ```,
  $arrow.bar.long$, ```typst $arrow.bar.long$ ```,
  $arrow.double$, ```typst $arrow.double$ ```,
  $arrow.double.long$, ```typst $arrow.double.long$ ```,
  $arrow.double.bar$, ```typst $arrow.double.bar$ ```,
  $arrow.double.bar.long$, ```typst $arrow.double.bar.long$ ```,
  $arrow.quad$, ```typst $arrow.quad$ ```,
  $arrow.stroked$, ```typst $arrow.stroked$ ```,
  $arrow.filled$, ```typst $arrow.filled$ ```,
  $arrow.dashed$, ```typst $arrow.dashed$ ```,
  $arrow.curve$, ```typst $arrow.curve$ ```,
  $arrow.squiggly$, ```typst $arrow.squiggly$ ```,
  $arrow.loop$, ```typst $arrow.loop$ ```,
  table.cell(colspan: 6)[#align(center,[*Arrows left*])],
  $arrow.l$, ```typst $arrow.l$ ```,
  $arrow.l.long$, ```typst $arrow.l.long$ ```,
  $arrow.l.bar$, ```typst $arrow.l.bar$ ```,
  $arrow.l.bar.long$, ```typst $arrow.l.bar.long$ ```,
  $arrow.l.double$, ```typst $arrow.l.double$ ```,
  $arrow.l.double.long$, ```typst $arrow.l.double.long$ ```,
  $arrow.l.double.bar$, ```typst $arrow.l.double.bar$ ```,
  $arrow.l.double.bar.long$, ```typst $arrow.l.double.bar.long$ ```,
  $arrow.l.quad$, ```typst $arrow.l.quad$ ```,
  $arrow.l.stroked$, ```typst $arrow.l.stroked$ ```,
  $arrow.l.filled$, ```typst $arrow.l.filled$ ```,
  $arrow.l.dashed$, ```typst $arrow.l.dashed$ ```,
  $arrow.l.curve$, ```typst $arrow.l.curve$ ```,
  $arrow.l.squiggly$, ```typst $arrow.l.squiggly$ ```,
  $arrow.l.loop$, ```typst $arrow.l.loop$ ```,
  table.cell(colspan: 6)[#align(center,[*Double Arrows Left Right*])],
  $arrow.l.r$, ```typst $arrow.l.r$ ```,
  $arrow.l.r.not$, ```typst $arrow.l.r.not$ ```,
  $arrow.l.r.long$, ```typst $arrow.l.r.long$ ```,
  $arrow.l.r.double$, ```typst $arrow.l.r.double$ ```,
  $arrow.l.r.double.long$, ```typst $arrow.l.r.double.long$ ```,
  $arrow.l.r.double.not$, ```typst $arrow.l.r.double.not$ ```,
  $arrow.l.r.stroked$, ```typst $arrow.l.r.stroked$ ```,
  $arrow.l.r.filled$, ```typst $arrow.l.r.filled$ ```,
  $arrow.l.r.wave$, ```typst $arrow.l.r.wave$ ```,
  table.cell(colspan: 6)[#align(center,[*Arrows Top*])],
  $arrow.t$, ```typst $arrow.t$ ```,
  $arrow.t.bar$, ```typst $arrow.t.bar$ ```,
  $arrow.t.double$, ```typst $arrow.t.double$ ```,
  $arrow.t.triple$, ```typst $arrow.t.triple$ ```,
  $arrow.t.quad$, ```typst $arrow.t.quad$ ```,
  $arrow.t.stroked$, ```typst $arrow.t.stroked$ ```,
  $arrow.t.filled$, ```typst $arrow.t.filled$ ```,
  $arrow.t.dashed$, ```typst $arrow.t.dashed$ ```,
  $arrow.t.curve$, ```typst $arrow.t.curve$ ```,
  table.cell(colspan: 6)[#align(center,[*Arrows Bottom*])],
  $arrow.b$, ```typst $arrow.b$ ```,
  $arrow.b.bar$, ```typst $arrow.b.bar$ ```,
  $arrow.b.double$, ```typst $arrow.b.double$ ```,
  $arrow.b.triple$, ```typst $arrow.b.triple$ ```,
  $arrow.b.quad$, ```typst $arrow.b.quad$ ```,
  $arrow.b.stroked$, ```typst $arrow.b.stroked$ ```,
  $arrow.b.filled$, ```typst $arrow.b.filled$ ```,
  $arrow.b.dashed$, ```typst $arrow.b.dashed$ ```,
  $arrow.b.curve$, ```typst $arrow.b.curve$ ```,
  table.cell(colspan: 6)[#align(center,[*Double Arrows Top Bottom*])],
  $arrow.t.b$, ```typst $arrow.t.b$ ```,
  $arrow.t.b.double$, ```typst $arrow.t.b.double$ ```,
  $arrow.t.b.stroked$, ```typst $arrow.t.b.stroked$ ```,
  $arrow.t.b.filled$, ```typst $arrow.t.b.filled$ ```,
  [],[],
  [],[],
  table.cell(colspan: 6)[#align(center,[*Arrows Diagonal Top Right*])],
  $arrow.tr$, ```typst $arrow.tr$ ```,
  $arrow.tr.double$, ```typst $arrow.tr.double$ ```,
  $arrow.tr.stroked$, ```typst $arrow.tr.stroked$ ```,
  $arrow.tr.filled$, ```typst $arrow.tr.filled$ ```,
  $arrow.tr.hook$, ```typst $arrow.tr.hook$ ```,
  [],[],
  table.cell(colspan: 6)[#align(center,[*Arrows Diagonal Bottom Right*])],
  $arrow.br$, ```typst $arrow.br$ ```,
  $arrow.br.double$, ```typst $arrow.br.double$ ```,
  $arrow.br.stroked$, ```typst $arrow.br.stroked$ ```,
  $arrow.br.filled$, ```typst $arrow.br.filled$ ```,
  $arrow.br.hook$, ```typst $arrow.br.hook$ ```,
  [],[],
  table.cell(colspan: 6)[#align(center,[*Arrows Diagonal Bottom Left*])],
  $arrow.bl$, ```typst $arrow.bl$ ```,
  $arrow.bl.double$, ```typst $arrow.bl.double$ ```,
  $arrow.bl.stroked$, ```typst $arrow.bl.stroked$ ```,
  $arrow.bl.filled$, ```typst $arrow.bl.filled$ ```,
  $arrow.bl.hook$, ```typst $arrow.bl.hook$ ```,
  [],[],
  table.cell(colspan: 6)[#align(center,[*Arrows Diagonal Top Left*])],
  $arrow.tl$, ```typst $arrow.tl$ ```,
  $arrow.tl.double$, ```typst $arrow.tl.double$ ```,
  $arrow.tl.stroked$, ```typst $arrow.tl.stroked$ ```,
  $arrow.tl.filled$, ```typst $arrow.tl.filled$ ```,
  $arrow.tl.hook$, ```typst $arrow.tl.hook$ ```,
  [],[],
  table.cell(colspan: 6)[#align(center,[*Double Arrows Diagonal*])],
  $arrow.tl.br$, ```typst $arrow.tl.br$ ```,
  $arrow.tr.bl$, ```typst $arrow.tr.bl$ ```,
  [],[],
  table.cell(colspan: 6)[#align(center,[*Other Arrows*])],
  $arrow.cw$, ```typst $arrow.cw$ ```,
  $arrow.cw.half$, ```typst $arrow.cw.half$ ```,
  $arrow.ccw$, ```typst $arrow.ccw$ ```,
  $arrow.ccw.half$, ```typst $arrow.ccw.half$ ```,
)

=== Angles
#table(
  columns:(10%, 23.3%, 10%, 23.3%, 10%, 23.3%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $angle$, ```typst $angle$ ```,
  $angle.rev$, ```typst $angle.rev$ ```,
  $angle.acute$, ```typst $angle.acute$ ```,
  $angle.acute$, ```typst $angle.acute$ ```,
  $angle.arc$, ```typst $angle.arc$ ```,
  $angle.arc.rev$, ```typst $angle.arc.rev$ ```,
  $angle.l$, ```typst $angle.l$ ```,
  $angle.r$, ```typst $angle.r$ ```,
  $angle.l.double$, ```typst $angle.l.double$ ```,
  $angle.r.double$, ```typst $angle.r.double$ ```,
  $angle.right$, ```typst $angle.right$ ```,
  $angle.right.rev$, ```typst $angle.right.rev$ ```,
  $angle.right.arc$, ```typst $angle.right.arc$ ```,
  $angle.right.dot$, ```typst $angle.right.dot$ ```,
  $angle.right.sq$, ```typst $angle.right.sq$ ```,
  $angle.spheric$, ```typst $angle.spheric$ ```,
  $angle.spheric.rev$, ```typst $angle.spheric.rev$ ```,
  $angle.spheric.top$, ```typst $angle.spheric.top$ ```,
)

=== Cool Symbols
#table(
  columns:(10%, 23.3%, 10%, 23.3%, 10%, 23.3%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $at$, ```typst $at$ ```,
  $co$, ```typst $co$ ```,
  $copyright$, ```typst $copyright$ ```,
  $copyright.sound$, ```typst $copyright.sound$ ```,
  $degree C$, ```typst $degree C$ ```,
  $euro$, ```typst $euro$ ```,
  $dollar$, ```typst $dollar$ ```,
  $pound$, ```typst $pound$ ```,
  $won$, ```typst $won$ ```,
  $yen$, ```typst $yen$ ```,
  $bitcoin$, ```typst $bitcoin$ ```,
  $degree F$, ```typst $degree F$ ```,
  $excl$, ```typst $excl$ ```,
  $excl.inv$, ```typst $excl.inv$ ```,
  $excl.double$, ```typst $excl.double$ ```,
  $excl.quest$, ```typst $excl.quest$ ```,
  $arrow.zigzag$, ```typst $arrow.zigzag$ ```,
  $ast.circle$, ```typst $ast.circle$ ```,
  $ast.triple$, ```typst $ast.triple$ ```,
  $chi$, ```typst $chi$ ```,
  $floral$, ```typst $floral$ ```,
  $maltese$, ```typst $maltese$ ```,
  $pilcrow$, ```typst $pilcrow$ ```,
  $planck$, ```typst $planck$ ```,
  $suit.club$, ```typst $suit.club$ ```,
  $suit.diamond$, ```typst $suit.diamond$ ```,
  $suit.heart$, ```typst $suit.heart$ ```,
  $suit.spade$, ```typst $suit.spade$ ```,
  $triangle.stroked.nested$, ```typst $triangle.stroked.nested2$ ```,
)

=== Style

#table(
  columns:(25%, 25%, 25%, 25%),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*], [*Symbol*], [*Raw*],
  $sans(A B C 1 2 3)$, ```typst $sans(A B C 1 2 3)$ ```,
  $frak(A B C 1 2 3)$, ```typst $frak(A B C 1 2 3)$ ```,
  $mono(A B C 1 2 3)$, ```typst $mono(A B C 1 2 3)$ ```,
  $bb(A B C 1 2 3)$, ```typst $bb(A B C 1 2 3)$ ```,
  $cal(A B C 1 2 3)$, ```typst $cal(A B C 1 2 3)$ ```,
)
#table(
  columns:(5cm, 10cm),
  stroke: none,
  align: horizon,
  [*Symbol*], [*Raw*],
  [#show math.equation: set text(font: "Fira Math")
$sum_(i in NN) 1 + i$], [```typst
#show math.equation: set text(font: "Fira Math")
$sum_(i in NN) 1 + i$,
```],
)
