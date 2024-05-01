class Recipe
  attr_accessor :title, :description, :ingredients, :instructions

  def initialize(title, description)
    @title = title
    @description = description
    @ingredients = []
    @instructions = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end

  def add_instruction(instruction)
    @instructions << instruction
  end

  def to_s
    "#{@title}: #{@description}"
  end
end

class RecipeSharingPlatform
  def initialize
    @recipes = []
  end

  def share_recipe(title, description)
    recipe = Recipe.new(title, description)
    @recipes << recipe
    puts "Recipe '#{title}' has been shared."
  end

  def add_ingredient(title, ingredient)
    recipe = @recipes.find { |recipe| recipe.title == title }
    if recipe
      recipe.add_ingredient(ingredient)
      puts "#{ingredient} has been added to the ingredients list of '#{title}'."
    else
      puts "Recipe '#{title}' not found."
    end
  end

  def add_instruction(title, instruction)
    recipe = @recipes.find { |recipe| recipe.title == title }
    if recipe
      recipe.add_instruction(instruction)
      puts "#{instruction} has been added to the instructions of '#{title}'."
    else
      puts "Recipe '#{title}' not found."
    end
  end
end

# Example usage
recipe_platform = RecipeSharingPlatform.new

recipe_platform.share_recipe("Pasta Carbonara", "Classic Italian pasta dish")
recipe_platform.share_recipe("Chocolate Cake", "Decadent dessert")

recipe_platform.add_ingredient("Pasta Carbonara", "Spaghetti")
recipe_platform.add_instruction("Pasta Carbonara", "Cook spaghetti until al dente")

recipe_platform.add_ingredient("Chocolate Cake", "Flour")
recipe_platform.add_instruction("Chocolate Cake", "Preheat oven to 350°F")

puts "Recipes available:"
recipe_platform.view_recipes
