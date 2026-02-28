local function findnreplace(pattern, repl, subject, limit)
  if type(subject) ~= "string" then return "" end

  if not pattern or not repl then return subject end

  local result = (string.gsub(subject, pattern, repl, limit))

  return result
end

return findnreplace
