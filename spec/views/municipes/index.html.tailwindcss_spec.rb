require 'rails_helper'

RSpec.describe "municipes/index", type: :view do
  before(:each) do
    assign(:municipes, [
      Municipe.create!(
        name: "Name",
        email: "Email",
        birthday: "Birthday",
        phone: "Phone",
        photo: "Photo",
        status: 2
      ),
      Municipe.create!(
        name: "Name",
        email: "Email",
        birthday: "Birthday",
        phone: "Phone",
        photo: "Photo",
        status: 2
      )
    ])
  end

  it "renders a list of municipes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Birthday".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Photo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
