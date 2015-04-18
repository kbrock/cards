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
  # include ActiveModel::AttributeMethods

  # attr_accessor :page_x,    :page_y
  # attr_accessor :num_box_x, :num_box_y
  # attr_accessor :box_x,     :box_y
  # attr_accessor :gutter_x,  :gutter_y
end
