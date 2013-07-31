return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 40,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  properties = {},
  tilesets = {
    {
      name = "Desert",
      firstgid = 1,
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
      firstgid = 13,
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
      firstgid = 25,
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
      firstgid = 37,
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
      firstgid = 49,
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
      firstgid = 97,
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
      firstgid = 1121,
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
      firstgid = 2145,
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
      firstgid = 3169,
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
      width = 40,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "impassable",
      x = 0,
      y = 0,
      width = 40,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 13, 13, 13, 20, 20, 20, 20, 20, 20, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 0, 0, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 0, 0, 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 0, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 83, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        21, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 83, 83, 83, 83, 83, 83, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 0, 0, 0, 0, 0, 13, 13, 13, 0, 0, 0, 0, 0, 83, 83, 83, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 0, 0, 0, 0, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        20, 20, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        15, 20, 20, 20, 20, 20, 13, 13, 13, 0, 2545, 2546, 2547, 2545, 2546, 2547, 2545, 2546, 2547, 0, 13, 13, 13, 13, 13, 13, 13, 20, 20, 20, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13,
        15, 15, 20, 20, 20, 20, 20, 20, 20, 17, 2587, 2587, 2587, 2587, 2587, 2587, 2587, 2587, 2587, 17, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 13, 13, 13, 13, 13, 13, 13, 13
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
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 326,
          y = 177,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "1"
          }
        },
        {
          name = "Ressource",
          type = "",
          shape = "rectangle",
          x = 374,
          y = 296,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "ressource"
          }
        },
        {
          name = "City",
          type = "",
          shape = "rectangle",
          x = 103,
          y = 509,
          width = 64,
          height = 64,
          visible = true,
          properties = {
            ["_the"] = "city1"
          }
        },
        {
          name = "Spawnpoint",
          type = "",
          shape = "rectangle",
          x = 451,
          y = 87,
          width = 22,
          height = 18,
          visible = true,
          properties = {
            ["_the"] = "spawnpoint1"
          }
        },
        {
          name = "Spawnpoint",
          type = "",
          shape = "rectangle",
          x = 566,
          y = 83,
          width = 22,
          height = 18,
          visible = true,
          properties = {
            ["_the"] = "spawnpoint2"
          }
        },
        {
          name = "City",
          type = "",
          shape = "rectangle",
          x = 464,
          y = 785,
          width = 64,
          height = 64,
          visible = true,
          properties = {
            ["_the"] = "city1"
          }
        },
        {
          name = "City",
          type = "",
          shape = "rectangle",
          x = 860,
          y = 503,
          width = 64,
          height = 64,
          visible = true,
          properties = {
            ["_the"] = "city1"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 305,
          width = 32,
          height = 32,
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
          x = 48,
          y = 697,
          width = 32,
          height = 32,
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
          x = 73,
          y = 371,
          width = 32,
          height = 32,
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
          x = 227,
          y = 891,
          width = 32,
          height = 32,
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
          x = 757,
          y = 724,
          width = 32,
          height = 32,
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
          x = 697,
          y = 911,
          width = 32,
          height = 32,
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
          x = 857,
          y = 339,
          width = 32,
          height = 32,
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
          x = 924,
          y = 627,
          width = 32,
          height = 32,
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
          x = 632,
          y = 141,
          width = 32,
          height = 32,
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
          x = 711,
          y = 248,
          width = 32,
          height = 32,
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
          x = 472,
          y = 373,
          width = 32,
          height = 32,
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
          x = 588,
          y = 440,
          width = 32,
          height = 32,
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
          x = 409,
          y = 523,
          width = 32,
          height = 32,
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
          x = 576,
          y = 563,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "camp",
            ["level"] = "4"
          }
        },
        {
          name = "Ressource",
          type = "",
          shape = "rectangle",
          x = 273,
          y = 467,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "ressource"
          }
        },
        {
          name = "Ressource",
          type = "",
          shape = "rectangle",
          x = 695,
          y = 379,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "ressource"
          }
        },
        {
          name = "Ressource",
          type = "",
          shape = "rectangle",
          x = 303,
          y = 672,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "ressource"
          }
        },
        {
          name = "Ressource",
          type = "",
          shape = "rectangle",
          x = 613,
          y = 689,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "ressource"
          }
        },
        {
          name = "Ressource",
          type = "",
          shape = "rectangle",
          x = 733,
          y = 560,
          width = 32,
          height = 32,
          visible = true,
          properties = {
            ["_the"] = "ressource"
          }
        },
        {
          name = "Camp",
          type = "",
          shape = "rectangle",
          x = 584,
          y = 283,
          width = 32,
          height = 32,
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
          x = 360,
          y = 825,
          width = 32,
          height = 32,
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
          x = 621,
          y = 801,
          width = 32,
          height = 32,
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
          x = 252,
          y = 580,
          width = 32,
          height = 32,
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
          x = 705,
          y = 467,
          width = 32,
          height = 32,
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
          x = 439,
          y = 184,
          width = 32,
          height = 32,
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
          x = 563,
          y = 181,
          width = 32,
          height = 32,
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
