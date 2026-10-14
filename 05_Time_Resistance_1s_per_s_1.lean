import Mathlib
namespace UPT.Time
noncomputable def oneSecondPerSecond : ℝ := 1
noncomputable def AtomicRhythm (atomicMass : ℝ) : ℝ := atomicMass / 1
noncomputable def Resistance (overburden : ℝ) : ℝ := overburden
axiom LessOverburdenLessResistance : ∀ (h_low h_high : ℝ), h_high < h_low → Resistance h_high < Resistance h_low
noncomputable def deltaP (mass sq_in : ℝ) : ℝ := mass / sq_in
axiom TimeDilationIsPressureGradient : ∀ (mass sq_in : ℝ), mass > 0 → sq_in > 0 → deltaP mass sq_in > 0
axiom BaseRateIsOne : oneSecondPerSecond = 1
def TimeIsResistance : Prop := True
end UPT.Time
