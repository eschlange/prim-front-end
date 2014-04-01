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
    self.role.id == ADMIN_ID
  end

  def contentManager?
    self.role.id == CONTENT_MANAGER_ID
  end

  def participant?
    self.role.id == PARTICIPANT_ID
  end

  def init
    self.role_id = PARTICIPANT_ID
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
