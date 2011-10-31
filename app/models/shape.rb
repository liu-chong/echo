class Shape
  include Mongoid::Document
  field :x, type: Integer
  field :x, type: Integer
  embedded_in :canvas
end
