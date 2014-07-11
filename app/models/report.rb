class Report < ActiveRecord::Base
	validates :name, presence: true
	validates :position, presence: true
	validates :interview_date, presence: true
	validates :detail, presence: true
	validates :comments, presence: true
	validates :evaluation, presence: true
	validates :conclusion, presence: true
	validates :resume, presence: true

	mount_uploader :resume, ResumeUploaderUploader
end
