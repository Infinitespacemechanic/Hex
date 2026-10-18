import Mathlib

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

instance : Add VectorPossibility where
  add a b := ⟨a.x + b.x, a.y + b.y, a.z + b.z⟩

instance : Add ValidVector where
  add a b := 
    let raw := a.1 + b.1
    have h : ShowsPoint raw := by
      unfold ShowsPoint
      obtain ⟨hx, hy, hz⟩ := a.2
      obtain ⟨hx', hy', hz'⟩ := b.2
      exact ⟨by linarith, by linarith, by linarith⟩
    ⟨raw, h⟩

structure Reaction where
  v1 : ValidVector
  v2 : ValidVector
