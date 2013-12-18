class Post < ActiveRecord::Base
  def category
    Category.find_by_id(category_id)
  end
end
