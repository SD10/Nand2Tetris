## Unit 1.3: VM Abstraction: Memory Segments

### Memory Segments
- We have 8 virtual memory segments in the Hack lang:
  - local, argument, this, that, constant, static, pointer, temp

**Syntax**: `push segment i`
  - Segment is the segment name
  - i is a non-negative integer

**Syntax**: `pop segment i`
  - Segment is the segment name
  - i is a non-negative integer
  - Can't pop constant segment

