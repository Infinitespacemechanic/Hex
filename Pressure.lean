import Hex.Mass
def pressure (m : Mass) (g : Acceleration) (a : Area) : ℝ :=
  m.val * g.val / a.val
theorem pressure_pos (m : Mass) (g : Acceleration) (a : Area) :
    pressure m g a > 0 := by
  unfold pressure
  apply div_pos
  · apply mul_pos m.pos g.pos
  · exact a.pos
def hydrostaticPressure (rho : Mass) (g : Acceleration) (h : ℝ) (_ : h > 0) : ℝ :=
  rho.val * g.val * h
structure Resistance where
  pressureAround : ℝ
  pressureUnder : ℝ
  total : ℝ
