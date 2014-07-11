# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    name "MyString"
    position "MyString"
    interview_date "2014-07-10"
    detail "MyText"
    comments "MyText"
    evaluation "MyString"
    conclusion "MyString"
    resume "MyString"
  end
end
