class Content < ApplicationRecord
    validates :code, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
  end
  