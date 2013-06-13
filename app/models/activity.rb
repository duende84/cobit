# == Schema Information
#
# Table name: activities
#
#  id           :integer          not null, primary key
#  code         :string(255)
#  name         :string(255)
#  description  :text
#  procedure_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Activity < ActiveRecord::Base
  attr_accessible :code, :description, :name, :procedure_id, :procedure

  belongs_to :procedure, :foreign_key => "procedure_id"
end
