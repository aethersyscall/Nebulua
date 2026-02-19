local function path_exist(path)
  if not path then return false end
  local ok, code = os.rename(path, path)
  if ok then
    return true
  end
  if code == 13 then
    return true
  end
  return false
end

return path_exist
