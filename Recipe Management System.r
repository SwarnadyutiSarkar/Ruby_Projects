class Recipe
  attr_accessor :name, :ingredients, :instructions

  def initialize(name)
    @name = name
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
    recipe_str = "#{@name}:\nIngredients:\n"
    @ingredients.each { |ingredient| recipe_str += "- #{ingredient}\n" }
    recipe_str += "Instructions:\n"
    @instructions.each_with_index { |instruction, index| recipe_str += "#{index + 1}. #{instruction}\n" }
    recipe_str
  end
end

class RecipeManagementSystem
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
    puts "Recipe '#{recipe.name}' added to the system."
  end

  def view_recipes
    if @recipes.empty?
      puts "No recipes available."
    else
      @recipes.each { |recipe| puts recipe }
    end
  end
end

# Example usage
recipe_management_system = RecipeManagementSystem.new

recipe1 = Recipe.new("Pasta Carbonara")
recipe1.add_ingredient("Spaghetti")
recipe1.add_ingredient("Bacon")
recipe1.add_instruction("Cook spaghetti according to package instructions.")
recipe1.add_instruction("Fry bacon until crispy.")
recipe_management_system.add_recipe(recipe1)

recipe2 = Recipe.new("Chocolate Cake")
recipe2.add_ingredient("Flour")
recipe2.add_ingredient("Sugar")
recipe2.add_instruction("Preheat oven to 350°F.")
recipe2.add_instruction("Mix flour and sugar, then bake for 30 minutes.")
recipe_management_system.add_recipe(recipe2)

recipe_management_system.view_recipes
