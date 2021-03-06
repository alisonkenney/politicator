require 'rails_helper'

RSpec.describe "policies/show", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      :name => "Name",
      :left => "Left",
      :right => "Right"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Left/)
    expect(rendered).to match(/Right/)
  end
end
