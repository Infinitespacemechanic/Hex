import Mathlib
namespace UPT.Point
def NullIsMissingLine : Prop := True
structure PointOnStick where
  count : Nat
  area : ℝ
  count_one : count = 1
  area_one : area = 1
structure PointOnPlane where
  count : Nat
  area : ℝ
  count_one : count = 1
  area_one : area = 1
def Base10 : Nat := 10
def Base12 : Nat := 12
def Base10OnFingers : Prop := True
def Base12OnKnuckles : Prop := True
def ClockIsBase12 : Prop := True
noncomputable def SixtyDegrees : ℝ := 60
noncomputable def TapeYouCanWalkWith : ℝ := 1.0472
noncomputable def SeaLevelIsOne : ℝ := 1
noncomputable def piThird : ℝ := Real.pi / 3
axiom SixtyIsFiveTimesTwelve : SixtyDegrees = 5 * 12
axiom TapeIsPiThird : |TapeYouCanWalkWith - piThird| < 0.001
end UPT.Point
