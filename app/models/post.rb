class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # accepts_nested_attributes_for :categories
  # accepts_nested_attributes_for :comments




  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end
  # def categories_attributes=(categories_hashes)
  #   categories_hashes.each do |index, category_attributes|
  #     if categories_attributes(:name).present?
  #       self.categories.find_or_create_by(name: category_attributes[:name])
  #         if !self.categories.include?(category)
  #           self.post_categories.build(:category => category)
  #         end
  #     end
  #   end
end
