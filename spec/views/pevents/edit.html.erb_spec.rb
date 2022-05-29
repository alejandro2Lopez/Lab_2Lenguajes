require 'rails_helper'

RSpec.describe "pevents/edit", type: :view do
  before(:each) do
    @pevent = assign(:pevent, Pevent.create!(
      type: ""
    ))
  end

  it "renders the edit pevent form" do
    render

    assert_select "form[action=?][method=?]", pevent_path(@pevent), "post" do

      assert_select "input[name=?]", "pevent[type]"
    end
  end
end
