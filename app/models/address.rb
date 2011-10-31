# encoding: utf-8
class Address
  include Mongoid::Document

  field :extra, type: String
  field :city, type: String
  field :country, type: String
  field :postcode, type: String
  field :state, type: String
  field :street, type: String

  embedded_in :person
end
