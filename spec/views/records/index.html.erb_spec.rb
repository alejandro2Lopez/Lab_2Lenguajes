require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        version: "Version"
      ),
      Record.create!(
        version: "Version"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", text: "Version".to_s, count: 2
  end
end
