# Collections

There are different of collections:
* Arrays
* Slices
* Vectors
* Hashmap

## Arrays

Arrays are a collection of values of the same type.

Array rules:
* They ***cannot*** be resized
* They can be modified
* Arrays are indexed

{caption: "Simple array example"}
```rust
fn main() {
  let buf = [1, 2, 3];
}
// [1, 2, 3]
```

{caption: "Array by specifying the value and how many"}
```rust
fn main() {
    let buf = [0; 3];
    println!("{:?}", buf);
}
// [0, 0, 0]
```

{caption: "Array by specifying the type and how many"}
```rust
fn main() {
  let buf:[i32; 3]; = [1, 2, 3];
}
// [1, 2, 3]
```

{caption: "Modify and access a specific index of an array"}
```rust
fn main() {
    let mut numbers = [0; 10];
    numbers[5] = 200;
    println!("{:?}", numbers[5]);
}
// 200
```

{caption: "Iterating through an array"}
```rust
fn main() {
    let numbers = [0; 3];

    for number in numbers.iter() {
        println!("{}", number);
    }
}
// 0
// 0
// 0
```

## Vectors

Vectors are arrays of variable size.

Vectors can be created in 2 ways:

{caption: "One way of creating a Vector"}
```rust
fun main() {
  let v: Vec<i32> = Vec::new();
}
```

{caption: "Creating a vector using a macro"}
```rust
fun main() {
  let v = vec![];
}
```

Like arrays we can also define the type and size of a vector.

{caption: "Initializing with a specific size"}
```rust
fun main() {
  let v = vec![i32; 5];
}
```

Operations we can do with vectors:

{caption: "Adding values using push"}
```rust
let mut v: Vec<i32> = Vec::new();
v.push(2);
v.push(4);
v.push(6);
```

{caption: "Remove the last element of an vector"}
```rust
let x = v.pop();
```

{caption: "Print an vector at specific index"}
```rust
println!("{}", v[1]);
```


## Slices

A slice is a pointer to a block of memory.

Rules of slices:
* Can be used on arrays, vectors and strings
* Size is determined at runtime
* Slices are indexed

```rust
fn main() {
  let numbers = [1, 2, 3, 4, 5];
  let slice = &numbers[1..4];
  println!("{:?}", slice);
}
// [2, 3, 4]
```

## HashMap<K, V>


HashMap's are what in other languages are refered to `Dictionaries` .

Defining a HashMap, we need to specify the type of Key (K), and Value (V)

```rust
let mut h: HashMap<u8, bool> = HashMap::new();
```


Insert values:

```rust
h.insert(5, true);
h.insert(6, false);
```


Remove values:

```rust
let have_five = h.remove(&5).unwrap();
```


Other types of HashMaps:

VecDeque - Good for removing stuff from the front and end of the Vec

LinkedList

HashSet

BinaryHeap

BTreeMap

BTreeSet

{pagebreak}
