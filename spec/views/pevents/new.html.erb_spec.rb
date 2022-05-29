require 'rails_helper'

RSpec.describe "pevents/new", type: :view do
  before(:each) do
    assign(:pevent, Pevent.new(
      type: ""
    ))
  end

  it "renders new pevent form" do
    render

    assert_select "form[action=?][method=?]", pevents_path, "post" do

      assert_select "input[name=?]", "pevent[type]"
    end
  end
end
