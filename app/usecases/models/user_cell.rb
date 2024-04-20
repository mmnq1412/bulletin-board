class Models::UserCell
  include ActiveModel::Model

  attr_accessor :id
  attr_accessor :code
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :final_education
  attr_accessor :self_introduction
end