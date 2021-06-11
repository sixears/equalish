{-# LANGUAGE UnicodeSyntax #-}

module Equalish
  ( Equalish( (≏) ) )
where

-- base --------------------------------

import Data.List.NonEmpty  ( NonEmpty )

-- more-unicode ------------------------

import Data.MoreUnicode.Maybe  ( 𝕄 )
import Data.MoreUnicode.Text   ( 𝕋 )

--------------------------------------------------------------------------------

infix 4 ≏

class Equalish α where
  {- | Like `==`; but gives a list of texts specifying where the differences
       are, if any.  Original defined for use in testing record-style data types
   -}
  (≏) ∷ α → α → 𝕄 (NonEmpty 𝕋)

-- that's all, folks! ----------------------------------------------------------
