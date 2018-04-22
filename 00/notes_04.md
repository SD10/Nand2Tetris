## Unit 0.4: Hack Language Specification

### The A-instruction

#### Binary Syntax

**Syntax:** `0 value` (Where `value` is a 15-bit binary number)

**Example:**
```binary
0000000000000010
```
**Result:**
Sets the A register to 3

#### Symbolic Syntax

**Syntax**: `@value`

**Example**:
```asm
@51      // A = 51
M = 100  // RAM[51] = 100
```

**Result**:
- This sets the `A` register to 51 and `RAM[51]` becomes the selected register.
- **Note**: The selection of register 51 is an important side effect.

### The C-instruction

### Binary Syntax

**Syntax**: `[opcode: 1][unused: 1 1][comp: a c1 c2 c3 c4 c5 c6][dest: d1 d2 d3][jump: j1 j2 j3]`

Check the Nand2Tetris site to see the mappings for each set of bits.

### Symbolic Syntax

**Syntax**: `dest = comp ; jump`
- Both `dest` and `jump` are optional

`comp := 0 | 1 | -1 | D | A | !D | !A | -D | -A | D+1 | A+1 | D-1 | A-1 | D+A | D-A | A-D | D&A | D|A | M | !M | -M | M+1 | M-1 | D+M | D-M | M-D | D&M | D|M`

`dest := null | M | D | MD | A | AM | AD | AMD`

`jump := null | JGT | JEQ | JGE | JLT | JNE | JLE | JMP` **(Always compares result of computation to 0)**

**Example**:
```asm
// If (D - 1 == 0) jump to execute the instruction stored in ROM[56]
@56
D - 1 ; JEQ
```

