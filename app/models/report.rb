class Report
  include Mongoid::Document

  ##Report Fields
  #field :id, type: Integer
  field :title, type: String
  field :body_text, type: String

  ##Reration
  #embedded_in  :user

end
