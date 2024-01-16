require 'rails_helper'

RSpec.describe "municipes/show", type: :view do
  before(:each) do
    assign(:municipe, Municipe.create!(
      name: "Name",
      email: "Email",
      birthday: "Birthday",
      phone: "Phone",
      photo: "Photo",
      status: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Birthday/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/2/)
  end
end
