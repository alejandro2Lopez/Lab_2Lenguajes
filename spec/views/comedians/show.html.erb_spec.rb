require 'rails_helper'

RSpec.describe "comedians/show", type: :view do
  before(:each) do
    @comedian = assign(:comedian, Comedian.create!(
      first_name: "First Name",
      last_name: "Last Name",
      id_number: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/2/)
  end
end
