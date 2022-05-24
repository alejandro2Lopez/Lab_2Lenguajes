require 'rails_helper'

RSpec.describe "comedians/edit", type: :view do
  before(:each) do
    @comedian = assign(:comedian, Comedian.create!(
      first_name: "MyString",
      last_name: "MyString",
      id_number: 1
    ))
  end

  it "renders the edit comedian form" do
    render

    assert_select "form[action=?][method=?]", comedian_path(@comedian), "post" do

      assert_select "input[name=?]", "comedian[first_name]"

      assert_select "input[name=?]", "comedian[last_name]"

      assert_select "input[name=?]", "comedian[id_number]"
    end
  end
end
