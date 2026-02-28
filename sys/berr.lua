local function berr(fallback, ok, err, ...)
  if ok then
    return ok, err, ...
  end

  if type(fallback) == "function" then
    return fallback(err, ...)
  end

  return fallback
end

return berr
