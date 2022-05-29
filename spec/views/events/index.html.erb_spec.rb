require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        type: "Type"
      ),
      Event.create!(
        type: "Type"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
  end
end
