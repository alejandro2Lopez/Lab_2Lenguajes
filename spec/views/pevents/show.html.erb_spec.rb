require 'rails_helper'

RSpec.describe "pevents/show", type: :view do
  before(:each) do
    @pevent = assign(:pevent, Pevent.create!(
      type: "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
  end
end
