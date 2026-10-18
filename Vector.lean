import Mathlib.Data.Real.Basic

structure VectorPossibility where
  x : ℝ
  y : ℝ
  z : ℝ
deriving Repr, Add -- or define manually below

def ShowsPoint (v : VectorPossibility) : Prop :=
  v.x > 0 ∧ v.y > 0 ∧ v.z > 0

def ValidVector := { v : VectorPossibility // ShowsPoint v }

-- Need Add on the raw struct first
instance : Add VectorPossibility where
  add a b := ⟨a.x + b.x, a.y + b.y, a.z + b.z⟩

instance : Add ValidVector where
  add a b := ⟨a.1 + b.1, by
    have ha := a.2
    have hb := b.2
    unfold ShowsPoint at *
    constructor
    · linarith [ha.1, hb.1]
    constructor
    · linarith [ha.2.1, hb.2.1]
    · linarith [ha.2.2, hb.2.2]
  ⟩

theorem zero_does_not_show : ¬ ShowsPoint ⟨0,0,0⟩ := by
  unfold ShowsPoint; simp

structure Reaction where
  v1 : ValidVector
  v2 : ValidVector
