# == Schema Information
#
# Table name: procedures
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  description :text
#  domain_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Procedure < ActiveRecord::Base
  attr_accessible :code, :description, :domain_id, :name, :domain

  belongs_to :domain, :foreign_key => "domain_id"
  has_many :activities
end
