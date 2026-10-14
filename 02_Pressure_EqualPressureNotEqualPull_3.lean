import Mathlib
namespace UPT.Pressure
axiom AtomicWeightPositive : ∀ (m : ℝ), m > 0 → m > 0
noncomputable def Overburden (massesAbove : List ℝ) : ℝ := massesAbove.sum
axiom OverburdenPositive : ∀ (masses : List ℝ), (∀ x ∈ masses, x > 0) → Overburden masses > 0 ∨ masses = []
noncomputable def deltaP (mass sq_in : ℝ) : ℝ := mass / sq_in
axiom CenterEqualPressure : ∀ (p_x p_y p_z : ℝ), p_x > 0 → p_y > 0 → p_z > 0 → p_x = p_y ∧ p_y = p_z → deltaP p_x 1 = deltaP p_y 1
theorem no_zero_pressure (mass sq_in : ℝ) (hm : mass > 0) (hsq : sq_in > 0) : deltaP mass sq_in > 0 := by
  unfold deltaP; positivity
def VectorPossibility := ℝ × ℝ × ℝ
def ShowsPoint (v : VectorPossibility) : Prop := v.1 > 0 ∧ v.2.1 > 0 ∧ v.2.2 > 0
axiom VectorsShowPointNotCancel : ∀ (v : VectorPossibility), ShowsPoint v
end UPT.Pressure
