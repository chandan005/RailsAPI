class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  config.time_zone = 'Melbourne'
end
