local function eval(expression)
  if type(expression) ~= "string" or expression == "" then
    return nil, "Invalid input"
  end

  local safe_env = {}
  for k, v in pairs(math) do
    safe_env[k] = v
  end

  local code = "return " .. expression
  local chunk, err

  if setfenv then
    local compiler = loadstring or load
    chunk, err = compiler(code, "nebulua_math")
    if chunk then
      setfenv(chunk, safe_env)
    end
  else
    chunk, err = load(code, "nebulua_math", "t", safe_env)
  end

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
