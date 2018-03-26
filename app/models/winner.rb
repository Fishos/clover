class Winner < ApplicationRecord
  belongs_to :winable_product
  belongs_to :Ticket
end
