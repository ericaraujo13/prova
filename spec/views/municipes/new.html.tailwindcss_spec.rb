require 'rails_helper'

RSpec.describe "municipes/new", type: :view do
  before(:each) do
    assign(:municipe, Municipe.new(
      name: "MyString",
      email: "MyString",
      birthday: "MyString",
      phone: "MyString",
      photo: "MyString",
      status: 1
    ))
  end

  it "renders new municipe form" do
    render

    assert_select "form[action=?][method=?]", municipes_path, "post" do

      assert_select "input[name=?]", "municipe[name]"

      assert_select "input[name=?]", "municipe[email]"

      assert_select "input[name=?]", "municipe[birthday]"

      assert_select "input[name=?]", "municipe[phone]"

      assert_select "input[name=?]", "municipe[photo]"

      assert_select "input[name=?]", "municipe[status]"
    end
  end
end
