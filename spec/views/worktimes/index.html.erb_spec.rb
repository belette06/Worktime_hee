require 'rails_helper'

RSpec.describe "worktimes/index", type: :view do
  before(:each) do
    assign(:worktimes, [
      Worktime.create!(
        weektime: nil,
        accord: 2
      ),
      Worktime.create!(
        weektime: nil,
        accord: 2
      )
    ])
  end

  it "renders a list of worktimes" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
