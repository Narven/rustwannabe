# Tuple


```rust
let info = (1, 3.3, 999);
// or
let info: (u8, f64, i32) = (1, 3.3, 999);
```


#### How to access members of a tuple (2 ways)


Dot syntax:

```rust
let info = (1, 3.3, 999);
let jets = info.0;
let fuel = info.1;
let ammo = info.2;
```


Destructuring:

```rust
let info = (1, 3.3, 999);
let (jets, fuel, ammo) = info;
```

> arity means how many items are in the tuple

> maximum arity in tuples is 12


### Arrays


```rust
let buf = [1, 2, 3];
// or
let buf = [0; 3];  // this specifies the value and how many;
```
