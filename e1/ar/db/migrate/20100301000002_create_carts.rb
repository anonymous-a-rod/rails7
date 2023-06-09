#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
class CreateCarts < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :carts
  end
end
