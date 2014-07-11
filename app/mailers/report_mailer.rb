class ReportMailer < ActionMailer::Base
  default from: "yurii.yu@oceanwing.com"

  def welcome_email(report)
    @report = report
    #mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: 'hr@oceanwing.com', subject: "面试反馈 #{@report.name} #{@report.position}")
  end

end
