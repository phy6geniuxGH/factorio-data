if game.isdemo() then
  return
end

for index, force in pairs(game.forces) do
  force.resettechnologies()
  force.resetrecipes()
  if force.technologies["explosives"].researched then
    force.recipes["explosives"].enabled = true
  end
  if force.technologies["advanced-oil-processing"].researched then
    force.recipes["heavy-oil-cracking"].enabled = true
    force.recipes["light-oil-cracking"].enabled = true
  end
  if force.technologies["fluid-handling"].researched or
     force.technologies["advanced-oil-processing"].researched then
    force.technologies["oil-processing"].researched = true
  end
end

game.regenerateentity({
                        "brown-fluff",
                        "brown-fluff-dry",
                        "garballo",
                        "garballo-mini-dry",
                        "green-bush-mini",
                        "green-hairy-grass",
                        "green-carpet-grass",
                        "green-small-grass",
                        "root-A",
                        "root-B"
                      })
