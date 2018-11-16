class Coin < ApplicationRecord
	def self.total
		binding.pry
    # self.all.find_all { |recipe| recipe.recipe_hops.count == 1 && recipe.recipe_fermentables.count == 1 }
  end
end
