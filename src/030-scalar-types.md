# Scalar Types

The are 4 Scalar types:


- Interger
- floats
- booleans
- chars

### Integer Types


Table describing possible integer types:

| isize | usize |
| ----- | ----- |
| i128 | u128 |
| i64 | u64 |
| i32 | u32 |
| i16 | u16 |
| i8 | u8 |

**SIGNED (-)**

**UNSIGNED (+)**
> **usize** is special, is the size of the platform pointer type and can represent every memory address, used for indexing an array or vector


`f32` has 32 bits of precision, and `f64` has 64 bits of precision. `f64` is the **default**.
> Integer types if not defined it defaults to **i32**

> Not all types are supported in every platform.


### Integer literals


Can be specified in several diferent ways

### Table


b'A'

Byte (u8 only)

**0b**11110111

Binary

**0o**77543211

Octal

**0x**deadbeef

Hex

10000000

Decimal
> Underscores `_` can be used to separate in a useful way


`100_000_000` same as `100000000`

### Floating literals


Floating type literals follow the `IEEE-754` standard, but they look like this:

```rust
3.14321312312 // good
.1            // not valid
0.1           // good
```


### Suffixes


Numeric literals can use sufixes:

```rust
let x: u16 = 5;
let y: f32 = 3.14;
```


but this is also fine:

```rust
let x = 5u16;
let y = 3.14f32;

// or

let x = 5_u16;
let y = 3.14_f32;
```


### Bool


`true` or `false`

### Character Type


Defined using `char` , and it represents a single unicode scalar value, which can be anything.
> a `char` is always 4 bytes (32 bits)

> char are defined with `'` single quotes


```rust
let my_letter = 'a';
let i_kratkoa = '🚀️';
```
