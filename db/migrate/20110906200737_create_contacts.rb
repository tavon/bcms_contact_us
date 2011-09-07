class CreateContacts < ActiveRecord::Migration
  def self.up
    create_content_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :title
      t.text :message
      t.boolean :mailing_list
    end

    ContentType.create!(:name => "Contact", :group_name => "Contact Us")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Contact'])
    CategoryType.all(:conditions => ['name = ?', 'Contact']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :contact_versions
    drop_table :contacts
  end
end
