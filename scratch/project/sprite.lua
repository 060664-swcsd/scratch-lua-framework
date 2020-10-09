return function(Scratch)
  local SPRITE = {}
  SPRITE.__index = SPRITE

  function SPRITE:new(name, costumes, sounds)
    assert(name)
    assert(costumes)
    assert(sounds)

    local this = setmetatable({}, SPRITE)
    this.name = name
    this.costumes = costumes
    this.sounds = sounds

    return this
  end

  function SPRITE:onBroadcast(wrapper)
  end
  function SPRITE:onClick(wrapper)
  end


  Scratch.SPRITE = SPRITE


end
