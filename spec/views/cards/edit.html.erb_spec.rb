require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :page_x => "MyString",
      :page_y => "MyString",
      :num_box_x => "MyString",
      :num_box_y => "MyString",
      :gutter_tx => "MyString",
      :gutter_ty => "MyString",
      :gutter_bx => "MyString",
      :gutter_by => "MyString"
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input#card_page_x[name=?]", "card[page_x]"

      assert_select "input#card_page_y[name=?]", "card[page_y]"

      assert_select "input#card_num_box_x[name=?]", "card[num_box_x]"

      assert_select "input#card_num_box_y[name=?]", "card[num_box_y]"

      assert_select "input#card_gutter_tx[name=?]", "card[gutter_tx]"

      assert_select "input#card_gutter_ty[name=?]", "card[gutter_ty]"

      assert_select "input#card_gutter_bx[name=?]", "card[gutter_bx]"

      assert_select "input#card_gutter_by[name=?]", "card[gutter_by]"
    end
  end
end
