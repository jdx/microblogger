class Category < ActiveRecord::Base
  def posts
    Post.where(category_id: id)
  end
end
