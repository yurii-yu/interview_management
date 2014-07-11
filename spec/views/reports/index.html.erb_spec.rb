require 'spec_helper'

describe "reports/index" do
  before(:each) do
    assign(:reports, [
      stub_model(Report,
        :name => "Name",
        :position => "Position",
        :detail => "MyText",
        :comments => "MyText",
        :evaluation => "Evaluation",
        :conclusion => "Conclusion",
        :resume => "Resume"
      ),
      stub_model(Report,
        :name => "Name",
        :position => "Position",
        :detail => "MyText",
        :comments => "MyText",
        :evaluation => "Evaluation",
        :conclusion => "Conclusion",
        :resume => "Resume"
      )
    ])
  end

  it "renders a list of reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Evaluation".to_s, :count => 2
    assert_select "tr>td", :text => "Conclusion".to_s, :count => 2
    assert_select "tr>td", :text => "Resume".to_s, :count => 2
  end
end
