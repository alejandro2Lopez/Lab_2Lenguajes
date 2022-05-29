require 'rails_helper'

RSpec.describe "contracts/index", type: :view do
  before(:each) do
    assign(:contracts, [
      Contract.create!(
        locate: "Locate"
      ),
      Contract.create!(
        locate: "Locate"
      )
    ])
  end

  it "renders a list of contracts" do
    render
    assert_select "tr>td", text: "Locate".to_s, count: 2
  end
end
