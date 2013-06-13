# == Schema Information
#
# Table name: domains
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Domain < ActiveRecord::Base
  attr_accessible :code, :description, :name
  has_many :procedures
end
