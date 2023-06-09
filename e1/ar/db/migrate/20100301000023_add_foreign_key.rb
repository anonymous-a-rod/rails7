#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
require 'migration_helpers'

class AddForeignKey < ActiveRecord::Migration
  extend MigrationHelpers

  def self.up
    foreign_key :line_items, :product_id, :products
    foreign_key :line_items, :order_id,   :orders
  end

  def self.down
  end
end
