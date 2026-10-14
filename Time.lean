import Hex.Pressure
structure Labor where
  resistance : Resistance
  distance : ℝ
  distance_pos : distance > 0
def laborCost (L : Labor) : ℝ :=
  L.resistance.total * L.distance
def measuredTime (labor : ℝ) (power : ℝ) (_ : power > 0) : ℝ :=
  labor / power
theorem time_holds_at_one (t : ℝ) (ht : t > 0) : t / t = 1 := by
  exact div_self (ne_of_gt ht)
structure PathChoice where
  through : Labor
  over : Labor
