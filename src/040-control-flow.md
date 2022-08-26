# Control Flow

```rust
if num == 5 {
	msg = "five";
} else if num == 4 {
	msg = "four";
} else {
	msg = "other";
}
```

> IF is an expression, NOT a statement


so this is possible:

```rust
msg = if num == 5 {
	"five"
} else if num == 4 {
	"four"
} else {
	"other"
};
```


NOTE:


- NO `return` keyworkds
- NO `;` semicolons on each line, EXCEPT the last
- ALL blocks must return THE SAME TYPE
- SEMICOLON at the END

## Loop

In most languages to create an infinite loop we can do:

```c++
while true {
	// code where
}
```

But in Rust we we have special keyword for that `loop`:

```rust
loop {
	// code where
}
```

One good feature of loops is that they can be labeled:

```rust
'outer: loop {
	loop {
		break 'outer;
	}
}
```

> This example also shows that you can have nested `loops`.

How to break loops:

```rust
'outer: loop {
	loop {
		loop {
			break 'outer;
		}
	}
}
```

Using `continue` allows us to... continue:

```rust
'outer: loop {
	loop {
		continue;
	}
}
```

or

```rust
'outer: loop {
	loop {
		continue 'outer;
	}
}
```


### While


### For


```rust
for num in [7, 8, 9].iter() {
	// body
}
```


For loops can take a pattern to destructure the items in the list

```rust
let array = [(1,2), (3, 4)];

for (x, y) in array.iter() {
	// body
}
```


Using ranges:

```rust
for num in 0..50 {
	// do stuff with num
}
```

> First value is INCLUSIVE, second is EXCLUSIVE, so this will count from 0 to 49


Including the second part

```rust
for num in 0..=50 {       // 50 will be inclusive
	// do stuff with num
}
```
