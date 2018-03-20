class User < ApplicationRecord
  # Include default devise modules. Others available are:
#:timeoutable and :omniauthable
devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable #:zxcvbnable #:confirmable, :lockable
end
#eau - no comma can be used on last symbol or there is an error message
#below throws an error as shown:
# rb:7:in `<top (required)>': superclass mismatch for class User (TypeError)

# class User < ActiveRecord::Base
#   devise :zxcvbnable

  # Optionally add more weak words to check against:
  def weak_words
    ['mysitename', self.name, self.username]
  end
end

def send_devise_notification(notification, *args)
#     if Rails.env.production?
#       # No worker process in production to handle scheduled tasks
#       devise_mailer.send(notification, self, *args).deliver_now
#     else
      devise_mailer.send(notification, self, *args).deliver_later
#     end
#   end
end
