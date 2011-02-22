class AddBirthDateToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :birth_date, :datetime

    User.all.each do |user|
      user.birth_date = Date.today
      user.save!
    end
  end

  def self.down
    remove_column :users, :birth_date
  end
end
