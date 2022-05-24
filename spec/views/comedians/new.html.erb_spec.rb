require 'rails_helper'

RSpec.describe "comedians/new", type: :view do
  before(:each) do
    assign(:comedian, Comedian.new(
      first_name: "MyString",
      last_name: "MyString",
      id_number: 1
    ))
  end

  it "renders new comedian form" do
    render

    assert_select "form[action=?][method=?]", comedians_path, "post" do

      assert_select "input[name=?]", "comedian[first_name]"

      assert_select "input[name=?]", "comedian[last_name]"

      assert_select "input[name=?]", "comedian[id_number]"
    end
  end
end
