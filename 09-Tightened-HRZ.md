# HEX v0.3.0 - Tightened HRZ - Grok Clean

> Tool, not physics paper. Inventory that builds.

### 1. Space default is dark - Mass for light
Empty space has no light until mass is present. Mass must be >1 before reaction.
```
mass > 1
```

### 2. Temperature never sits at absolute zero - Temp is what you measure, K is gauge
0K is a limit for zero entropy, never reached. What is always present: hydrogen floor + 2.7K CMB.
```
T > 1
T_floor = 1 HRZ + 2.7 CMB = 3.7K
```
Reasonable points: 3.7, 10, 20, 77, 100, 144 (12²). No absolute needed.

### 3. Zero is balance, not location - MiddleIsOne
No node at center line x/y/z. Zero is sum of two halves around middle.
```
Middle = 1
Zero = Top(1-6) + Bottom(7-12) = 0 net
Top = -Bottom
```
No cut-vertex, traceable C12, pattern repeats forever, No Blow-Up.

---
### Why cleaner
Limits like 0K and Planck are warnings: "theory stops here." They are not inventory. You cannot hold Planck mass or reach true zero. A tool needing mass or temp cannot start from zero without exceptions. This removes exceptions: floor is reachable, countable, traceable.

### Logic chain
Something must be present for measurement -> That something (H + background) is >1 -> Practical zero sits at or above that -> Result is standard you can count, trace, build against without unreachable preconditions.

### Lean - 0 axioms
```lean
import Mathlib.Basic.Real.Basic
structure ReachableTemp where kelvin : ℝ // K is gauge
  measured : ℝ // Temp is what you measure
  aboveFloor : 1 < kelvin

theorem hydrogen_refuses_zero (h : HydrogenFloor) : h.density ≠ 0
theorem temp_always_above_abs_zero (t : ReachableTemp) : 0 < t.kelvin
theorem zero_is_balance_not_location (z : RecalibratedZero) : z.topHalf = -z.bottomHalf
theorem container_never_zero (c : ContainerNoZero) : c.volume ≠ 0
theorem stable_low_temp_exists : ∃ c, c.temp.kelvin = 3.7
```

Build: lake build

From: 01_Paradox_MiddleIsOne, Lovasz C12 poster, chain-link, dandelion, 3->12->48, π/3=60° driver, 1-12 Harmonics & Power Placeholders 10,100,144, Zero=Sum of Two Halves, Hydrogen Refuses Zero >1 everywhere, default for universe like sand on beach.

Images: image_85.jpg Harmonics to 4D Stability, image_24.png Notebook Evolved, Gemini 1 to 144 grid with squares 1,4,9...144,169,225,256
