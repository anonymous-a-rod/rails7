#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
class Blog1Controller < ApplicationController

  def list
    @dynamic_content = Time.now.to_s
    unless fragment_exist?(action: 'list')
      logger.info("Creating fragment")
      @articles = Article.find_recent
    end
  end

end
