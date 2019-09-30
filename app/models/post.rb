class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def saved_comments
    self.comments.reject{ |c| !c.persisted?}
  end

  def commentors
    self.comments.map { |comment| comment.user }.uniq.reject { |user| user.username.nil? }
  end


end
