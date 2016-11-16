class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_signup_mail
  
    def send_signup_mail
      UserMailer.signup_mail(self).deliver
    end       
end
