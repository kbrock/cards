#
# +---------+---X----+---------+
# |         .        .         |
# |  +----+ . +----+ . +----+  |
# |  | A1 | . | B1 | . | C1 |  |
# |  +----+ . +----+ . +----+  |
# +.........+........+.........+
# |  +----+ . +----+ . +----+  |
# Y  | A2 | . | B2 | . | C2 |  |
# |  +----+ . +----+ . +----+  |
# +.........+........+.........+
# |  +----+ . +----+ . +----+  |
# |  | A3 | . | B3 | . | C3 |  |
# |  +----+ . +----+ . +----+  |
# |         .        .         |
# +---------+--------+---------+

class Card < ActiveRecord::Base

  validates :name, :page_x, :page_y, :num_box_x, :num_box_y, presence: true

  def width
    page_x * (extra_x ? 2 : 1)
  end

  def height
    page_y * (extra_y ? 2 : 1)
  end

  def box_x
    # page - left - right - middle gutters
    super || @box_x ||= (
      page_x -
        (gutter_l||gutter_x) -
        (gutter_r||gutter_l||gutter_x) -
        gutter_x * (num_box_x-1)
    ) / num_box_x
  end

  def box_y
    super || @box_y ||= (
      page_y -
        (gutter_t||gutter_y) -
        (gutter_b||gutter_t||gutter_y) -
        gutter_y * (num_box_y-1)
    ) / num_box_y
  end

  def boxes
    b = num_box_y.to_i.times.flat_map do |yi|
      num_box_x.to_i.times.map do |xi|
        x = (gutter_l||gutter_x) + xi * (box_x + gutter_x)
        y = (gutter_t||gutter_y) + yi * (box_y + gutter_y)
        Box.new(x: x, y: y, width: box_x, height: box_y)
      end
    end
  end
end
