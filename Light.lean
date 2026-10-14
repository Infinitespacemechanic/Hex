inductive SpaceDefault where
  | Dark : SpaceDefault
def defaultSpace : SpaceDefault := .Dark
structure LightAtMass where
  mass : ℝ
  mass_pos : mass > 0
  heat : ℝ
def showsLight (m : ℝ) : Prop := m > 0
theorem dark_needs_mass : ¬ showsLight 0 := by
  unfold showsLight; linarith
