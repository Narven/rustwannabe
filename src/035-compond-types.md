# Compound Data Types

* Tuples
* Structs
* Tuple Structs
* Enums

## Tuples

```rust
let info = (1, 3.3, 999);
// or
let info: (u8, f64, i32) = (1, 3.3, 999);
```

*How to access members of a tuple (2 ways)*

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


## Structs

Structs in Rust are "classes" in other languages.

```rust
struct RedFox {
	enemy: bool,
	life: u8,
}
```

- starts with the keyworkd `struct`
- followed by the name with `KebabCase`
- last field needs ending comma `,`

**Instantiating a struct**

```rust
let fox = RedFox {
	enemy: true,
	life: 70,
};
```


but usually o implement a associated function:

```rust
impl RedFox {
	fn new() -> Self { // associated function
		Self {
			enemy: true,
			life: 70,
		}
	}
}
```


the uses a implementation block `impl` that is separated from the struct definition.

this would be used like this:

```rust
let fox = RedFox::new();
```


after this you access methods and fields using `dot syntax`:

```rust
let fox = RedFox::new();
let life_left = fox.life;
fox.enemy = false;
fox.some_method();
```


Methods are also defined im the **implementation block:**

```rust
impl RedFox {
	// associated function
	fn function()
	// methods
	fn move(self)
	fn borrow(&self)
	fn mut_borrow(&mut self)
}
```

{pagebreak}
