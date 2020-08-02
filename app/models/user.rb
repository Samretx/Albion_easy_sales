class User < ApplicationRecord

  has_and_belongs_to_many :events
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  def giveout(user)
    if user.money > 0
      user.money = 0
      save!
      user.save!
    else
      nil
    end
  end

end
