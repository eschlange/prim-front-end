# Model for the users. The default devise user model has been modified.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class User < ActiveRecord::Base
  # Role ID constants
  ADMIN_ID = 1
  CONTENT_MANAGER_ID = 2
  PARTICIPANT_ID = 3

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  has_one :role
  after_initialize :init

  def admin?
    role.id == ADMIN_ID
  end

  def content_manager?
    role.id == CONTENT_MANAGER_ID
  end

  def participant?
    role.id == PARTICIPANT_ID
  end

  def init
    self.role_id = PARTICIPANT_ID
  end

  def password_required?
    super if confirmed?
  end

  def password_match?
    errors[:password] <<
      "can't be blank" if password.blank?
    errors[:password_confirmation] <<
      "can't be blank" if password_confirmation.blank?
    errors[:password_confirmation] <<
      "does not match password" if password != password_confirmation
    password == password_confirmation && !password.blank?
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :future_contact)
  end
end
