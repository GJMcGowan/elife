# Grid class for datamapping
class Grid
  include DataMapper::Resource

  property :id, Serial
  property :row, String
  property :column, String
  property :value, String

  # has n, :peeps
end
