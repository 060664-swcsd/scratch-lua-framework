return function(Scratch)
  local PROJECT = {}
  PROJECT.__index = PROJECT

  function PROJECT:new()
    local this = {}
    setmetatable(this, PROJECT)

    this.vars = {}
    this.sprites = {}
    this.name = "Untitled Project"

    return this
  end

  function PROJECT:include(...)
    local includes = {...}
    
    if type(includes[1]) == "table" then
      includes = includes[1]
    end

    Scratch:log("Project '" .. self.name .. "' included libraries: ", table.concat(includes))
  end

  function PROJECT:sprite(name, costumes, sounds, wrapper)
    assert(name)
    assert(costumes)
    assert(sounds)
    

    local isBackdrop = name:lower() == "backdrop"

    local sprite = Scratch.SPRITE:new(name, costumes, sounds)

    if wrapper then
      local newenv = getfenv(wrapper)
      newenv.SPRITE = sprite

      setfenv(wrapper, newenv)

      wrapper()
    end

    Scratch:log("Sprite '" .. name .. "' created.")
  end

  function PROJECT:export()
    Scratch:log("Project '" .. self.name .. "' exported.")
  end

  ----------------------------------------
  Scratch.PROJECT = PROJECT

  function Scratch:startProject(name, ...)
    local otherargs = {...}

    assert( not _G.PROJECT, "Export your current project before starting a new one" )

    Scratch.CurrentProject = PROJECT:new()
    Scratch.CurrentProject.name = name
    
    _G.PROJECT = Scratch.CurrentProject
  end
end