{-#  LANGUAGE GADTs, RankNTypes#-}
module Math.ExponentialFamily.Internal

import Linear.V
import GHC.TypeLits (KnownNat, Nat)

data ExpFam θ dim x  where
  ExpF ::  KnownNat dim =>
   (forall s . Num s => (θ ->  V dim s )) −− η
   (forall s . Num s => (x -> V dim s )) −− t
   (forall s . Num s => (θ -> s )) −− a
   (forall s . Num s => (x -> s )) −− b
   (θ -> Rand x ) −− sample


