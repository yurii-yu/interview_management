# -*- coding: utf-8 -*-
class ReportMailer < ActionMailer::Base
  #default from: 'peter.liu@oceanwing.com'
  default from: '"Yurii" <' + ENV['OCW_NAME'] + ">"

  def send_report(report)
    @report = report
    mail(to: ENV['RESUME_HR'],  subject: "面试反馈 #{@report.name} #{@report.position}")
  end

end
