# Functions

```rust
fn do_stuff() {
}
```

Funtions requirements:

- start with `fn` (FUN)
- `snake_case` by naming convention
- they don't have to appear in any specific order to be able to be called

```rust
fn do_stuff(speed: f64, gaz: f64) -> f64 {
	// body
}
```

- parameters are always `name` `colon` `type` 
- return type is defined by `->` `type` 

```rust
fn do_stuff(speed: f32, gas: f64) -> f64 {
	return speed *gas;
}
```

- return values use the `return` keyword

`Tail Expression` - alternative syntax for returning: 

```rust
fn do_stuff(speed: f32, gas: f64) -> f64 {
	speed * gas // short syntax for return, no semicolon in last statement
}
```

- no `return` keyword
- no `;` semicolon at the end

```rust
{ return true; }
// same
{ true }
```

> At the time of the writting of this book (2022), named arguments dont exist in functions.
