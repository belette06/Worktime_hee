require 'rails_helper'

RSpec.describe "weektimes/show", type: :view do
  before(:each) do
    @weektime = assign(:weektime, Weektime.create!(
      user: nil,
      alltime: 2.5,
      accord: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
