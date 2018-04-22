## Unit 0.5: Handling Input and Output

### Screen Memory Map
- Display Unit is `256 x 512` (Black and White pixels)
- The memory map is a sequence of 16-bit values (each value is called a `word`)

- The memory map has 8,192 words (but note that the map is zero based)
  - `pixels = 512 x 256`
  - `pixels = 131,072`
  - `words = 131,072 / 16`
  - `words = 8,192`

- The first row would be represented by the first 32 words because:
  - 1 row has 512 columns, each word is a chunk of 16 bits

- Algorithm to access a pixel in memory:
  - word = 32*row + col/16 (note that this is integer division)
  - bit = col % 16

- Keep in mind the base address:
 - If using a `screen` chip the address could start at 0
 - If using total memory you may need to apply an offset

- Commit word back to memory after modifying the bit and then screen refreshes

### Keyboard Memory Map

- The keyboard memory map is a 16-bit value in memory
- If keyboard is not in use, the register has a value of 0
- Rest of the keys are mapped to an agreed upon value
- For example, the code of `k` being pressed is `75` or `0000000001001011`
- For the Hack computer, this register is `RAM[24576]`
