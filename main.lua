-- How to require the scratch library to use in your code:
Scratch = require("./scratch/scratchlib")

-- To start a project, you do:
Scratch:startProject("Cool")

-- Now, the PROJECT variable exists. You can access it with PROJECT or Scratch.CurrentProject
-- Include scratch libraries
PROJECT:include({'pen', 'makeymakey'})

PROJECT:sprite(
  -- This string can be 'backdrop' and we will automatically recognize it as the backdrop.
  "TheCoolGuy",
  {
    ["costume1"] = "asd.png"
  },
  {},
  function()
    local function move()
      SPRITE:pointTo(Scratch:random(-180, 180))
      Scratch:rep(10, function()
        SPRITE:move(10)
        Scratch:wait(0.1)
      end)
    end
    
    SPRITE:onBroadcast('asdasd', move)
    SPRITE:onClick(move)
  end
)

PROJECT:export("./output.sb3")
