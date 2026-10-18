import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

structure VectorPossibility where
  x : ℝ
  y : ℝ
  z : ℝ
deriving Repr, DecidableEq

def ShowsPoint (v : VectorPossibility) : Prop :=
  v.x > 0 ∧ v.y > 0 ∧ v.z > 0

def ValidVector := { v : VectorPossibility // ShowsPoint v }

theorem zero_does_not_show : ¬ ShowsPoint ⟨0, 0, 0⟩ := by
  unfold ShowsPoint
  simp

-- 1. Add for the raw struct
instance : Add VectorPossibility where
  add a b := ⟨a.x + b.x, a.y + b.y, a.z + b.z⟩

-- 2. Add for the valid subtype - preserves ShowsPoint
instance : Add ValidVector where
  add a b :=
    ⟨a.1 + b.1, by
      obtain ⟨hx, hy, hz⟩ := a.2
      obtain ⟨hx', hy', hz'⟩ := b.2
      unfold ShowsPoint at *
      constructor
      · linarith
      constructor
      · linarith
      · linarith
    ⟩

structure Reaction where
  v1 : ValidVector
  v2 : ValidVector

-- Tests:
-- works, stays positive
-- def bad : ValidVector := ⟨⟨0,0,0⟩, by unfold ShowsPoint; simp⟩ -- fails, as intended
