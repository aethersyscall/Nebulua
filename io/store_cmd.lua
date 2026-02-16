local function store_cmd(cmd)
  local handle = io.popen(cmd)
  if not handle then
    return nil, "Nebulua.io.store_cmd: Failed to spawn process"
  end
  local result = handle:read("*a")
  local ok, _, code = handle:close()
  if result then
    result = result:match("^%s*(.-)%s*$")
  end
  return result or "", code or (ok and 0 or 1)
end
return store_cmd
