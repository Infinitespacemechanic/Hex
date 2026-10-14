import Lake
open Lake DSL
package hex where
  version := v!"0.1.1"
require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.20.0"
@[default_target]
lean_lib «Hex» where
