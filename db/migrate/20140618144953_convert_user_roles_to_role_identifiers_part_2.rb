class ConvertUserRolesToRoleIdentifiersPart2 < ActiveRecord::Migration
  def change
    User.all.each do |user|
      if 's-galvin@northwestern.edu' == user.email
        user.role_identifier = 2
        user.save
      end
    end
  end
end
