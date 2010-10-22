class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

field :name
validates_presence_of :name
validates_uniqueness_of :name, :email, :case_sensitive => false
attr_accessible :name, :email, :password, :password_confirmation
#filter_parameter_logging :password, :password_confirmation
#config.filter_parameters += [:password, :password_confirmation]
end
