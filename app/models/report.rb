class Report
  include Mongoid::Document
  field :title, type: String
  field :body_text, type: String
end
