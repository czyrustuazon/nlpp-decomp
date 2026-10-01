# wrapgen: mass-match tiny functions

Scripts (run from the repo root with `S=<scratch dir>`; temp sources go in `$S`):

- `gen.py LO HI MAXSIZE [lift]` takes the "ready" functions (all callees are leaves or handled;
  `python -m ctrdecomp rank`) in [LO, HI) up to MAXSIZE bytes, matches them against fixed templates
  and, with `lift`, against `lift.py`, a symbolic lifter for straight-line ARM with `cmp rX,#0; beq`
  null-check branches. A candidate is kept only if it compiles to score 0. Output: `$S/gen_out.json`.
- `apply.py SRC TAG` writes the verified candidates to `SRC` and appends `functions.toml` /
  `externs.toml` entries (callees as `Fn_<file offset>_<argc>`, data as `g_<VA>`).
- `stage.py SRC` stages only the toml blocks belonging to `SRC` (HEAD plus that block), so a commit
  does not sweep in another agent's uncommitted entries.

Exclude addresses below 0x100 (exception vectors: score 0 hides the cond/link bits, `relink` shows it).
Results and counts: `technical.md` section 8 item 5. Names are placeholders (`W_<offset>`).
