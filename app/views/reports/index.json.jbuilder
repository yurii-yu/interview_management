json.array!(@reports) do |report|
  json.extract! report, :id, :name, :position, :interview_date, :detail, :comments, :evaluation, :conclusion, :resume
  json.url report_url(report, format: :json)
end
