# -*- coding: utf-8 -*-
class ReportMailer < ActionMailer::Base
  default from: '"Yurii" <' + ENV['OCW_NAME'] + ">"

  def send_report(report, user)
    @report = report
    @user = user
    mail(to: (Participator.all.select{|x| x.email != @user.email}.map{|x| x.email}.<<@user.email).join(","), 
    from: "\"#{@user.username}\" <#{@user.email}>",
    subject: "面试反馈 #{@report.name} #{@report.position}")
  end

end
