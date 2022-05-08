# Strings

Theres are 6 types of STRINGS in Rust standard library, but mostly use 2 of them:

### str - string slice (&str)


```rust
let msg = "Hello 🌍️"; // <-- string slice
```

> Data in a string slice cannot be modified


**String slice is composed of:**

a &str (string slice) is usually internaly made of a pointer to some bytes and some length.

### Table


a | b | 🎉️

4

len

ptr
> Is Valid UTF-8

> String cannot indexed by character


```rust
my_string[3] // <-- wrong
```

----

### String

> Data in a String can be modified


borrowed string slice conversion to String

```rust
let msg = "ab🎉️".to_string();
```


or

```rust
let msg = String::from("ab🎉️");
```


**String is composed of:**

a String is usually internaly made of a pointer to some bytes, length and a capacity that might be higher that what is actually being used.

### Table


8

capacity

4

len

ptr
> Is Valid UTF-8
