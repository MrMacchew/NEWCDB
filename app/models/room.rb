class Room < ActiveRecord::Base
	has_many :computers
  has_many :controllers
	has_many :doccams
  has_many :interactivekits
	has_many :mediaplayers
	has_many :micreceivers
	has_many :microphones
	has_many :panels
	has_many :projectors
	has_many :tvs

end
