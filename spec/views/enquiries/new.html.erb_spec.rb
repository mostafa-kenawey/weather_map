require 'rails_helper'

RSpec.describe "enquiries/new", type: :view do
  before(:each) do
    assign(:enquiry, FactoryGirl.create(:enquiry))
  end

  it "renders new enquiry form" do
    render
    assert_select "form[action=?][method=?]", enquiries_path, "post" do
      assert_select "input[name=?]", "enquiry[country]"
      assert_select "input[name=?]", "enquiry[city]"
    end
  end
end
