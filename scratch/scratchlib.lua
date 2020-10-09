local Scratch = {}

setmetatable(
  Scratch,
  {
    __metatable = "Scratch",
    __tostring = function()
      return "Scratch"
    end
  }
)

Scratch.debug = true
function Scratch:log(...)
  if not Scratch.debug then return end
  print("[Scratch]", ...)
end

Scratch.json = require("./scratch/json")
Scratch.md5 = require("./scratch/md5")

require("./scratch/project/projectwrapper")(Scratch)
require("./scratch/project/sprite")(Scratch)

print(Scratch.md5.sumhexa("asd.wav"))

return Scratch
