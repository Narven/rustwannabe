# Collections

### Vectors - Vec<T>


```rust
let mut v: Vec<i32> = Vec::new();
v.push(2);
v.push(4);
v.push(6);
```


```rust
let x = v.pop();
```


```rust
println!("{}", v[1]);
```


Simpler way to create Vectors with macro:

```rust
let mut v = vec![2, 4, 6];
```

----

### HashMap<K, V>


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
