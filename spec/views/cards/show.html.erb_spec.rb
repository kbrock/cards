require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :page_x => "Page X",
      :page_y => "Page Y",
      :num_box_x => "Num Box X",
      :num_box_y => "Num Box Y",
      :gutter_tx => "Gutter Tx",
      :gutter_ty => "Gutter Ty",
      :gutter_bx => "Gutter Bx",
      :gutter_by => "Gutter By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Page X/)
    expect(rendered).to match(/Page Y/)
    expect(rendered).to match(/Num Box X/)
    expect(rendered).to match(/Num Box Y/)
    expect(rendered).to match(/Gutter Tx/)
    expect(rendered).to match(/Gutter Ty/)
    expect(rendered).to match(/Gutter Bx/)
    expect(rendered).to match(/Gutter By/)
  end
end
