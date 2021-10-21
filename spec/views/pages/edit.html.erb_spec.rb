require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      body: "MyString",
      book: nil
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input[name=?]", "page[body]"

      assert_select "input[name=?]", "page[book_id]"
    end
  end
end
