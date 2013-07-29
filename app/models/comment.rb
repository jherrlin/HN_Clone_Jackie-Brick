class Comment < ActiveRecord::Base
  attr_accessible :body, :posting, :user

  belongs_to :user
  belongs_to :posting, :class_name => "Article"
  belongs_to :posting, :class_name => "Comment"

  has_many :votes, :as => :posting

end
