local function grep(pattern, path, mode)
  if not pattern or not path then return "" end

  local f = io.open(path, "r")
  if not f then return "" end

  local results = {}

  for line in f:lines() do
    local search_line = line
    local search_pattern = pattern

    -- Handle Case Modes
    if mode == "lower" then
      search_line = line:lower()
      search_pattern = pattern:lower()
    elseif mode == "upper" then
      search_line = line:upper()
      search_pattern = pattern:upper()
    end

    if search_line:find(search_pattern) then
      table.insert(results, line)
    end
  end

  f:close()

  return table.concat(results, "\n")
end

return grep
