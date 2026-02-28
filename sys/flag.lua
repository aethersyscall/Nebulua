local function flag(key)
  if not arg or not key then return nil end

  local prefix = #key == 1 and "-" or "--"
  local flag_str = prefix .. key

  for i, v in ipairs(arg) do
    if v == flag_str then
      local next_val = arg[i + 1]

      if next_val and next_val:sub(1, 1) ~= "-" then
        return next_val
      end

      return true
    end

    local equals_prefix = flag_str .. "="
    if v:sub(1, #equals_prefix) == equals_prefix then
      return v:sub(#equals_prefix + 1)
    end
  end

  return nil
end

return flag
