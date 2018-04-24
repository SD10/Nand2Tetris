## Unit 1.4: VM Implementation: the Stack

### Pointer Manipulation

#### Pseudo Code:
```
D = *p
```

#### Hack Assembly
```assembly
@p
A=M
D=M
```

#### Notation:
`*p` - memory address that p points at
`p++` - increment
`p--` - decrement

### Stack Implementation

#### Assumptions:
- Stack pointer stored at RAM[0]
- Stack base address = 256


```
*SP = 23
SP++
```

```assembly
@23   
D=A    // D = 23

@SP    
A=M
M=D    // *SP = D

@SP
M=M+1  // SP++
```

Notice how we use the `A` register in two different ways: as a data register initially and then as a traditional address register.

