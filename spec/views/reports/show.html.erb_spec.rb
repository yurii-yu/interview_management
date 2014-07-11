require 'spec_helper'

describe "reports/show" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :name => "Name",
      :position => "Position",
      :detail => "MyText",
      :comments => "MyText",
      :evaluation => "Evaluation",
      :conclusion => "Conclusion",
      :resume => "Resume"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Position/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Evaluation/)
    rendered.should match(/Conclusion/)
    rendered.should match(/Resume/)
  end
end
