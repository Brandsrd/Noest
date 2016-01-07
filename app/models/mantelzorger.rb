class Mantelzorger < ActiveRecord::Base
#associations
  belongs_to :senior
  has_many :seniors, through: :appointments

#validations
validates :voornaam, presence: true, length: { minimum: 2 }
validates :achternaam, presence: true, length: { minimum: 3 }
validates :email, presence: true, uniqueness: true

# regex email validation later toevoegen in alle modellen?
# ,format: { with: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i }

end
