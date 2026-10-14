# HEX Inventory Tool v0.2.0
# Fixes for 6523d40 critique

Default of space is Dark. You have to have mass for light to be seen.
Time is the labor in human terms... but that energy... which is mass.
Time doesn't have a limit mass does, every atom has born date and expiration.
You don't have to account for time... but you do have to use it to measure.
Where less mass provides path to least resistance.
Hourglass is not good for Maxwell — good for inventory.

## What was fixed from v0.1.0 (6523d40)
- Deleted contradictory axiom VectorsShowPointNotCancel (∀ v, ShowsPoint v => 0>0)
- Replaced with ValidVector filter { v // ShowsPoint v } and theorem zero_does_not_show
- Fixed Pressure: was mass/area (M L^-2), now m*g/A (M L^-1 T^-2) with pressure_pos proof
- Removed def X : Prop := True labels, replaced with structures Mass, Area, Acceleration, Resistance, Labor, Inventory
- Added lakefile.lean + lean-toolchain (v4.20.0 + Mathlib v4.20.0) for reproducibility
- 0 axioms, lake build passes

## Tool, not physics paper
- Inventory for tomorrow: must have mass at hand
- Mass dependency: need >1 mass for reaction
- Container: big animals slow hearts, tiny fast
- Compass: Fin 360, not one arrow
- Barometric + hydrostatic measurement = labor
- Path: through mountain vs over, with water vs against, atmosphere handling cosmic rays

## Build
lake build

## Files
Hex/Vector.lean - valid vectors, reaction needs 2
Hex/Mass.lean - mass with birth
Hex/Pressure.lean - pressure = m*g/A
Hex/Time.lean - labor, measured time, t/t=1 holds at 1
Hex/Light.lean - default dark
Hex/Inventory.lean - compass, container, inventory
