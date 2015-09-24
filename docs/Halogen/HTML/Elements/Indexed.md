## Module Halogen.HTML.Elements.Indexed

#### `Properties`

``` purescript
type Properties r i = Array (IProp (GlobalAttributes r) i)
```

An array of properties/attributes.

#### `Node`

``` purescript
type Node r p i = Properties r i -> Array (HTML p i) -> HTML p i
```

An HTML element that admits children.

#### `Leaf`

``` purescript
type Leaf r p i = Properties r i -> HTML p i
```

An HTML element that does not admit children.

#### `a`

``` purescript
a :: forall p i. Node (download :: I, href :: I, hreflang :: I, mediate :: I, rel :: I, target :: I, type :: I) p i
```

#### `abbr`

``` purescript
abbr :: forall p i. Node () p i
```

#### `acronym`

``` purescript
acronym :: forall p i. Node () p i
```

#### `address`

``` purescript
address :: forall p i. Node () p i
```

#### `applet`

``` purescript
applet :: forall p i. Node (code :: I, object :: I) p i
```

#### `area`

``` purescript
area :: forall p i. Leaf (coords :: I, download :: I, href :: I, hreflang :: I, media :: I, rel :: I, shape :: I, target :: I, type :: I) p i
```

#### `article`

``` purescript
article :: forall p i. Node () p i
```

#### `aside`

``` purescript
aside :: forall p i. Node () p i
```

#### `audio`

``` purescript
audio :: forall p i. Node (autoplay :: I, controls :: I, loop :: I, muted :: I, preload :: I, src :: I) p i
```

#### `b`

``` purescript
b :: forall p i. Node () p i
```

#### `base`

``` purescript
base :: forall p i. Leaf (href :: I, target :: I) p i
```

#### `basefont`

``` purescript
basefont :: forall p i. Node (color :: I, face :: I, size :: I) p i
```

#### `bdi`

``` purescript
bdi :: forall p i. Node () p i
```

#### `bdo`

``` purescript
bdo :: forall p i. Node (dir :: I) p i
```

#### `big`

``` purescript
big :: forall p i. Node () p i
```

#### `blockquote`

``` purescript
blockquote :: forall p i. Node (cite :: I) p i
```

#### `body`

``` purescript
body :: forall p i. Node () p i
```

#### `br`

``` purescript
br :: forall p i. Leaf () p i
```

#### `button`

``` purescript
button :: forall p i. Node (autofocus :: I, disabled :: I, form :: I, formaction :: I, formenctyp :: I, formmethod :: I, formnovalidate :: I, formtaget :: I, type :: I, value :: I) p i
```

#### `canvas`

``` purescript
canvas :: forall p i. Leaf (width :: I, height :: I) p i
```

#### `caption`

``` purescript
caption :: forall p i. Node (align :: I) p i
```

#### `center`

``` purescript
center :: forall p i. Node () p i
```

#### `cite`

``` purescript
cite :: forall p i. Node () p i
```

#### `code`

``` purescript
code :: forall p i. Node () p i
```

#### `col`

``` purescript
col :: forall p i. Leaf () p i
```

#### `colgroup`

``` purescript
colgroup :: forall p i. Node (span :: I) p i
```

#### `command`

``` purescript
command :: forall p i. Leaf () p i
```

#### `datalist`

``` purescript
datalist :: forall p i. Node () p i
```

#### `dd`

``` purescript
dd :: forall p i. Node () p i
```

#### `del`

``` purescript
del :: forall p i. Node (cite :: I, datetime :: I) p i
```

#### `details`

``` purescript
details :: forall p i. Node (open :: I) p i
```

#### `dfn`

``` purescript
dfn :: forall p i. Node () p i
```

#### `dialog`

``` purescript
dialog :: forall p i. Node (open :: I) p i
```

#### `dir`

``` purescript
dir :: forall p i. Node () p i
```

#### `div`

``` purescript
div :: forall p i. Node () p i
```

#### `dl`

``` purescript
dl :: forall p i. Node () p i
```

#### `dt`

``` purescript
dt :: forall p i. Node () p i
```

#### `em`

``` purescript
em :: forall p i. Node () p i
```

#### `embed`

``` purescript
embed :: forall p i. Node (height :: I, src :: I, type :: I, width :: I) p i
```

#### `fieldset`

``` purescript
fieldset :: forall p i. Node (disabled :: I, form :: I) p i
```

#### `figcaption`

``` purescript
figcaption :: forall p i. Node () p i
```

#### `figure`

``` purescript
figure :: forall p i. Node () p i
```

#### `footer`

``` purescript
footer :: forall p i. Node () p i
```

#### `form`

``` purescript
form :: forall p i. Node (acceptCharset :: I, action :: I, autocomplete :: I, enctype :: I, method :: I, novalidate :: I, target :: I) p i
```

#### `h1`

``` purescript
h1 :: forall p i. Node () p i
```

#### `h2`

``` purescript
h2 :: forall p i. Node () p i
```

#### `h3`

``` purescript
h3 :: forall p i. Node () p i
```

#### `h4`

``` purescript
h4 :: forall p i. Node () p i
```

#### `h5`

``` purescript
h5 :: forall p i. Node () p i
```

#### `h6`

``` purescript
h6 :: forall p i. Node () p i
```

#### `head`

``` purescript
head :: forall p i. Node () p i
```

#### `header`

``` purescript
header :: forall p i. Node () p i
```

#### `hr`

``` purescript
hr :: forall p i. Leaf () p i
```

#### `html`

``` purescript
html :: forall p i. Node (manifest :: I, xmlns :: I) p i
```

#### `i`

``` purescript
i :: forall p i. Node () p i
```

#### `iframe`

``` purescript
iframe :: forall p i. Leaf (sandbox :: I, scrolling :: I, src :: I, srcdoc :: I, width :: I, height :: I) p i
```

#### `img`

``` purescript
img :: forall p i. Leaf (crossorigin :: I, height :: I, ismap :: I, longdesc :: I, src :: I, usemap :: I, width :: I) p i
```

#### `input`

``` purescript
input :: forall p i. Leaf (accept :: I, autocomplete :: I, autofocus :: I, checked :: I, disabled :: I, form :: I, formaction :: I, formenctype :: I, formmethod :: I, formnovalidate :: I, formtarget :: I, height :: I, list :: I, max :: I, min :: I, multiple :: I, pattern :: I, placeholder :: I, readonly :: I, required :: I, size :: I, src :: I, step :: I, type :: I, value :: I, width :: I) p i
```

#### `ins`

``` purescript
ins :: forall p i. Node (cite :: I, datetime :: I) p i
```

#### `kbd`

``` purescript
kbd :: forall p i. Node () p i
```

#### `keygen`

``` purescript
keygen :: forall p i. Leaf (autofocus :: I, challenge :: I, disabled :: I, form :: I, keytype :: I) p i
```

#### `label`

``` purescript
label :: forall p i. Node (for :: I, form :: I) p i
```

#### `legend`

``` purescript
legend :: forall p i. Node () p i
```

#### `li`

``` purescript
li :: forall p i. Node (value :: I) p i
```

#### `link`

``` purescript
link :: forall p i. Leaf (crossorigin :: I, href :: I, hreflang :: I, media :: I, rel :: I, sizes :: I, type :: I) p i
```

#### `main`

``` purescript
main :: forall p i. Node () p i
```

#### `map`

``` purescript
map :: forall p i. Node () p i
```

#### `mark`

``` purescript
mark :: forall p i. Node () p i
```

#### `menu`

``` purescript
menu :: forall p i. Node (label :: I, type :: I) p i
```

#### `menuitem`

``` purescript
menuitem :: forall p i. Node (checked :: I, command :: I, default :: I, disabled :: I, icon :: I, label :: I, radiogroup :: I, type :: I) p i
```

#### `meta`

``` purescript
meta :: forall p i. Leaf (charset :: I, content :: I, httpEquiv :: I) p i
```

#### `meter`

``` purescript
meter :: forall p i. Node (form :: I, high :: I, low :: I, max :: I, min :: I, optimum :: I, value :: I) p i
```

#### `nav`

``` purescript
nav :: forall p i. Node () p i
```

#### `noframes`

``` purescript
noframes :: forall p i. Node () p i
```

#### `noscript`

``` purescript
noscript :: forall p i. Node () p i
```

#### `object`

``` purescript
object :: forall p i. Node (data :: I, form :: I, height :: I, type :: I, usemap :: I, width :: I) p i
```

#### `ol`

``` purescript
ol :: forall p i. Node (reversed :: I, start :: I, type :: I) p i
```

#### `optgroup`

``` purescript
optgroup :: forall p i. Node (disabled :: I, label :: I) p i
```

#### `option`

``` purescript
option :: forall p i. Node (disabled :: I, label :: I, selected :: I, value :: I) p i
```

#### `output`

``` purescript
output :: forall p i. Node (for :: I, form :: I) p i
```

#### `p`

``` purescript
p :: forall p i. Node () p i
```

#### `param`

``` purescript
param :: forall p i. Leaf (value :: I) p i
```

#### `pre`

``` purescript
pre :: forall p i. Node () p i
```

#### `progress`

``` purescript
progress :: forall p i. Node (max :: I, value :: I) p i
```

#### `q`

``` purescript
q :: forall p i. Node (cite :: I) p i
```

#### `rp`

``` purescript
rp :: forall p i. Node () p i
```

#### `rt`

``` purescript
rt :: forall p i. Node () p i
```

#### `ruby`

``` purescript
ruby :: forall p i. Node () p i
```

#### `s`

``` purescript
s :: forall p i. Node () p i
```

#### `samp`

``` purescript
samp :: forall p i. Node () p i
```

#### `script`

``` purescript
script :: forall p i. Node (async :: I, charset :: I, defer :: I, src :: I, type :: I) p i
```

#### `section`

``` purescript
section :: forall p i. Node () p i
```

#### `select`

``` purescript
select :: forall p i. Node (autofocus :: I, disabled :: I, form :: I, multiple :: I, required :: I, size :: I) p i
```

#### `small`

``` purescript
small :: forall p i. Node () p i
```

#### `source`

``` purescript
source :: forall p i. Leaf (media :: I, src :: I, type :: I) p i
```

#### `span`

``` purescript
span :: forall p i. Node () p i
```

#### `strong`

``` purescript
strong :: forall p i. Node () p i
```

#### `style`

``` purescript
style :: forall p i. Node (media :: I, scoped :: I, type :: I) p i
```

#### `sub`

``` purescript
sub :: forall p i. Node () p i
```

#### `summary`

``` purescript
summary :: forall p i. Node () p i
```

#### `sup`

``` purescript
sup :: forall p i. Node () p i
```

#### `table`

``` purescript
table :: forall p i. Node (sortable :: I) p i
```

#### `tbody`

``` purescript
tbody :: forall p i. Node () p i
```

#### `td`

``` purescript
td :: forall p i. Node (colspan :: I, headers :: I, rowspan :: I) p i
```

#### `textarea`

``` purescript
textarea :: forall p i. Leaf (autofocus :: I, cols :: I, disabled :: I, form :: I, maxlength :: I, placeholder :: I, readonly :: I, required :: I, rows :: I, wrap :: I) p i
```

#### `tfoot`

``` purescript
tfoot :: forall p i. Node () p i
```

#### `th`

``` purescript
th :: forall p i. Node (abbr :: I, colspan :: I, headers :: I, rowspan :: I, scope :: I, sorted :: I) p i
```

#### `thead`

``` purescript
thead :: forall p i. Node () p i
```

#### `time`

``` purescript
time :: forall p i. Node (datetime :: I) p i
```

#### `title`

``` purescript
title :: forall p i. Node () p i
```

#### `tr`

``` purescript
tr :: forall p i. Node () p i
```

#### `track`

``` purescript
track :: forall p i. Leaf (default :: I, kind :: I, label :: I, src :: I, srclang :: I) p i
```

#### `tt`

``` purescript
tt :: forall p i. Node () p i
```

#### `u`

``` purescript
u :: forall p i. Node () p i
```

#### `ul`

``` purescript
ul :: forall p i. Node () p i
```

#### `var`

``` purescript
var :: forall p i. Node () p i
```

#### `video`

``` purescript
video :: forall p i. Node (autoplay :: I, controls :: I, height :: I, loop :: I, muted :: I, poster :: I, preload :: I, src :: I, width :: I) p i
```

#### `wbr`

``` purescript
wbr :: forall p i. Leaf () p i
```


