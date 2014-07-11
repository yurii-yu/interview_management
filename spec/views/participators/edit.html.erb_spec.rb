require 'spec_helper'

describe "participators/edit" do
  before(:each) do
    @participator = assign(:participator, stub_model(Participator,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit participator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", participator_path(@participator), "post" do
      assert_select "input#participator_name[name=?]", "participator[name]"
      assert_select "input#participator_email[name=?]", "participator[email]"
    end
  end
end
