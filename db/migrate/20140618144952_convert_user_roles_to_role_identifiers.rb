class ConvertUserRolesToRoleIdentifiers < ActiveRecord::Migration
  def change
    User.all.each do |user|
      if 'eric.schlange@northwestern.edu' == user.email
        user.role_identifier = 1
        user.save
      elsif 's.galvin@northwestern.edu' == user.email
        user.role_identifier = 2
        user.save
      end
    end
  end
end
