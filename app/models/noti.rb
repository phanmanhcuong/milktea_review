class Noti < ApplicationRecord
  belongs_to :user

  enum state: [:unread, :read]
end
