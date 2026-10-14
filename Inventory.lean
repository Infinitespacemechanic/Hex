import Hex.Time
import Hex.Light
def Compass := Fin 360
structure Container where
  size : ℝ
  size_pos : size > 0
  heartPeriod : ℝ
def needsTwoMasses (n : Nat) : Prop := n ≥ 2
theorem reaction_needs_two : needsTwoMasses 2 := by
  unfold needsTwoMasses; simp
structure Inventory where
  massToday : ℝ
  massForTomorrow : ℝ
  need : massToday > 0 ∧ massForTomorrow > 0
def cosmicShield (atmosphereMass : ℝ) : Prop :=
  atmosphereMass > 0
