return function(Scratch)

  Scratch.debug = true
  function Scratch.log(...)
    if not Scratch.debug then return end
    print("[Scratch]", ...)
  end

  function Scratch:startProject()
    assert( not _G.PROJECT )
    _G.PROJECT = {}
  end

end