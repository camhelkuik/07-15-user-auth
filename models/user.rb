require_relative "database_class_methods.rb"
require_relative "database_instance_methods.rb"

class User
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :email, :password
  attr_reader :id
  
  def initialize(options ={})
    @id = options["id"]
    @email = options["email"]
    @password = options["password"]
    
    @errors = {}
  end
  
  
  # Allows information that was changed in ruby to be saved to SQL.
  #
  # Returns self, an object.
  def save
    CONNECTION.execute("UPDATE users SET email = #{self.email}, password = #{self.password} WHERE id = #{self.id};")
     
     return self
  end
  
 
  
end