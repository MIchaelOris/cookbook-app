class Recipe < ApplicationRecord
has_many :category_recipes
  belongs_to :user 


  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    time_string = ""
    
    time_string += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
    time_string += ", " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{'Minute'.pluralize(minutes)}" if minutes > 0

    time_string
  end

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

  def as_json
    {
      id: id,
      title: title,
      chef: chef,
      ingredients: ingredients_list,
      directions: directions_list,
      created_at: friendly_created_at,
      prep_time: friendly_prep_time
      }
  end
end