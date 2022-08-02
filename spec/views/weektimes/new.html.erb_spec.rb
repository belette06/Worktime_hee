require 'rails_helper'

RSpec.describe "weektimes/new", type: :view do
  before(:each) do
    assign(:weektime, Weektime.new(
      user: nil,
      alltime: 1.5,
      accord: 1
    ))
  end

  it "renders new weektime form" do
    render

    assert_select "form[action=?][method=?]", weektimes_path, "post" do

      assert_select "input[name=?]", "weektime[user_id]"

      assert_select "input[name=?]", "weektime[alltime]"

      assert_select "input[name=?]", "weektime[accord]"
    end
  end
end
