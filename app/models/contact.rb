class Contact < ActiveRecord::Base
  acts_as_content_block

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :phone_number
  validates_presence_of :title
  validates_presence_of :message
end