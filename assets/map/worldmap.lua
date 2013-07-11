return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 32,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  properties = {},
  tilesets = {
    {
      name = "World Map",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - World Map.png",
      imagewidth = 256,
      imageheight = 16448,
      properties = {},
      tiles = {}
    },
    {
      name = "Customization",
      firstgid = 4113,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - Customization.png",
      imagewidth = 192,
      imageheight = 1760,
      properties = {},
      tiles = {}
    },
    {
      name = "Desert",
      firstgid = 4443,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - Desert.png",
      imagewidth = 96,
      imageheight = 128,
      properties = {},
      tiles = {}
    },
    {
      name = "Mountains (meu)",
      firstgid = 4455,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - Mountains (meu).png",
      imagewidth = 96,
      imageheight = 128,
      properties = {},
      tiles = {}
    },
    {
      name = "Trees (meu)",
      firstgid = 4467,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - Trees (meu).png",
      imagewidth = 96,
      imageheight = 128,
      properties = {},
      tiles = {}
    },
    {
      name = "Trees Opening (meu)",
      firstgid = 4479,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - Trees Opening (meu).png",
      imagewidth = 96,
      imageheight = 128,
      properties = {},
      tiles = {}
    },
    {
      name = "Medium Water",
      firstgid = 4491,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "Inq XP WM - Medium Water.png",
      imagewidth = 384,
      imageheight = 128,
      properties = {},
      tiles = {}
    },
    {
      name = "worldmap_1",
      firstgid = 4539,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "worldmap_1.png",
      imagewidth = 256,
      imageheight = 4096,
      properties = {},
      tiles = {}
    },
    {
      name = "worldmap_2",
      firstgid = 5563,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "worldmap_2.png",
      imagewidth = 256,
      imageheight = 4096,
      properties = {},
      tiles = {}
    },
    {
      name = "worldmap_3",
      firstgid = 6587,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "worldmap_3.png",
      imagewidth = 256,
      imageheight = 4096,
      properties = {},
      tiles = {}
    },
    {
      name = "worldmap_4",
      firstgid = 7611,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "worldmap_4.png",
      imagewidth = 256,
      imageheight = 4096,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "ground",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        4446, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4447, 4448,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4449, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4450, 4451,
        4452, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4453, 4454
      }
    },
    {
      type = "tilelayer",
      name = "impassable",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        4462, 4462, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4465, 4462, 4462,
        4462, 4466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5355, 0, 0, 0, 0, 0, 0, 0, 4464, 4462,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5355, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5355, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5355, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5363, 5350, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5358, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5358, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5358, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 5365, 5365, 5365, 5365, 5365, 5365, 5365, 5442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5358, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5358, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5358, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5466, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5441, 5365, 5365, 5365, 5442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5441, 5365, 5365, 5365, 5442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5450, 0, 0, 0, 0, 0, 0, 5441, 5365, 5365, 5365, 5365, 5365, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4461,
        4457, 4460, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4458, 4462,
        4457, 4457, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4459, 4462, 4462
      }
    },
    {
      type = "tilelayer",
      name = "cities",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7775, 7776, 7777, 7778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7783, 7784, 7785, 7786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7791, 7792, 7793, 7794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7799, 7800, 7801, 7802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7775, 7776, 7777, 7778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7783, 7784, 7785, 7786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7791, 7792, 7793, 7794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7799, 7800, 7801, 7802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7775, 7776, 7777, 7778, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7783, 7784, 7785, 7786, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7791, 7792, 7793, 7794, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7799, 7800, 7801, 7802, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 7775, 7776, 7777, 7778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 7783, 7784, 7785, 7786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 7791, 7792, 7793, 7794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 7799, 7800, 7801, 7802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "ressources",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 7957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 7965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7957, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7965, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7926, 7927, 7928, 0, 0, 0, 0, 0, 0, 7979, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7934, 7935, 7936, 0, 0, 0, 0, 0, 0, 7987, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7942, 7943, 7944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 7979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 7987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7957, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7965, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "objects",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "spawnpoint",
          type = "",
          shape = "rectangle",
          x = 923,
          y = 55,
          width = 25,
          height = 27,
          visible = true,
          properties = {
            [""] = ""
          }
        },
        {
          name = "spawnpoint",
          type = "",
          shape = "rectangle",
          x = 926,
          y = 945,
          width = 25,
          height = 27,
          visible = true,
          properties = {
            [""] = ""
          }
        },
        {
          name = "spawnpoint",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 931,
          width = 25,
          height = 27,
          visible = true,
          properties = {
            [""] = ""
          }
        },
        {
          name = "spawnpoint",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 65,
          width = 25,
          height = 27,
          visible = true,
          properties = {
            [""] = ""
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 390,
          y = 612,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "3"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 103,
          y = 901,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "1"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 678,
          y = 838,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "2"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 870,
          y = 419,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "2"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 615,
          y = 419,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "4"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 295,
          y = 291,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "3"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 102,
          y = 133,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "2"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 838,
          y = 102,
          width = 49,
          height = 57,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "1"
          }
        }
      }
    }
  }
}
