class Contact < ApplicationRecord
  def friendly_time_created
    created_at.strftime("%e %b %Y %H:%M:%S%p")
  end

  def full_name
    return "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_code
    prefix = "+81"
    return prefix + phone_number
  end
end
