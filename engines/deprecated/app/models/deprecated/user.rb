module Deprecated
  class User < ApplicationRecord
    self.table_name = "users"
  end
end
