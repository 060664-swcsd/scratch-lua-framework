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


return Scratch
