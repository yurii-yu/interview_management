# -*- coding: utf-8 -*-
class ReportMailer < ActionMailer::Base
  default from: '"Yurii" <' + ENV['OCW_NAME'] + ">"

  def send_report(report)
    @report = report
    #mail(to: ENV['RESUME_HR'],  subject: "面试反馈 #{@report.name} #{@report.position}")
    mail(to: Participator.all.map{|x| x.email}.join(","),  subject: "面试反馈 #{@report.name} #{@report.position}")
  end

end
