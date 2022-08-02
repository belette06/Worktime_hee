require 'rails_helper'

RSpec.describe "weektimes/index", type: :view do
  before(:each) do
    assign(:weektimes, [
      Weektime.create!(
        user: nil,
        alltime: 2.5,
        accord: 3
      ),
      Weektime.create!(
        user: nil,
        alltime: 2.5,
        accord: 3
      )
    ])
  end

  it "renders a list of weektimes" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
