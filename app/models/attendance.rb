class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user

  after_create :confirmation_send

  def confirmation_send
    AttendanceMailer.confirmation_email(self.event,self.user).deliver_now
  end
end
