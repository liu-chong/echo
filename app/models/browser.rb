class Browser < Canvas
  field :version, type: Integer
  scope :recent, where(:version.gt => 3)
end
