class User
	include Mongoid::Document
	include ActiveModel::SecurePassword

	has_secure_password

  	field :username, type: String
  	field :password_digest, type: String
  	field :is_admin, type: Boolean
end
