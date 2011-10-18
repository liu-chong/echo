class Person
  include Mongoid::Document
  field :blood_alcohol_level, type: Float, default: 0.4
  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String
  field :last_drink, type: Time, default: ->{ 10.minutes.ago }
  field :wasted_at, type: Time, default: -> { new? ? 2.hours.ago : Time.now }
end
