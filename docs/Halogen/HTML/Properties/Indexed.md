## Module Halogen.HTML.Properties.Indexed

A closed signature of type-indexed (refined) HTML properties; these can be
used to ensure correctness by construction, and then erased into the standard
unrefined versions.

#### `IProp`

``` purescript
newtype IProp (ρ :: # *) i
```

The phantom row `ρ` can be thought of as a context which is synthesized in the
course of constructing a refined HTML expression.

#### `erase`

``` purescript
erase :: forall ρ i. IProp ρ i -> Prop i
```

The refined property can be erased into a normal one.

#### `I`

``` purescript
data I
```

A dummy type to use in the phantom row.

#### `key`

``` purescript
key :: forall ρ i. String -> IProp (key :: I | ρ) i
```

#### `alt`

``` purescript
alt :: forall ρ i. String -> IProp (key :: I | ρ) i
```

#### `charset`

``` purescript
charset :: forall ρ i. String -> IProp (charset :: I | ρ) i
```

#### `class_`

``` purescript
class_ :: forall ρ i. ClassName -> IProp (class :: I | ρ) i
```

#### `classes`

``` purescript
classes :: forall ρ i. Array ClassName -> IProp (class :: I | ρ) i
```

#### `colSpan`

``` purescript
colSpan :: forall ρ i. Int -> IProp (colSpan :: I | ρ) i
```

#### `rowSpan`

``` purescript
rowSpan :: forall ρ i. Int -> IProp (rowSpan :: I | ρ) i
```

#### `for`

``` purescript
for :: forall ρ i. String -> IProp (for :: I | ρ) i
```

#### `height`

``` purescript
height :: forall ρ i. Number -> IProp (height :: I | ρ) i
```

#### `width`

``` purescript
width :: forall ρ i. Number -> IProp (width :: I | ρ) i
```

#### `href`

``` purescript
href :: forall ρ i. String -> IProp (href :: I | ρ) i
```

#### `id_`

``` purescript
id_ :: forall ρ i. String -> IProp (id :: I | ρ) i
```

#### `name`

``` purescript
name :: forall ρ i. String -> IProp (name :: I | ρ) i
```

#### `rel`

``` purescript
rel :: forall ρ i. String -> IProp (rel :: I | ρ) i
```

#### `src`

``` purescript
src :: forall ρ i. String -> IProp (src :: I | ρ) i
```

#### `target`

``` purescript
target :: forall ρ i. String -> IProp (target :: I | ρ) i
```

#### `title`

``` purescript
title :: forall ρ i. String -> IProp (title :: I | ρ) i
```

#### `type_`

``` purescript
type_ :: forall ρ i. String -> IProp (type :: I | ρ) i
```

#### `value`

``` purescript
value :: forall ρ i. String -> IProp (value :: I | ρ) i
```

#### `disabled`

``` purescript
disabled :: forall ρ i. Boolean -> IProp (disabled :: I | ρ) i
```

#### `required`

``` purescript
required :: forall ρ i. Boolean -> IProp (required :: I | ρ) i
```

#### `readonly`

``` purescript
readonly :: forall ρ i. Boolean -> IProp (readonly :: I | ρ) i
```

#### `spellcheck`

``` purescript
spellcheck :: forall ρ i. Boolean -> IProp (spellcheck :: I | ρ) i
```

#### `enabled`

``` purescript
enabled :: forall ρ i. Boolean -> IProp (disabled :: I | ρ) i
```

#### `checked`

``` purescript
checked :: forall ρ i. Boolean -> IProp (checked :: I | ρ) i
```

#### `selected`

``` purescript
selected :: forall ρ i. Boolean -> IProp (selected :: I | ρ) i
```

#### `slot`

``` purescript
slot :: forall ρ i. String -> IProp (slot :: I | ρ) i
```

#### `GlobalAttributes`

``` purescript
type GlobalAttributes ρ = (id :: I, name :: I, title :: I, class :: I, spellcheck :: I | ρ)
```


