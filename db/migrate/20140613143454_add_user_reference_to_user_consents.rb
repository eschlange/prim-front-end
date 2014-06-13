class AddUserReferenceToUserConsents < ActiveRecord::Migration
  def change
    add_reference :user_consents, :user, index: true
  end
end
