-- How to require the scratch library to use in your code:
Scratch = require("./scratch/scratchlib")

-- To start a project, you do:
Scratch:startProject(function()
  -- Inside this function, a new variable will exist named 'PROJECT'
  PROJECT:onFlagPressed(function()
    test = 0 -- Variables are stuck in it's own environment.

    Scratch:rep(PROJECT:contentsOf('test'))
  end)

  PROJECT:stop({
    name = "LUA Scratch!"
  })
end)
