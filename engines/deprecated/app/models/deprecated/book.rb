module Deprecated
  class Book < ApplicationRecord
    self.table_name = "books"
  end
end
