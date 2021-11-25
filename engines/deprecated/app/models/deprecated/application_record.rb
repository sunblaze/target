module Deprecated
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true

    connects_to database: { writing: :deprecated, reading: :deprecated }
  end
end
