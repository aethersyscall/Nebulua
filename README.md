<div align="center">
  
<img width="100" height="100" alt="Nebulua" src="https://github.com/user-attachments/assets/6f71d816-e58d-4f86-bb91-b761a5c0b1a8" />

# Nebulua  

Nebulua is an extension to Lua functions, providing a predictable and stable out-of-the-box experience. This project aims to make code more readable and reliable through atomic, self-contained logic.

<img src="https://img.shields.io/badge/Lua 5.4%20-9580FF">
<img src="https://img.shields.io/badge/Monolith%20-D2A8FF">
<img src="https://img.shields.io/badge/Library%20-FF9CE6">

<br />

[Philosophy](#philosophy) • [Installation](#installation) • [Usage](#how-to-use) • [Contributing](#how-to-contribute) • [License](#license)

</div>

---

## Philosophy

**Unix philosophy:** I embrace the idea that each file should do one job and do it the best.

**Functional Return:** Every file returns a single function. No more unpredictable, bloated table structures—just pure, executable logic.

**Self-Contained (Monolith):** Every "Atom" is a monolith. If you only need `store_cmd()`, you can clone that single file and `require()` it without triggering a chain of dependencies (Dependency Hell).

**Logical Hierarchy:** Files are organized according to standard Lua categorization. 
* Example: `store_cmd()` resides in `Nebulua/io/`
* Example: `xdg_path()` resides in `Nebulua/os/`

---

## Usage

### Installation
#### Clone the whole library
<details>
<summary><b>1. Git: Full Library Installation (Recommended)</b></summary>
<br />

Clone Nebulua into your local data directory:

```bash
mkdir -p ~/.local/share/lua/
git clone https://github.com/aethersyscall/Nebulua ~/.local/share/lua/Nebulua
```

#### Clone a single atom
<b> Global Path Configuration (Bash, Zsh, Fish)</b>
<br />

Add this to your shell config so you can `require("Nebulua.xxx")` from anywhere.

**Zsh (`~/.zshrc`) / Bash (`~/.bashrc`):**
```bash
export LUA_PATH="$HOME/.local/share/lua/?.lua;;"
```

(YES NONE OF THEM NEEDS LUAROCKS ACTUALLY)
=======
**Fish (`~/.config/fish/config.fish`):**
```fish
set -gx LUA_PATH "$HOME/.local/share/lua/?.lua;;"
```
*(Reload your shell or run `source` after saving).*
</details>

<details>
<summary><b>2. Curl: Single Atom Fetching (Zero-Dependency)</b></summary>
<br />

If you only want one specific function:
```bash
# Example: Fetching store_cmd
curl https://raw.githubusercontent.com/aethersyscall/Nebulua/main/io/store_cmd.lua -o ./store_cmd.lua
```
</details>

<details>
<summary><b>Updating the Library</b></summary>
<br />

To force-update your local library to the latest aetherial state:
```bash
cd ~/.local/share/lua/Nebulua && git fetch --all && git reset --hard origin/main
```

</details>

*(YES, NONE OF THEM NEED LUAROCKS ACTUALLY)*

### How to use?

```Lua
local store = require("Nebulua.io.store_cmd") -- Require the function directly
local user = store("whoami")                  -- Execute the atom
print(user)
```

---

## How to Contribute?

Everyone is welcome to help this project grow. I am looking to build a strong community around robust documentation and atomic engineering.

**Documentation Mirroring:**  
Documentation must mirror the filesystem. If you contribute a function to `./io/store_cmd.lua`, its documentation must be placed in `docs/io/store_cmd.md`.

---

## License

Nebulua is released under the **Apache 2.0 License**.  
See the [LICENSE](./LICENSE) file for details.

---
