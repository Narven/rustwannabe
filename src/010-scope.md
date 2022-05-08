# Scope

> The scope of a variable starts from the place where it is created till the end of the block. Along the way is acessed inside blocks.


```rust
fn main() {
	let x = 5;
	
	{
		let y = 99;
		println!("{}, {}", x, y);
	}
	
	println!("{}, {}", x, y); // Error
} 	
```
