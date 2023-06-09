#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:ruby)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Description", with: @product.description
    fill_in "Image url", with: @product.image_url
    fill_in "Price", with: @product.price
    fill_in "Title", with: @product.title
    click_on "Create Product"

    assert_text "Title has already been taken"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product.description
    fill_in "Image url", with: @product.image_url
    fill_in "Price", with: @product.price
    fill_in "Title", with: "Karel The Robot in a Nutshell"
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
