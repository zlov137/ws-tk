local wezterm = require 'wezterm'

local M = {}

function M.detect_os()
  if wezterm.target_triple == "x86_64-apple-darwin" or wezterm.target_triple == "aarch64-apple-darwin" then
    return "macos"
  elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
    return "windows"
  elseif wezterm.target_triple == "x86_64-unknown-linux-gnu" then
    return "linux"
  else
    return "unknown"
  end
end

function M.detect_shell()
  local os = M.detect_os()
  if os == "windows" then
    return {
      "C:\\Program Files\\PowerShell\\7\\pwsh.exe",
    }
  elseif os == "macos" then
    return { "/opt/homebrew/bin/bash", "--login" }
  else
    return { "/bin/bash", "--login" }
  end
end

function M.detect_font()
  local os = M.detect_os()
  if os == "windows" then
    return  wezterm.font(
      "FiraCode Nerd Font Mono",
      {
        weight = "Medium",
        style = "Normal",
        stretch = "Normal",
      }
    )
  elseif os == "macos" then
    return wezterm.font(
      "FiraCode Nerd Font Mono",
      {
        weight = "Regular",
        style = "Normal",
        stretch = "Normal",
      }
    )
    else
    return wezterm.font(
      "FiraCode Nerd Font Mono",
      {
        weight = "Regular",
        style = "Normal",
        stretch = "Normal",
      }
    )
  end
end
return M
