structure Mass where
  val : ℝ
  pos : val > 0
structure Area where
  val : ℝ
  pos : val > 0
structure Acceleration where
  val : ℝ
  pos : val > 0
structure MassWithHistory where
  mass : Mass
  born : Nat
