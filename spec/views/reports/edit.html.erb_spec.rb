require 'spec_helper'

describe "reports/edit" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :name => "MyString",
      :position => "MyString",
      :detail => "MyText",
      :comments => "MyText",
      :evaluation => "MyString",
      :conclusion => "MyString",
      :resume => "MyString"
    ))
  end

  it "renders the edit report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", report_path(@report), "post" do
      assert_select "input#report_name[name=?]", "report[name]"
      assert_select "input#report_position[name=?]", "report[position]"
      assert_select "textarea#report_detail[name=?]", "report[detail]"
      assert_select "textarea#report_comments[name=?]", "report[comments]"
      assert_select "input#report_evaluation[name=?]", "report[evaluation]"
      assert_select "input#report_conclusion[name=?]", "report[conclusion]"
      assert_select "input#report_resume[name=?]", "report[resume]"
    end
  end
end
