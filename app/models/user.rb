# Model for the users. The default devise user model has been modified.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class User < ActiveRecord::Base
  include Role
  has_many :user_consents

  attr_accessor :participant, :status

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  def password_required?
    super if confirmed?
  end

  def password_match?
    errors[:password] <<
      'can\'t be blank' if password.blank?
    errors[:password_confirmation] <<
      'can\'t be blank' if password_confirmation.blank?
    errors[:password_confirmation] <<
      'does not match password' if password != password_confirmation
    password == password_confirmation && !password.blank?
  end

  def role_identifier_enum
    [ ['Super User', '1'], ['Admin', '2'], ['Content Manager', '3'], ['Participant', '4'] ]
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :phone,
      :email,
      :future_contact,
      :role_identifier,
      :site_id)
  end
end
