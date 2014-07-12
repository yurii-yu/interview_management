# -*- coding: utf-8 -*-
class ReportMailer < ActionMailer::Base

  def send_report(report, user)#, recipients)
    @report = report
    @user = user
    #@recipients = recipients
    @recipients = Participator.where("email <> '#{@user.email}'").select{|x| x.enabled}.map{|x| x.email}.<<@user.email
    mail(to: @recipients,
    from: "\"#{@user.username}\" <#{@user.email}>",
    subject: "面试反馈 #{@report.name} #{@report.position}").deliver
    #return @recipients.join(", ") 
  end

end
