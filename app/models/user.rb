class User < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end

class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :boards, dependent: :destroy

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
end
