local function bcat(path)
  if not path then return "" end
  local f = io.open(path, "rb")
  if not f then
    return ""
  end
  local content = f:read("*all")
  f:close()
  return content or ""
end

return bcat
