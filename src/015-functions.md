# Functions

```rust
fn do_stuff() {
}
```


Funtions:


- start with `fn` (FUN)
- snake_case by convention
- they dont have to appear in any order to be able to be called


```rust
fn do_stuff(qty: i32, oz: f64) -> f64 {
	// body
}
```

- parameters are always `name` `colon` `type` 
- return type is defined by `->` `type` 

```rust
fn do_stuff(qty: i32, oz: f64) -> f64 {
	return qty * oz;
}
```

- return values use the `return` keyword

**Tail Expression** - alternative syntax for returning: 

```rust
fn do_stuff(qty: i32, oz: f64) -> f64 {
	qty * oz // short syntax for return
}
```

- no `return` keyword
- no `;` semicolon at the end

```rust
{ return true; }
// same
{ true }
```
