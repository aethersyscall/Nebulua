local function xdg_path(input)
  local home = os.getenv("HOME")
  if not home then return nil, "HOME environment variable not set" end
  local config_file = home .. "/.config/user-dirs.dirs"
  local f = io.open(config_file, "r")
  if not f then return nil, "Could not open xdg config file" end
  local content = f:read("*all")
  f:close()
  local key = input:upper()
  local pattern = "XDG_" .. key .. "_DIR=\"(.-)\""
  local raw_path = content:match(pattern)
  if not raw_path then
    return nil, "XDG directory key not found: " .. key
  end
  local final_path = raw_path:gsub("%$HOME", home)
  return final_path
end

return xdg_path
