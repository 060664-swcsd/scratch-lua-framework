
# Scratch Global Functions
### Scratch:startProject(function?)
Starts a new scratch project. Occupies _G.PROJECT for easy access.
Will error upon starting multiple projects without stopping them.

All block operations exist within the PROJECT metatable.
Assigning variables is easy, concatenation of strings and numbers is automatically supported. Values of variables to be used in other blocks as inputs must use metamethods from the project.

# Blocks
### PROJECT:onFlagPressed(wrapper: function)
Creates a new flag pressed block. 
Whatever is called inside the wrapper function will affect the project.

### PROJECT:onBroadcast(receiver: string, wrapper: function)
Creates a new broadcast block.
Whatever is called inside the wrapper function will affect the project.

# Costumes, movement, and sprites