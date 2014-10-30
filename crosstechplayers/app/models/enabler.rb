class Enabler
  include Mongoid::Document
  field :prefix, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :jobtitle, type: String
  field :org, type: String
  field :email, type: String
  field :altemail, type: String
  field :enabler_type, type: String
  field :mobiletel, type: String
  field :officetel, type: String
  field :address_street, type: String
  field :address_city, type: String
  field :address_state, type: String
  field :address_zip, type: String
  field :major_deals, type: String
  field :notes, type: String
end
