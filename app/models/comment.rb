class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def comments_attributes=(comment_attributes)
  #   comment_attributes.values.each do |comment_attribute|
  #     comment = Commenty.find_or_create_by(:user)
  #     @user.comments << comment
  #   end
  # end
end
