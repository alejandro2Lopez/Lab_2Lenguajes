require 'rails_helper'

RSpec.describe "comedians/index", type: :view do
  before(:each) do
    assign(:comedians, [
      Comedian.create!(
        first_name: "First Name",
        last_name: "Last Name",
        id_number: 2
      ),
      Comedian.create!(
        first_name: "First Name",
        last_name: "Last Name",
        id_number: 2
      )
    ])
  end

  it "renders a list of comedians" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
