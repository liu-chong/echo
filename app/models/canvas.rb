class Canvas
  include Mongoid::Document
  field :name, type: String
  embeds_many :shapes
end
