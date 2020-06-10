require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
  
  def self.column.names
    DB[:conn].results_as_hars = true
    
    sql = "pragma table_info('#{table_name}')"
  end
  
end