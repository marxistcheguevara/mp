class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  
  enum role: [:author, :super_doctor]
  has_many :activities
  belongs_to :city
  belongs_to :hospital
  
end
