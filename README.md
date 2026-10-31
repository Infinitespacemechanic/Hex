# HEX — Lean 4 models

This repository contains two related Lean 4 tracks: an inventory-oriented model
and a set of UPT/HRZ explorations. The second track was previously described in
`README-T-GT-1.pdf`; its material is consolidated here.

## Setup

The project targets Lean 4.20.0 and Mathlib v4.20.0. The canonical project
configuration is `lean-toolchain` and `lakefile.lean`.

```sh
lake build
```

The `_1` configuration files are duplicate alternatives; use the un-suffixed
files as the project configuration.

## Track 1: HEX inventory model

These root-level files form the inventory-oriented model:

- `Hex.lean` — umbrella module, importing the inventory modules.
- `Vector.lean` — positive-coordinate vectors, valid-vector subtype, and
  reactions requiring two valid vectors.
- `Mass.lean` — mass and its birth data.
- `Pressure.lean` — pressure as mass × acceleration ÷ area, with a positivity
  theorem.
- `Time.lean` — labor and measured time.
- `Light.lean` — the model's default-dark premise.
- `Inventory.lean` — compass, container, inventory, and related definitions.

The project describes itself as an inventory tool rather than a physics paper.
Its motivating ideas include tracking mass for future needs, resistance,
pressure, and the role of an atmosphere.

## Track 2: UPT and HRZ explorations

The numbered root-level files are separate explorations:

- `01_Paradox_MiddleIsOne.lean`
- `02_Pressure_EqualPressureNotEqualPull.lean`
- `03_Fulcrum_33_3_Wedge.lean`
- `04_Point_Base12_Clock.lean`
- `05_Time_Resistance_1s_per_s.lean`
- `06_DewPoint_SmokeNotFire_H2O_Equalizer.lean`
- `07_HRZ_RecalibratedZero_FIXED4.lean` — current fixed version of the
  recalibrated-zero exploration.
- `HRZ_RecalibratedZero.lean` — earlier HRZ version.

The HRZ notes use “Hydrogen Refuses Zero” (HRZ) for a model in which a positive
floor is assumed and zero is treated as a balance of two halves rather than a
location. They explore reachable temperature above that floor, a repeating
12-point pattern, and placeholder power values. These are premises and
explorations in this repository; the README does not present them as established
physical results.

## Source layout note

All Lean files currently live in the repository root. However, `Hex.lean`
imports modules as `Hex.Vector`, `Hex.Pressure`, and so on, while the
corresponding files are `Vector.lean`, `Pressure.lean`, etc. This does not match
the usual Lake module-to-path layout (`Hex/Vector.lean`, etc.). The code layout
or imports may need to be reconciled before relying on `lake build`.

The build was not verified while preparing this README because Lake is not
available in the current environment.
