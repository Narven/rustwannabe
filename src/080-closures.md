# Closures

> Closure is anonymous function that can borrow or capture some data in the scope is nested in.


Sintaxe:

```rust
| x , y | { x + y }
```

- has not types. Types will be infered on how the anonymous function is behing used.

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

> `s` value will be owned by the root, the closure `borrows` by default.


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
