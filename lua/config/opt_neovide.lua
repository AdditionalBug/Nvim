--neovide config
if vim.g.neovide then
  -- FONT: Standard Neovim option
  vim.opt.guifont = "JetBrainsMono_Nerd_Font:h12"

  vim.opt.confirm = true -- Triggers a dialog for unsaved changes before bufdelete
  -- VISUALS: Neovide specific globals
  vim.g.neovide_opacity = 0.7
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_floating_shadow = true

  -- ANIMATIONS: Cursor and scrolling
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_scroll_animation_length = 0.3

  -- PERFORMANCE: Redraw only when needed
  vim.g.neovide_no_idle = true

  -- Scales the whole UI. 1.0 is default.
  -- 1.2 makes it 20% larger; 0.8 makes it 20% smaller.

  vim.opt.columns = 100
  vim.opt.lines = 40

  -- 1.0 is default. Increase (e.g., 1.2) to make everything larger.
  vim.g.neovide_scale_factor = 0.88888888

  -- lua/config/options.lua
  -- Force directory to home on startup
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.cmd("cd ~")
    end,
  })

  -- 1. Smooth Cursor Movement (Neovide's version of smear-cursor)
  -- The length of the animation in seconds. 0.13 is the "sweet spot".
  vim.g.neovide_cursor_animation_length = 0.13

  -- 2. Cursor Particle Effects (The "VFX")
  -- Options: "railgun", "torpedo", "pixiedust", "sonicboom", "ripple", "wireframe"
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2

  -- 3. Smooth Scrolling
  -- This replaces the snacks.nvim scroll animation
  vim.g.neovide_scroll_animation_length = 0.3

  -- 4. Cursor Trail Size
  -- This controls the "smear" length of the cursor itself
  vim.g.neovide_cursor_trail_size = 0.8
  -- Enable the background blur (Acrylic effect)
  vim.g.neovide_window_blurred = true

  -- Force LazyVim to stop looking for .git folders and just use where you started
  vim.g.root_spec = { "cwd" }

  -- Options: "railgun", "torpedo", "pixie", "sonicboom", "ripple", "wireframe"
  vim.g.neovide_cursor_vfx_mode = "pixie"

  vim.g.neovide_cursor_vfx_opacity = 200.0 -- Brightness of the glow
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2 -- How long the trail stays
  vim.g.neovide_cursor_vfx_particle_density = 7.0 -- Number of particles
end
