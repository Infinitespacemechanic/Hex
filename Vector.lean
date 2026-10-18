-- Old bug fixed: no axiom ∀ v, ShowsPoint v
structure VectorPossibility where
  x : ℝ
  y : ℝ
  z : ℝ
deriving Repr
def ShowsPoint (v : VectorPossibility) : Prop :=
  v.x > 0 ∧ v.y > 0 ∧ v.z > 0
def ValidVector := { v : VectorPossibility // ShowsPoint v }
theorem zero_does_not_show : ¬ ShowsPoint ⟨0,0,0⟩ := by
  unfold ShowsPoint; simp
structure Reaction where
  v1 : ValidVector
  v2 : ValidVector
-- Vector.lean
instance : Add ValidVector where
  add a b := ⟨a.1 + b.1, by 
    intro i
    exact add_pos (a.2 i) (b.2 i)⟩
