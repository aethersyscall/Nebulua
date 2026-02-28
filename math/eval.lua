local function eval(expression)
  if type(expression) ~= "string" or expression == "" then
    return nil, "Invalid input"
  end

  local safe_env = {}

  for k, v in pairs(math) do
    safe_env[k] = v
  end

  local chunk, err = load("return " .. expression, "nebulua_math", "t", safe_env)

  if not chunk then
    return nil, "Syntax Error: " .. (err or "Unknown")
  end

  local ok, result = pcall(chunk)

  if not ok then
    return nil, "Calculation Error: " .. (result or "Unknown")
  end

  return result
end

return eval
