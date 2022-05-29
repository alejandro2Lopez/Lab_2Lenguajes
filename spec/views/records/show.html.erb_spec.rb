require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      version: "Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Version/)
  end
end
