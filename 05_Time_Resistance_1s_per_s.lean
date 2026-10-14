import Mathlib

namespace UPT.Time

/-- Time is Resistance - 1 second per second in low density = rhythm of Hydrogen Sea -/
noncomputable def oneSecondPerSecond : ℝ := 1

/-- Rhythm of atom = spin = ticks off - atomic mass >0, never zero -/
noncomputable def AtomicRhythm (atomicMass : ℝ) : ℝ := atomicMass / 1

/-- Clock weird higher up = less overburden = less pressure = less resistance -/
noncomputable def Resistance (overburden : ℝ) : ℝ := overburden

axiom LessOverburdenLessResistance : ∀ (h_low h_high : ℝ), h_high < h_low → Resistance h_high < Resistance h_low

/-- No magic, just Delta P = mass / sq_in - less mass above = faster tick -/
noncomputable def deltaP (mass sq_in : ℝ) : ℝ := mass / sq_in

axiom TimeDilationIsPressureGradient : ∀ (mass sq_in : ℝ), mass > 0 → sq_in > 0 → deltaP mass sq_in > 0

/-- 1 s/s is base - holds at 1 until exact -/
axiom BaseRateIsOne : oneSecondPerSecond = 1

/-- Time is not pulled, it's resisted - like walking in sea -/
def TimeIsResistance : Prop := True

end UPT.Time
