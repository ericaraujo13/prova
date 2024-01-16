require 'rails_helper'

RSpec.describe "municipes/edit", type: :view do
  let(:municipe) {
    Municipe.create!(
      name: "MyString",
      email: "MyString",
      birthday: "MyString",
      phone: "MyString",
      photo: "MyString",
      status: 1
    )
  }

  before(:each) do
    assign(:municipe, municipe)
  end

  it "renders the edit municipe form" do
    render

    assert_select "form[action=?][method=?]", municipe_path(municipe), "post" do

      assert_select "input[name=?]", "municipe[name]"

      assert_select "input[name=?]", "municipe[email]"

      assert_select "input[name=?]", "municipe[birthday]"

      assert_select "input[name=?]", "municipe[phone]"

      assert_select "input[name=?]", "municipe[photo]"

      assert_select "input[name=?]", "municipe[status]"
    end
  end
end
