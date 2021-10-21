require 'rails_helper'

RSpec.describe "pages/show", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      body: "Body",
      book: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    expect(rendered).to match(//)
  end
end
