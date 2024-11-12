local wezterm = require 'wezterm'
local act = wezterm.action

return {
  leader = { key = "x", mods = "CTRL", timeout_milliseconds = 1000 },
  keys = {
    -- copy and paste
    { key = 'v',          mods = 'SUPER',       action = act.PasteFrom 'Clipboard' },
    { key = 'c',          mods = 'SUPER',       action = act.CopyTo 'Clipboard' },
    { key = 'v',          mods = 'CTRL',        action = act.PasteFrom 'Clipboard' },
    { key = 'c',          mods = 'CTRL',        action = act.CopyTo 'Clipboard' },
    -- full screen
    { key = 'Enter',      mods = 'SUPER',       action = act.ToggleFullScreen },
    -- hide
    { key = 'H',          mods = 'CTRL',        action = act.HideApplication },
    -- quit
    { key = 'q',          mods = 'SUPER',       action = act.QuitApplication },
    -- split pane
    { key = 'd',          mods = 'SUPER',       action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'd',          mods = 'SUPER|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = 'w',          mods = 'SUPER',       action = act.CloseCurrentPane { confirm = false } },
    -- move pane
    { key = 'LeftArrow',  mods = 'SUPER',       action = act.ActivatePaneDirection 'Left' },
    { key = 'RightArrow', mods = 'SUPER',       action = act.ActivatePaneDirection 'Right' },
    { key = 'UpArrow',    mods = 'SUPER',       action = act.ActivatePaneDirection 'Up' },
    { key = 'DownArrow',  mods = 'SUPER',       action = act.ActivatePaneDirection 'Down' },
    -- spawn tab
    { key = 't',          mods = 'SUPER|SHIFT', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'w',          mods = 'SUPER|SHIFT', action = act.CloseCurrentTab { confirm = false } },
    -- move tab
    { key = 'LeftArrow',  mods = 'SUPER|SHIFT', action = act.ActivateTabRelative(-1) },
    { key = 'RightArrow', mods = 'SUPER|SHIFT', action = act.ActivateTabRelative(1) },
    -- font size
    { key = '+',          mods = 'CTRL',        action = act.IncreaseFontSize },
    { key = '-',          mods = 'CTRL',        action = act.DecreaseFontSize },
    { key = '0',          mods = 'CTRL',        action = act.ResetFontSize },
    -- search
    { key = 'f',          mods = 'SUPER',       action = act.Search 'CurrentSelectionOrEmptyString' },
    -- change mode
    { key = 'x',          mods = 'SHIFT|CTRL',  action = act.ActivateCopyMode },
    -- command palette
    { key = 'p',          mods = 'SUPER|SHIFT', action = act.ActivateCommandPalette },
    -- debug
    { key = 'L',          mods = 'CTRL',        action = act.ShowDebugOverlay },
    -- quick select
    { key = 'f',          mods = 'SUPER|SHIFT', action = act.QuickSelect },
    -- char select (search unicode)
    { key = 'u',          mods = 'SHIFT|SUPER', action = act.CharSelect { copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' } },
    -- clear
    { key = 'K',          mods = 'CTRL',        action = act.ClearScrollback 'ScrollbackOnly' },
  },

  key_tables = {
    copy_mode = {
      { key = 'Tab',        mods = 'NONE',  action = act.CopyMode 'MoveForwardWord' },
      { key = 'Tab',        mods = 'SHIFT', action = act.CopyMode 'MoveBackwardWord' },
      { key = 'Enter',      mods = 'NONE',  action = act.CopyMode 'MoveToStartOfNextLine' },
      { key = 'Escape',     mods = 'NONE',  action = act.Multiple { 'ScrollToBottom', { CopyMode = 'Close' } } },
      { key = 'Space',      mods = 'NONE',  action = act.CopyMode { SetSelectionMode = 'Cell' } },
      { key = '$',          mods = 'NONE',  action = act.CopyMode 'MoveToEndOfLineContent' },
      { key = '$',          mods = 'SHIFT', action = act.CopyMode 'MoveToEndOfLineContent' },
      { key = ',',          mods = 'NONE',  action = act.CopyMode 'JumpReverse' },
      { key = '0',          mods = 'NONE',  action = act.CopyMode 'MoveToStartOfLine' },
      { key = ';',          mods = 'NONE',  action = act.CopyMode 'JumpAgain' },
      { key = 'F',          mods = 'NONE',  action = act.CopyMode { JumpBackward = { prev_char = false } } },
      { key = 'F',          mods = 'SHIFT', action = act.CopyMode { JumpBackward = { prev_char = false } } },
      { key = 'G',          mods = 'NONE',  action = act.CopyMode 'MoveToScrollbackBottom' },
      { key = 'G',          mods = 'SHIFT', action = act.CopyMode 'MoveToScrollbackBottom' },
      { key = 'H',          mods = 'NONE',  action = act.CopyMode 'MoveToViewportTop' },
      { key = 'H',          mods = 'SHIFT', action = act.CopyMode 'MoveToViewportTop' },
      { key = 'L',          mods = 'NONE',  action = act.CopyMode 'MoveToViewportBottom' },
      { key = 'L',          mods = 'SHIFT', action = act.CopyMode 'MoveToViewportBottom' },
      { key = 'M',          mods = 'NONE',  action = act.CopyMode 'MoveToViewportMiddle' },
      { key = 'M',          mods = 'SHIFT', action = act.CopyMode 'MoveToViewportMiddle' },
      { key = 'O',          mods = 'NONE',  action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
      { key = 'O',          mods = 'SHIFT', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
      { key = 'T',          mods = 'NONE',  action = act.CopyMode { JumpBackward = { prev_char = true } } },
      { key = 'T',          mods = 'SHIFT', action = act.CopyMode { JumpBackward = { prev_char = true } } },
      { key = 'V',          mods = 'NONE',  action = act.CopyMode { SetSelectionMode = 'Line' } },
      { key = 'V',          mods = 'SHIFT', action = act.CopyMode { SetSelectionMode = 'Line' } },
      { key = '^',          mods = 'NONE',  action = act.CopyMode 'MoveToStartOfLineContent' },
      { key = '^',          mods = 'SHIFT', action = act.CopyMode 'MoveToStartOfLineContent' },
      { key = 'b',          mods = 'NONE',  action = act.CopyMode 'MoveBackwardWord' },
      { key = 'b',          mods = 'ALT',   action = act.CopyMode 'MoveBackwardWord' },
      { key = 'b',          mods = 'CTRL',  action = act.CopyMode 'PageUp' },
      { key = 'c',          mods = 'CTRL',  action = act.Multiple { 'ScrollToBottom', { CopyMode = 'Close' } } },
      { key = 'd',          mods = 'CTRL',  action = act.CopyMode { MoveByPage = (0.5) } },
      { key = 'e',          mods = 'NONE',  action = act.CopyMode 'MoveForwardWordEnd' },
      { key = 'f',          mods = 'NONE',  action = act.CopyMode { JumpForward = { prev_char = false } } },
      { key = 'f',          mods = 'ALT',   action = act.CopyMode 'MoveForwardWord' },
      { key = 'f',          mods = 'CTRL',  action = act.CopyMode 'PageDown' },
      { key = 'g',          mods = 'NONE',  action = act.CopyMode 'MoveToScrollbackTop' },
      { key = 'g',          mods = 'CTRL',  action = act.Multiple { 'ScrollToBottom', { CopyMode = 'Close' } } },
      { key = 'h',          mods = 'NONE',  action = act.CopyMode 'MoveLeft' },
      { key = 'j',          mods = 'NONE',  action = act.CopyMode 'MoveDown' },
      { key = 'k',          mods = 'NONE',  action = act.CopyMode 'MoveUp' },
      { key = 'l',          mods = 'NONE',  action = act.CopyMode 'MoveRight' },
      { key = 'm',          mods = 'ALT',   action = act.CopyMode 'MoveToStartOfLineContent' },
      { key = 'o',          mods = 'NONE',  action = act.CopyMode 'MoveToSelectionOtherEnd' },
      { key = 'q',          mods = 'NONE',  action = act.Multiple { 'ScrollToBottom', { CopyMode = 'Close' } } },
      { key = 't',          mods = 'NONE',  action = act.CopyMode { JumpForward = { prev_char = true } } },
      { key = 'u',          mods = 'CTRL',  action = act.CopyMode { MoveByPage = (-0.5) } },
      { key = 'v',          mods = 'NONE',  action = act.CopyMode { SetSelectionMode = 'Cell' } },
      { key = 'v',          mods = 'CTRL',  action = act.CopyMode { SetSelectionMode = 'Block' } },
      { key = 'w',          mods = 'NONE',  action = act.CopyMode 'MoveForwardWord' },
      { key = 'y',          mods = 'NONE',  action = act.Multiple { { CopyTo = 'ClipboardAndPrimarySelection' }, { Multiple = { 'ScrollToBottom', { CopyMode = 'Close' } } } } },
      { key = 'PageUp',     mods = 'NONE',  action = act.CopyMode 'PageUp' },
      { key = 'PageDown',   mods = 'NONE',  action = act.CopyMode 'PageDown' },
      { key = 'End',        mods = 'NONE',  action = act.CopyMode 'MoveToEndOfLineContent' },
      { key = 'Home',       mods = 'NONE',  action = act.CopyMode 'MoveToStartOfLine' },
      { key = 'LeftArrow',  mods = 'NONE',  action = act.CopyMode 'MoveLeft' },
      { key = 'LeftArrow',  mods = 'ALT',   action = act.CopyMode 'MoveBackwardWord' },
      { key = 'RightArrow', mods = 'NONE',  action = act.CopyMode 'MoveRight' },
      { key = 'RightArrow', mods = 'ALT',   action = act.CopyMode 'MoveForwardWord' },
      { key = 'UpArrow',    mods = 'NONE',  action = act.CopyMode 'MoveUp' },
      { key = 'DownArrow',  mods = 'NONE',  action = act.CopyMode 'MoveDown' },
    },

    search_mode = {
      { key = 'Enter',     mods = 'NONE', action = act.CopyMode 'PriorMatch' },
      { key = 'Escape',    mods = 'NONE', action = act.CopyMode 'Close' },
      { key = 'n',         mods = 'CTRL', action = act.CopyMode 'NextMatch' },
      { key = 'p',         mods = 'CTRL', action = act.CopyMode 'PriorMatch' },
      { key = 'r',         mods = 'CTRL', action = act.CopyMode 'CycleMatchType' },
      { key = 'u',         mods = 'CTRL', action = act.CopyMode 'ClearPattern' },
      { key = 'PageUp',    mods = 'NONE', action = act.CopyMode 'PriorMatchPage' },
      { key = 'PageDown',  mods = 'NONE', action = act.CopyMode 'NextMatchPage' },
      { key = 'UpArrow',   mods = 'NONE', action = act.CopyMode 'PriorMatch' },
      { key = 'DownArrow', mods = 'NONE', action = act.CopyMode 'NextMatch' },
    },
  }
}
