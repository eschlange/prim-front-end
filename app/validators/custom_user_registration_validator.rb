class CustomUserRegistrationValidator < ActiveModel::Validator
  def validate(record)
    puts record.inspect
    # example
    # if record.first_name == "Evil"
    #  record.errors[:base] << "This person is evil"
    # end
  end
end