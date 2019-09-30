class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :user, presence: true

  accepts_nested_attributes_for :user, reject_if: ->(user_attr){user_attr[:username].blank?}

  def username
    self.user.username if not self.user.nil?
  end

end
