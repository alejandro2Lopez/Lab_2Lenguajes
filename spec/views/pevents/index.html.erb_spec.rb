require 'rails_helper'

RSpec.describe "pevents/index", type: :view do
  before(:each) do
    assign(:pevents, [
      Pevent.create!(
        type: "Type"
      ),
      Pevent.create!(
        type: "Type"
      )
    ])
  end

  it "renders a list of pevents" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
  end
end
