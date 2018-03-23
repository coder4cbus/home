class User < ApplicationRecord
  # Include default devise modules. Others available are:
#:timeoutable and :omniauthable
devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable #:confirmable, :lockable
end
#eau - no comma can be used on last symbol or there is an error message

#def send_devise_notification(notification, *args)
#     if Rails.env.production?
#       # No worker process in production to handle scheduled tasks
#       devise_mailer.send(notification, self, *args).deliver_now
#     else
#       devise_mailer.send(notification, self, *args).deliver_later
#     end
#   end
# end

#EAU copied from previous version
# require 'bcrypt'

class User < ApplicationRecord
  # include BCrypt
  has_many :clients
  has_many :pets
  has_many :rdvms

  has_secure_password

# def password
#  @password ||= Password.new(password_digest)
# end
#
# def password=(new_password)
#  @password = Password.create(new_password)
#  self.password_digest = @password
# end



end
