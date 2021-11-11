# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  address      :string
#  name         :string
#  neighborhood :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Venue < ApplicationRecord

  def comments
    my_id = self.id
    matching_comments = Comment.where({ :venue_id => my_id })
    return matching_comments
  end

  #belongs_to(:commenter, { :class_name => "User", :foreign_key => "author_id"})

end
