-- | A closed signature of type-indexed (refined) HTML properties; these can be
-- | used to ensure correctness by construction, and then erased into the standard
-- | unrefined versions.
module Halogen.HTML.Properties.Indexed
  ( IProp()
  , erase

  , I()

  , key
  , alt
  , charset
  , class_, classes
  , colSpan
  , rowSpan
  , for
  , height
  , width
  , href
  , id_
  , name
  , rel
  , src
  , target
  , title
  , type_
  , value
  , disabled
  , enabled
  , required
  , readonly
  , spellcheck
  , checked
  , selected
  , slot

  , GlobalAttributes()
  ) where

import Prelude
import qualified Halogen.HTML.Properties as P
import Halogen.HTML.Core (Prop(..), ClassName(), prop, propName, attrName, runClassName)

-- | The phantom row `ρ` can be thought of as a context which is synthesized in the
-- | course of constructing a refined HTML expression.
newtype IProp (ρ :: # *) i = IProp (Prop i)

-- | The refined property can be erased into a normal one.
erase :: forall ρ i. IProp ρ i -> Prop i
erase (IProp p) = p

-- | A dummy type to use in the phantom row.
data I

key :: forall ρ i. String -> IProp (key :: I | ρ) i
key = IProp <<< P.key

alt :: forall ρ i. String -> IProp (key :: I | ρ) i
alt = IProp <<< P.alt

charset :: forall ρ i. String -> IProp (charset :: I | ρ) i
charset = IProp <<< P.charset

class_ :: forall ρ i. ClassName -> IProp (class :: I | ρ) i
class_ = IProp <<< P.class_

classes :: forall ρ i. Array ClassName -> IProp (class :: I | ρ) i
classes = IProp <<< P.classes

colSpan :: forall ρ i. Int -> IProp (colSpan :: I | ρ) i
colSpan = IProp <<< P.colSpan

rowSpan :: forall ρ i. Int -> IProp (rowSpan :: I | ρ) i
rowSpan = IProp <<< P.rowSpan

for :: forall ρ i. String -> IProp (for :: I | ρ) i
for = IProp <<< P.for

height :: forall ρ i. Number -> IProp (height :: I | ρ) i
height = IProp <<< P.height

width :: forall ρ i. Number -> IProp (width :: I | ρ) i
width = IProp <<< P.width

href :: forall ρ i. String -> IProp (href :: I | ρ) i
href = IProp <<< P.href

id_ :: forall ρ i. String -> IProp (id :: I | ρ) i
id_ = IProp <<< P.id_

name :: forall ρ i. String -> IProp (name :: I | ρ) i
name = IProp <<< P.name

rel :: forall ρ i. String -> IProp (rel :: I | ρ) i
rel = IProp <<< P.rel

src :: forall ρ i. String -> IProp (src :: I | ρ) i
src = IProp <<< P.src

target :: forall ρ i. String -> IProp (target :: I | ρ) i
target = IProp <<< P.target

title :: forall ρ i. String -> IProp (title :: I | ρ) i
title = IProp <<< P.title

type_ :: forall ρ i. String -> IProp (type :: I | ρ) i
type_ = IProp <<< P.type_

value :: forall ρ i. String -> IProp (value :: I | ρ) i
value = IProp <<< P.value

disabled :: forall ρ i. Boolean -> IProp (disabled :: I | ρ) i
disabled = IProp <<< P.disabled

required :: forall ρ i. Boolean -> IProp (required :: I | ρ) i
required = IProp <<< P.required

readonly :: forall ρ i. Boolean -> IProp (readonly :: I | ρ) i
readonly = IProp <<< P.readonly

spellcheck :: forall ρ i. Boolean -> IProp (spellcheck :: I | ρ) i
spellcheck = IProp <<< P.spellcheck

enabled :: forall ρ i. Boolean -> IProp (disabled :: I | ρ) i
enabled = disabled <<< not

checked :: forall ρ i. Boolean -> IProp (checked :: I | ρ) i
checked = IProp <<< P.checked

selected :: forall ρ i. Boolean -> IProp (selected :: I | ρ) i
selected = IProp <<< P.selected

slot :: forall ρ i. String -> IProp (slot :: I | ρ) i
slot = IProp <<< P.slot

type GlobalAttributes ρ =
  ( id :: I
  , name :: I
  , title :: I
  , class :: I
  , spellcheck :: I
  | ρ
  )

