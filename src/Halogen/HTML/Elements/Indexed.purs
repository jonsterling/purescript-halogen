module Halogen.HTML.Elements.Indexed
  ( Properties()
  , Node()
  , Leaf()
  , a
  , abbr
  , acronym
  , address
  , applet
  , area
  , article
  , aside
  , audio
  , b
  , base
  , basefont
  , bdi
  , bdo
  , big
  , blockquote
  , body
  , br
  , button
  , canvas
  , caption
  , center
  , cite
  , code
  , col
  , colgroup
  , command
  , datalist
  , dd
  , del
  , details
  , dfn
  , dialog
  , dir
  , div
  , dl
  , dt
  , em
  , embed
  , fieldset
  , figcaption
  , figure
  , footer
  , form
  , h1
  , h2
  , h3
  , h4
  , h5
  , h6
  , head
  , header
  , hr
  , html
  , i
  , iframe
  , img
  , input
  , ins
  , kbd
  , keygen
  , label
  , legend
  , li
  , link
  , main
  , map
  , mark
  , menu
  , menuitem
  , meta
  , meter
  , nav
  , noframes
  , noscript
  , object
  , ol
  , optgroup
  , option
  , output
  , p
  , param
  , pre
  , progress
  , q
  , rp
  , rt
  , ruby
  , s
  , samp
  , script
  , section
  , select
  , small
  , source
  , span
  , strong
  , style
  , sub
  , summary
  , sup
  , table
  , tbody
  , td
  , textarea
  , tfoot
  , th
  , thead
  , time
  , title
  , tr
  , track
  , tt
  , u
  , ul
  , var
  , video
  , wbr
  ) where

import Prelude hiding (map, div, sub)
import qualified Prelude as Prelude
import Halogen.HTML.Core (HTML(..), Prop(), TagName(), tagName, element)
import Halogen.HTML.Properties.Indexed hiding (title)
import qualified Halogen.HTML.Properties.Indexed as P
import qualified Halogen.HTML.Elements as E

-- | An array of properties/attributes.
type Properties r i = Array (IProp (GlobalAttributes r) i)

-- | An HTML element that admits children.
type Node r p i = Properties r i -> Array (HTML p i) -> HTML p i

-- | An HTML element that does not admit children.
type Leaf r p i = Properties r i -> HTML p i

erases :: forall r i. Array (IProp r i) -> Array (Prop i)
erases = Prelude.map erase

a :: forall p i. Node (download :: I, href :: I, hreflang :: I, mediate :: I, rel :: I, target :: I, type :: I) p i
a = E.a <<< erases

abbr :: forall p i. Node () p i
abbr = E.a <<< erases

acronym :: forall p i. Node () p i
acronym = E.acronym <<< erases

address :: forall p i. Node () p i
address = E.address <<< erases

applet :: forall p i. Node (code :: I, object :: I) p i
applet = E.applet <<< erases

area :: forall p i. Leaf (coords :: I, download :: I, href :: I, hreflang :: I, media :: I, rel :: I, shape :: I, target :: I, type :: I) p i
area = E.area <<< erases

article :: forall p i. Node () p i
article = E.article <<< erases

aside :: forall p i. Node () p i
aside = E.aside <<< erases

audio :: forall p i. Node (autoplay :: I, controls :: I, loop :: I, muted :: I, preload :: I, src :: I) p i
audio = E.audio <<< erases

b :: forall p i. Node () p i
b = E.b <<< erases

base :: forall p i. Leaf (href :: I, target :: I) p i
base = E.base <<< erases

basefont :: forall p i. Node (color :: I, face :: I, size :: I) p i
basefont = E.basefont <<< erases

bdi :: forall p i. Node () p i
bdi = E.bdi <<< erases

bdo :: forall p i. Node (dir :: I) p i
bdo = E.bdo <<< erases

big :: forall p i. Node () p i
big = E.big <<< erases

blockquote :: forall p i. Node (cite :: I) p i
blockquote = E.blockquote <<< erases

body :: forall p i. Node () p i
body = E.body <<< erases

br :: forall p i. Leaf () p i
br = E.br <<< erases

button :: forall p i. Node (autofocus :: I, disabled :: I, form :: I, formaction :: I, formenctyp :: I, formmethod :: I, formnovalidate :: I, formtaget :: I, type :: I, value :: I) p i
button = E.button <<< erases

canvas :: forall p i. Leaf (width :: I, height :: I) p i
canvas = E.canvas <<< erases

caption :: forall p i. Node (align :: I) p i
caption = E.caption <<< erases

center :: forall p i. Node () p i
center = E.center <<< erases

cite :: forall p i. Node () p i
cite = E.cite <<< erases

code :: forall p i. Node () p i
code = E.code <<< erases

col :: forall p i. Leaf () p i
col = E.col <<< erases

colgroup :: forall p i. Node (span :: I) p i
colgroup = E.colgroup <<< erases

command :: forall p i. Leaf () p i
command = E.command <<< erases

datalist :: forall p i. Node () p i
datalist = E.datalist <<< erases

dd :: forall p i. Node () p i
dd = E.dd <<< erases

del :: forall p i. Node (cite :: I, datetime :: I) p i
del = E.del <<< erases

details :: forall p i. Node (open :: I) p i
details = E.details <<< erases

dfn :: forall p i. Node () p i
dfn = E.dfn <<< erases

dialog :: forall p i. Node (open :: I) p i
dialog = E.dialog <<< erases

dir :: forall p i. Node () p i
dir = E.dir <<< erases

div :: forall p i. Node () p i
div = E.div <<< erases

dl :: forall p i. Node () p i
dl = E.dl <<< erases

dt :: forall p i. Node () p i
dt = E.dt <<< erases

em :: forall p i. Node () p i
em = E.em <<< erases

embed :: forall p i. Node (height :: I, src :: I, type :: I, width :: I) p i
embed = E.embed <<< erases

fieldset :: forall p i. Node (disabled :: I, form :: I) p i
fieldset = E.fieldset <<< erases

figcaption :: forall p i. Node () p i
figcaption = E.figcaption <<< erases

figure :: forall p i. Node () p i
figure = E.figure <<< erases

footer :: forall p i. Node () p i
footer = E.footer <<< erases

form :: forall p i. Node (acceptCharset :: I, action :: I, autocomplete :: I, enctype :: I, method :: I, novalidate :: I, target :: I) p i
form = E.form <<< erases

h1 :: forall p i. Node () p i
h1 = E.h1 <<< erases

h2 :: forall p i. Node () p i
h2 = E.h2 <<< erases

h3 :: forall p i. Node () p i
h3 = E.h3 <<< erases

h4 :: forall p i. Node () p i
h4 = E.h4 <<< erases

h5 :: forall p i. Node () p i
h5 = E.h5 <<< erases

h6 :: forall p i. Node () p i
h6 = E.h6 <<< erases

head :: forall p i. Node () p i
head = E.head <<< erases

header :: forall p i. Node () p i
header = E.header <<< erases

hr :: forall p i. Leaf () p i
hr = E.hr <<< erases

html :: forall p i. Node (manifest :: I, xmlns :: I) p i
html = E.html <<< erases

i :: forall p i. Node () p i
i = E.i <<< erases

iframe :: forall p i. Leaf (sandbox :: I, scrolling :: I, src :: I, srcdoc :: I, width :: I, height :: I) p i
iframe = E.iframe <<< erases

img :: forall p i. Leaf (crossorigin :: I, height :: I, ismap :: I, longdesc :: I, src :: I, usemap :: I, width :: I) p i
img = E.img <<< erases

input :: forall p i. Leaf (accept :: I, autocomplete :: I, autofocus :: I, checked :: I, disabled :: I, form :: I, formaction :: I, formenctype :: I, formmethod :: I, formnovalidate :: I, formtarget :: I, height :: I, list :: I, max :: I, min :: I, multiple :: I, pattern :: I, placeholder :: I, readonly :: I, required :: I, size :: I, src :: I, step :: I, type :: I, value :: I, width :: I) p i
input = E.input <<< erases

ins :: forall p i. Node (cite :: I, datetime :: I) p i
ins = E.ins <<< erases

kbd :: forall p i. Node () p i
kbd = E.kbd <<< erases

keygen :: forall p i. Leaf (autofocus :: I, challenge :: I, disabled :: I, form :: I, keytype :: I) p i
keygen = E.keygen <<< erases

label :: forall p i. Node (for :: I, form :: I) p i
label = E.label <<< erases

legend :: forall p i. Node () p i
legend = E.legend <<< erases

li :: forall p i. Node (value :: I) p i
li = E.li <<< erases

link :: forall p i. Leaf (crossorigin :: I, href :: I, hreflang :: I, media :: I, rel :: I, sizes :: I, type :: I) p i
link = E.link <<< erases

main :: forall p i. Node () p i
main = E.main <<< erases

map :: forall p i. Node () p i
map = E.map <<< erases

mark :: forall p i. Node () p i
mark = E.mark <<< erases

menu :: forall p i. Node (label :: I, type :: I) p i
menu = E.menu <<< erases

menuitem :: forall p i. Node (checked :: I, command :: I, default :: I, disabled :: I, icon :: I, label :: I, radiogroup :: I, type :: I) p i
menuitem = E.menuitem <<< erases

meta :: forall p i. Leaf (charset :: I, content :: I, httpEquiv :: I) p i
meta = E.meta <<< erases

meter :: forall p i. Node (form :: I, high :: I, low :: I, max :: I, min :: I, optimum :: I, value :: I) p i
meter = E.meter <<< erases

nav :: forall p i. Node () p i
nav = E.nav <<< erases

noframes :: forall p i. Node () p i
noframes = E.noframes <<< erases

noscript :: forall p i. Node () p i
noscript = E.noscript <<< erases

object :: forall p i. Node (data :: I, form :: I, height :: I, type :: I, usemap :: I, width :: I) p i
object = E.object <<< erases

ol :: forall p i. Node (reversed :: I, start :: I, type :: I) p i
ol = E.ol <<< erases

optgroup :: forall p i. Node (disabled :: I, label :: I) p i
optgroup = E.optgroup <<< erases

option :: forall p i. Node (disabled :: I, label :: I, selected :: I, value :: I) p i
option = E.option <<< erases

output :: forall p i. Node (for :: I, form :: I) p i
output = E.output <<< erases

p :: forall p i. Node () p i
p = E.p <<< erases

param :: forall p i. Leaf (value :: I) p i
param = E.param <<< erases

pre :: forall p i. Node () p i
pre = E.pre <<< erases

progress :: forall p i. Node (max :: I, value :: I) p i
progress = E.progress <<< erases

q :: forall p i. Node (cite :: I) p i
q = E.q <<< erases

rp :: forall p i. Node () p i
rp = E.rp <<< erases

rt :: forall p i. Node () p i
rt = E.rt <<< erases

ruby :: forall p i. Node () p i
ruby = E.ruby <<< erases

s :: forall p i. Node () p i
s = E.s <<< erases

samp :: forall p i. Node () p i
samp = E.samp <<< erases

script :: forall p i. Node (async :: I, charset :: I, defer :: I, src :: I, type :: I) p i
script = E.script <<< erases

section :: forall p i. Node () p i
section = E.section <<< erases

select :: forall p i. Node (autofocus :: I, disabled :: I, form :: I, multiple :: I, required :: I, size :: I) p i
select = E.select <<< erases

small :: forall p i. Node () p i
small = E.small <<< erases

source :: forall p i. Leaf (media :: I, src :: I, type :: I) p i
source = E.source <<< erases

span :: forall p i. Node () p i
span = E.span <<< erases

strong :: forall p i. Node () p i
strong = E.strong <<< erases

style :: forall p i. Node (media :: I, scoped :: I, type :: I) p i
style = E.style <<< erases

sub :: forall p i. Node () p i
sub = E.sub <<< erases

summary :: forall p i. Node () p i
summary = E.summary <<< erases

sup :: forall p i. Node () p i
sup = E.sup <<< erases

table :: forall p i. Node (sortable :: I) p i
table = E.table <<< erases

tbody :: forall p i. Node () p i
tbody = E.tbody <<< erases

td :: forall p i. Node (colspan :: I, headers :: I, rowspan :: I) p i
td = E.td <<< erases

textarea :: forall p i. Leaf (autofocus :: I, cols :: I, disabled :: I, form :: I, maxlength :: I, placeholder :: I, readonly :: I, required :: I, rows :: I, wrap :: I) p i
textarea = E.textarea <<< erases

tfoot :: forall p i. Node () p i
tfoot = E.tfoot <<< erases

th :: forall p i. Node (abbr :: I, colspan :: I, headers :: I, rowspan :: I, scope :: I, sorted :: I) p i
th = E.th <<< erases

thead :: forall p i. Node () p i
thead = E.thead <<< erases

time :: forall p i. Node (datetime :: I) p i
time = E.time <<< erases

title :: forall p i. Node () p i
title = E.title <<< erases

tr :: forall p i. Node () p i
tr = E.tr <<< erases

track :: forall p i. Leaf (default :: I, kind :: I, label :: I, src :: I, srclang :: I) p i
track = E.track <<< erases

tt :: forall p i. Node () p i
tt = E.tt <<< erases

u :: forall p i. Node () p i
u = E.u <<< erases

ul :: forall p i. Node () p i
ul = E.ul <<< erases

var :: forall p i. Node () p i
var = E.var <<< erases

video :: forall p i. Node (autoplay :: I, controls :: I, height :: I, loop :: I, muted :: I, poster :: I, preload :: I, src :: I, width :: I) p i
video = E.video <<< erases

wbr :: forall p i. Leaf () p i
wbr = E.wbr <<< erases

