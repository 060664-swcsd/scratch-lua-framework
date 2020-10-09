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

Scratch.json = require("./scratch/json")
Scratch.projectWrapper = require("./scratch/projectwrapper")(Scratch)
Scratch.md5 = require("./scratch/md5")

print(Scratch.md5.sumhexa("asd.wav"))

return Scratch
