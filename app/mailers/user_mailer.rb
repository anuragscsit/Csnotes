class UserMailer < ApplicationMailer

	def signup_mail(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to CSNotes.")
  end
  # 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
end
