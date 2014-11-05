class Report
  include Mongoid::Document

  ##Report Fields

  field :title, type: String
  field :body_text, type: String
  field :public_flag, type: Boolean
  field :report_date, type: Date


  ##Reration
  belongs_to  :user

  attr_accessible :title, :body_text, :user_id,
                :report_date, :public_flag

  def public_flag?
      public_flag == true
  end

end
