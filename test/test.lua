
require "groups"

--test
o = {}
o[1] = "yay"
o[2] = "bee"
o[3] = "cee"
o[4] = "Dee"

first = true
groups.of(2, o, function (t)
  for i,v in ipairs(t) do
    if true == first then
      if 1 == i then
        assert("yay" == v)
      end
      if 2 == i then
        assert("bee" == v)
      end
    else
      if 1 == i then
        assert("cee" == v)
      end
      if 2 == i then
        assert("Dee" == v)
      end
    end
  end
  first = false
end)


print("tests passed")
