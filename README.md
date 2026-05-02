# 💤 LazyVim

## Romitha's Neovim Configuration

A personalized Neovim setup built on **LazyVim**, optimized for a high-performance development workflow on Windows and Linux^^. This configuration balances aesthetic customization with functional power for Java development and database management^^.

---

### 🚀 Key Features

* **Plugin Management**: Powered by `lazy.nvim` for fast, asynchronous loading^^.
* **Aesthetic & UI**:
  * **Neovide Support**: Dedicated configuration in `opt_neovide.lua` for a smooth GUI experience^^.
  * **Smooth Cursor**: Integrated `cursor_animation.lua` for fluid visual feedback^^.
  * **Dashboard**: A custom start screen via `dashboard.lua`^^.
* **Development Tools**:
  * **Code Runner**: Execute snippets quickly with `coderunner.lua`^^.
  * **Time Travel**: Visual undo history tracking with `undotree.lua`^^.
  * **Quality of Life**: Quick commenting support via `vim_comentery.lua`^^.

---

### 📂 File Structure

The configuration follows a modular Lua structure:

* **`init.lua`**: Entry point that bootstraps the configuration.
* **`lua/config/`**:
  * `autocmds.lua`: Automated system events.
  * `keymaps.lua`: Custom shortcuts tailored for my workflow.
  * `options.lua`: Core Neovim settings and behavior.
* **`lua/plugins/`**: Individual plugin specifications for modularity.

---

### 🛠️ Environment Context

* **Cross-Platform**: Configured to sync and function seamlessly between Windows and Linux environments.

---

### ⚙️ Installation

1. Ensure **Neovim (v0.9+)** is installed.
2. Clone this repository to your local config folder:
   * **Windows**: `~/AppData/Local/nvim`
   * **Linux/macOS**: `~/.config/nvim`
3. Launch Neovim; `lazy.nvim` will automatically handle the plugin installation^^.

---

**Author:** Romitha^^

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
