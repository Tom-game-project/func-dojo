# How to run

## Javascript

- tarai.js
```bash
node javascript/tarai.js
```  

## Lua

- tarai.lua
```bash
lua lua/tarai.lua
```

## Python

- tarai.py

```bash
python3 python/tarai.py
```

- tarai_cache.py (cache有り)

```bash
python3 python/tarai_cache.py
```

## Rust

- tarai.rs

```bash
rustc rust/tarai.rs
./tarai
```

## Haskell

- tarai.hs

```bash
ghc haskell/tarai.hs
./haskell/tarai
```

# wasm
```bash
wat2wasm wasm/tarai.wat -o wasm/tarai.wasm
cd wasm
python3 -m http.server 8080
```
and access http://0.0.0.0:8080/
