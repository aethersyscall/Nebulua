<div align="center">

# Nebulua  

Nebulua is extension to Lua functions, giving you more control pridictable and stable out of the box experience. This project aims to make code more readable and realiable. Instead of writing 10s of line which might have bug you can `require()` a single monolith file that does the job in a single function.

<img src="https://img.shields.io/badge/Lua 5.4%20-9580FF">
<img src="https://img.shields.io/badge/Monolith%20-D2A8FF">
<img src="https://img.shields.io/badge/Library%20-FF9CE6">

</div>

---

## Philosophy

**Unix philosophy:** I love the unix philosophy so each file should do one job and do it the best.

**Return value:** Every file will return a function, no those unpredictable table mess it get.

**Monolith:** Everything is selfcontained if you want a single `store_cmd()` function you can clone that alone file in your project and `require()` it with no dependency (HELL)

**File Structure:** Every file is contained where it should belong to according to Lua categorization. For example: `store_cmd()` should be in the `Nebulua/io/` folder and the `XDG_path()` should be in the `Nebulua/os` folder. 

---

## Usage

### Installation
#### Clone the whole library

```bash
git clone https://github.com/aethersyscall/Nebulua
```

#### Clone a single atom

```bash
curl https://raw.githubusercontent.com/aethersyscall/Nebulua/refs/heads/main/$(FILEPATH) -o ./.bin/$(FILENAME) # Replace file name and path according to your usage
```

(YES NONE OF THEM NEEDS LUAROCKS ACTUALLY)

### How to use?

```Lua
local store = require("Nebulua.io.store_cmd") --require the function and assign a variable to it
local user = store("whoami") --use the function in your way
print(user)
```

---

## How to Contribute?

Everyone is open to contribute to help this project grow under Apache 2.0 License.

Im looking forward to grow the library into a community and a strong community needs a strong documentation.

Anyone who want to contribute can start writing the `.md` files in the [docs](./docs) folder following the same path of the file so Documentation for `./io/store_cmd.lua` will mirror the path in the root Example: `docs/io/store_cmd.md`

---

## License

Apache 2.0 License  
Refrence: [LICENSE](./LICENSE)

---
