class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, presence: true
  ALL_COLORS = %w(black white yellow)
  validates :color, inclusion: { in: ALL_COLORS,
    message: "%(value) is not valid color" }
  def age
    dob = birth_date.split("-").reverse.map(&:to_i)
    now = Time.now.utc.to_date
    now.year - dob[0] - ((now.month > dob[1] ||
       (now.month == dob[1] && now.day >= dob[2])) ? 0 : 1)
  end
  
end


