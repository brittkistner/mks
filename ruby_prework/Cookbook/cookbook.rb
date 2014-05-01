class Cookbook
	def initialize(title)
		@title = title
		@recipes = [] #the receipe collection starts out empty, so the array is empty
	end

	def title
		@title
	end

	def title=(new_title)
		@title = new_title
	end

	def recipes           #getter method for recipes parameter.  We could have also used attr_writer :receipes here
		@recipes 
	end

	def add_recipe(recipe)
		@recipes.push(recipe)
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles #Iterate through the recipe elements in the @recipes array.  Remember, the object has an object title defined.  You can use this to "puts" just one method of the object.
		@recipes.each {|recipe| puts "#{recipe.title}"}
	end

	def recipe_ingredients #See comment for recipe_titles for explaination
		@recipes.each {|recipe| puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"}
	end	

	
	def print_cookbook
		puts "Table of Contents"
		puts "Recipes to make you a master of Mexican cooking!"
		puts
		@recipes.each {|recipe| puts "#{recipe.title}"}
		puts "/////////////////////////////////////////////////"

		@recipes.each do |recipe|
			puts "#{recipe.title}"

			puts

			puts "Ingredients"
			count = 1
			recipe.ingredients.each do |x|
				puts "#{count}: #{x}"
				count += 1
			end

			puts

			puts "Steps"
			count = 1
			recipe.steps.each do |x|
			 	puts "#{count}: #{x}"
			 	count += 1
			end

			puts

			puts "#{recipe.calories}"
		end
	end

	def calorie_counter
		count = 0
		@recipes.each do |recipe| 
			count += recipe.calories.to_i
		end
		puts "If you ate everything from this book, you would consume #{count}"
	end

end

class Recipe
	attr_reader :title
	attr_writer :steps
	attr_accessor :ingredients
	attr_accessor :calories

	def initialize(title, ingredients, steps, calories)
		@title = title
		@ingredients = ingredients
		@steps = steps
		@calories = calories
	end

	# def title
	# 	@title
	# end

	def title=(new_title)
		@title = new_title
	end

	# def ingredients
	# 	@ingredients
	# end

	# def ingredients=(new_ingredients)
	# 	@ingredients = new_ingredients
	# end

	def steps
		@steps
	end

	# def steps=(new_steps)
	# 	@steps = new_steps
	# end

	def print_recipe #Method to print out each recipe title, ingredients, steps, and calories.  Will print out one recipe at a time.
		puts "We are making a #{title}"

		puts

		puts "Ingredients"
		count = 1
		@ingredients.each do |x|
			puts "#{count}: #{x}"
			count += 1
		end

		puts

		puts "Steps"
		count = 1
		@steps.each do |x|
			puts "#{count}: #{x}"
			count += 1
		end

		puts

		puts "#{calories}calories"
	end
end

