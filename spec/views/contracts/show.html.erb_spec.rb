require 'rails_helper'

RSpec.describe "contracts/show", type: :view do
  before(:each) do
    @contract = assign(:contract, Contract.create!(
      locate: "Locate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Locate/)
  end
end
