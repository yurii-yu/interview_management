require 'spec_helper'

describe "participators/new" do
  before(:each) do
    assign(:participator, stub_model(Participator,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new participator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", participators_path, "post" do
      assert_select "input#participator_name[name=?]", "participator[name]"
      assert_select "input#participator_email[name=?]", "participator[email]"
    end
  end
end
