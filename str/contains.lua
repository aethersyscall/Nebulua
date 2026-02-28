local function contains(query, source)
  if not query or not source then return false end

  if string.find(source, query) then
    return true
  end

  return false
end

return contains
