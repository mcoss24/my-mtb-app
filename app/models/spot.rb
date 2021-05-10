# == Schema Information
#
# Table name: spots
#
#  id             :integer          not null, primary key
#  cross_country  :boolean
#  desert         :boolean
#  downhill       :boolean
#  east           :boolean
#  fall           :boolean
#  location       :string
#  medditerannean :boolean
#  mountain       :boolean
#  spring         :boolean
#  summer         :boolean
#  temperate      :boolean
#  west           :boolean
#  winter         :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Spot < ApplicationRecord
end
