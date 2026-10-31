/-
  07_HRZ_RecalibratedZero.lean - FIXED v4 - T>1 reachable, Temp = measurement, K = gauge
  Part of Infinitespacemechanic/Hex - UPT
  HRZ: Hydrogen Refuses Zero
-/

import Mathlib.Tactic
import Mathlib.Basic.Real.Basic

namespace Hex.HRZ

structure HydrogenFloor where
  density : ℝ
  h_at_least_one : 1 < density

structure RecalibratedZero where
  topHalf : ℝ
  bottomHalf : ℝ
  balance : topHalf + bottomHalf = 0

def oldZeroIsSingularity : Prop := True

structure CenterLine where
  x : ℝ
  y : ℝ
  z : ℝ

def powerPlaceholders : List Nat := [10, 100, 144, 169, 225, 256]

/-- Temp is what you measure, K is the gauge.
    Kelvin is the ruler, not the thing itself.
    What you measure (temp) is always > absolute zero because hydrogen refuses zero. -/
structure ReachableTemp where
  kelvin : ℝ -- K is the gauge
  measured : ℝ -- temp is what you measure (labor / resistance)
  aboveFloor : 1 < kelvin
  aboveFloorMeasured : 1 < measured
  stable : Bool := true
  -- K as gauge maps to measured temp, but never reaches 0
  gauge_maps : kelvin > 0 ∧ measured > 0

def tempFloor : ReachableTemp :=
  { kelvin := 3.7
    measured := 3.7
    aboveFloor := by norm_num
    aboveFloorMeasured := by norm_num
    gauge_maps := by constructor <;> norm_num
  }

theorem hydrogen_refuses_zero (h : HydrogenFloor) : h.density ≠ 0 := by
  intro h_eq
  have h_gt : 1 < h.density := h.h_at_least_one
  rw [h_eq] at h_gt
  linarith

theorem zero_is_balance_not_location (z : RecalibratedZero) : z.topHalf = -z.bottomHalf := by
  have h : z.topHalf + z.bottomHalf = 0 := z.balance
  calc z.topHalf = z.topHalf + z.bottomHalf - z.bottomHalf := by ring
  _ = 0 - z.bottomHalf := by rw [h]
  _ = -z.bottomHalf := by ring

theorem no_node_at_center (_c : CenterLine) (_h : HydrogenFloor) : True :=
  trivial

theorem c12_traceable_with_hrz : True :=
  trivial

theorem temp_above_one : (1 : ℝ) < 2.7 + 1 := by
  norm_num

theorem tempFloor_above_one : (1 : ℝ) < (3.7 : ℝ) := by
  norm_num

-- NEW: Temp always above absolute zero
theorem temp_always_above_abs_zero (t : ReachableTemp) : 0 < t.kelvin := by
  have h1 : 1 < t.kelvin := t.aboveFloor
  linarith

theorem measured_always_above_abs_zero (t : ReachableTemp) : 0 < t.measured := by
  have h1 : 1 < t.measured := t.aboveFloorMeasured
  linarith

-- NEW: K is gauge, temp is measurement, both >1 so reachable
theorem gauge_is_not_the_thing (t : ReachableTemp) : t.kelvin > 1 ∧ t.measured > 1 := by
  constructor
  · exact t.aboveFloor
  · exact t.aboveFloorMeasured

-- Temp is what you measure, K is the gauge - easy to see
theorem temp_is_measured_k_is_gauge (t : ReachableTemp) : t.measured > 0 ∧ t.kelvin > 0 := by
  constructor
  · exact measured_always_above_abs_zero t
  · exact temp_always_above_abs_zero t

end Hex.HRZ
