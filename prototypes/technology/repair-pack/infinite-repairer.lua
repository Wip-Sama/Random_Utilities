data:extend({

	{
		type = "technology",
		name = "RU-Infinite-Repairer",
		hidden = "true",
		icons = {{icon = "__base__/graphics/icons/repair-pack.png", tint ={r=80, g=80, b=80}}},
		icon_size = 64,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "RU-Infinite-Repairer"
		  },
		},
		prerequisites = {"automobilism"},
		unit =
		{
		  count = 500,
		  ingredients =
		  {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
		  },
		  time = 30
		},
		order = "e-c"
	}  
	})