return function(Scratch)

  Scratch.debug = true
  function Scratch:log(...)
    print("[Scratch]", ...)
  end

  function Scratch:startProject()
    self:log("Starting project.")

    if _G.PROJECT ~= nil then
      error("There is already a project.")
    end


  end

end