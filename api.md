
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
Define these at the start of the project.
### PROJECT:sprite(name: string, costumes: string/table<string>, table_of_sounds: table<string>, wrapper: function?)
Defines a sprite. If path_to_img is a table, then the table should include paths to images as a dictionary. table_of_sounds should follow the same structure as the costume table.
Example:
```lua
PROJECT:sprite(
  "TheCoolGuy",
  {
    "costume1": "asd.png"
  },
  {},
  function()
    -- Do stuff here.
  end
)
```