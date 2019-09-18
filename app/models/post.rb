class Post < ActiveRecord::Base
  has_many :post_categories
  #methods added
  #post_categories
  #post_categories<<
  #post_categories.delete
  #post_category_ids=ids
  has_many :categories, through: :post_categories #add methods
  #category_ids = ids
  has_many :comments
  has_many :users, through: :comments
  #accepts_nested_attributes_for :categories

  # customize the way our category is created
  #creating a new category if it doesn't already exist with the current name
  def categories_attributes=(categories_hashes) #writer
    #{"0"=>{"name"=>"new catogory 1"}, "1"=>{"name"=>"new catogory 2"}}
    #raise category_hashes.inspect
    #How would I create a catogory for each of the hashes inside categories_hashes
    categories_hashes.values.each do |category_attributes|

      #DO NOT CREATE A CATEGORY IF IT DOESN'T HAVE NAME
      #if category_attributes[:name].present?

        #create a new catogory if this post doesn't already have this catogory
        #find or create the catogory regardless of whether this post has it.
        category = Category.find_or_create_by(category_attributes)
        #ALSO DON'T DUPLICATE POST IF IT ALREADY HAVE IT.
        #How do i check if this post has this category already?
        if !self.categories.include?(category)
          #this is ineffecient because it will pull all catogories
          #self.categories << category 47:55
          self.post_categories.build(:category => category)

          #I need to create a catogory that is already associated with this post
          # and i need to make sure that this category already doesn't exist by name.
        end
      #end
    end

  end

end


# category_hashes.values.each do |category_hashes| #hash
#   category = Category.find_or_create_by(category_attribute)
#   #returns an array of Category objects
#   self.categories << category  #add our newly found or created Category object to the array
#
# end
