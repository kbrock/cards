require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :page_x => "Page X",
        :page_y => "Page Y",
        :num_box_x => "Num Box X",
        :num_box_y => "Num Box Y",
        :gutter_tx => "Gutter Tx",
        :gutter_ty => "Gutter Ty",
        :gutter_bx => "Gutter Bx",
        :gutter_by => "Gutter By"
      ),
      Card.create!(
        :page_x => "Page X",
        :page_y => "Page Y",
        :num_box_x => "Num Box X",
        :num_box_y => "Num Box Y",
        :gutter_tx => "Gutter Tx",
        :gutter_ty => "Gutter Ty",
        :gutter_bx => "Gutter Bx",
        :gutter_by => "Gutter By"
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Page X".to_s, :count => 2
    assert_select "tr>td", :text => "Page Y".to_s, :count => 2
    assert_select "tr>td", :text => "Num Box X".to_s, :count => 2
    assert_select "tr>td", :text => "Num Box Y".to_s, :count => 2
    assert_select "tr>td", :text => "Gutter Tx".to_s, :count => 2
    assert_select "tr>td", :text => "Gutter Ty".to_s, :count => 2
    assert_select "tr>td", :text => "Gutter Bx".to_s, :count => 2
    assert_select "tr>td", :text => "Gutter By".to_s, :count => 2
  end
end
