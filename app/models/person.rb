class Person
  include Mongoid::Document
  include Mongoid::Paranoia
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  include Mongoid::Versioning

  field :age, type: Integer
  field :blood_alcohol_level, type: Float, default: 0.4
  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String
  field :last_drink, type: Time, default: -> { 10.minutes.ago }
  field :occupation, type: String
  field :wasted_at, type: Time, default: -> { new? ? 2.hours.ago : Time.now }

  embeds_many :addresses

  has_many :posts

  has_and_belongs_to_many :tags

  scope :rock_n_rolla, where(occupation: "Rockstar")
  scope :washed_up, where(:age.gt => 30)
  scope :over, ->(limit) { where(:age.gt => limit) }
end
