local function input(prompt)
  if prompt then
    io.write(prompt)
    io.stdout:flush()
  end
  local result = io.read("*l")
  if not result then
    return nil
  end
  return result and result:match("^%s*(.-)%s*$") or ""
end

return input
