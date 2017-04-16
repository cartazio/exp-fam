{-#  LANGUAGE GADTs, RankNTypes, DataKinds #-}
module Math.ExponentialFamily.Internal where

import Linear.V
import GHC.TypeLits (KnownNat, Nat)
import Data.Proxy

import qualified System.Random.SplitMix.Internal  as Split



data ExpFam θ dim x  where
  ExpF ::  KnownNat dim =>
   (Proxy dim) ->
   (forall s . Num s => (θ ->  V dim s )) ->   --  η
   (forall s . Num s => (x -> V dim s ))  ->   --  t
   (forall s . Num s => (θ -> s )) ->  --   a
   (forall s . Num s => (x -> s )) ->  --   b
   (θ -> Split.Random x ) ->  -- sample
   ExpFam θ dim x


