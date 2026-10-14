import Mathlib
namespace UPT.Paradox
axiom MassAccumulationNonZero : ∀ (r : ℝ), r ≥ 0 → ∃ (m : ℝ), m > 0
def IsNull : Prop := False
def HoldsAtOneUntilExact (mass : ℝ) : Prop := mass > 0 ∧ mass ≥ 1
axiom MiddleIsOneNotZero : HoldsAtOneUntilExact 1
theorem stacks_never_zero (r : ℝ) (_hr : r ≥ 0) : ∃ m > 0, HoldsAtOneUntilExact m := by
  use 1; constructor; · linarith; · exact ⟨by linarith, by linarith⟩
end UPT.Paradox
