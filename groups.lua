local ipairs = ipairs

module('groups')

function of (cardinality, table, cb)
  if 0 == cardinality then
    return
  end

  ret = {}
  size = 0

  for i,val in ipairs(table) do
    card = i % cardinality

    if 0 == card then
      ret[cardinality] = val
      cb(ret)
      ret = {}
      size = 0
    else
      ret[card] = val
      size = card
    end

  end

  if size > 0 then
    cb(ret)
  end
end


return of
--return { groupsOf = groupsOf }
