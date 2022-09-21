# Closures

> The Closure is an anonymous function that can borrow or capture some data in the scope that is nested.


Sintaxe:

```rust
| x , y | { x + y }
```

- Has no types. Types will be inferred on how the anonymous function is being used.

```rust
let add = |x,y| { x + y };
add(1, 2); // returns 3;
```

We dont need to have parameters, they can be empty:

```rust
|| { x + y }
```


```rust
let s = "🍓️".to_string();
let f = || {
	println!("{}", s);
};

f(); // prints 🍓️
```

> `s` value will be owned by the root, and the closure `borrows` by default.


```rust
let s = "🍓️".to_string();
let f = move || {         // using move will allow the closure to OWN s
	println!("{}", s);
};

f(); // prints 🍓️
```


Other uses of closures:

```rust
let mut v = vec![2, 4, 6];

v.iter()
	.map(|x| x * 3)
	.filter(|x| *x > 10)
	.fold(0, |acc, x|, acc + x);
```

{pagebreak}
