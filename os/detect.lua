local function detect()
  local sep = package.config:sub(1, 1)
  if sep == "\\" then
    return "windows"
  end
  return "unix"
end

return detect
