return {
  "sphamba/smear-cursor.nvim",
  opts = {

    -- cursor_color = "#7fdbca",
    stiffness = 0.6,
    trailing_stiffness = 0.3,

    distance_stop_animating = 0.1,
    hide_target_hack = false,

    blink_wait = 500, -- Delay (ms) before blinking starts
    blink_on = 400, -- Time (ms) the cursor is visible
    blink_off = 400, -- Time (ms) the cursor is hidden
  },
}
