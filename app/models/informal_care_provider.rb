class InformalCareProvider < ActiveRecord::Base

#associations
belongs_to :senior
# has_many :seniors, through: :appointments

#validations
validates :first_name, presence: true, length: { minimum: 2 }
validates :last_name, presence: true, length: { minimum: 3 }
validates :email, presence: true, uniqueness: true

# regex email validation later toevoegen in alle modellen?
# ,format: { with: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i }

def to_s
end


end
