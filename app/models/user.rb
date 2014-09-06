# Model for the users. The default devise user model has been modified.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class User < ActiveRecord::Base
  include Role
  has_many :user_consents
  has_one :user_screening_flag

  attr_accessor :participant, :status, :site_id

  validates :first_name, presence: true, allow_blank: false, allow_nil: false
  validates :last_name, presence: true, allow_blank: false, allow_nil: false
  validate :phone_format_validator

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

  def phone_format_validator
    if self.phone
      number = self.phone.tr('^0-9','' )
      if number.length < 10 || number.length > 11
        errors.add(:phone, "Phone number is not valid. Please include area code and seven digit number: (xxx-xxx-xxxx)")
      end
    end
  end

end
