## Unit 0.3: The Hack Computer and Machine Language

### Hardware
- 16-bit machine
- **Central Processing Unit (CPU)**: Performs 16-bit instructions
- **Data Memory (RAM)**: Sequence of 16-bit registers from 0..N
- **Instruction Memory (ROM)**: Sequence of 16-bit registers from 0..N
- Various buses

### Software
- Two sets of instructions represented by 16-bit numbers: 
  - `A` instructions
  - `C` instructions

### Registers
There are 3 registers in Hack:
- `D`: holding data
- `A`: holding data or address
- `M`: the selected register (the register addressed by `A`)
