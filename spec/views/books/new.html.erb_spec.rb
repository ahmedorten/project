require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :name => "MyString",
      :price => 1.5,
      :status => "MyString",
      :description => "MyString",
      :category_id => 1,
      :user_id => 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_price[name=?]", "book[price]"

      assert_select "input#book_status[name=?]", "book[status]"

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_category_id[name=?]", "book[category_id]"

      assert_select "input#book_user_id[name=?]", "book[user_id]"
    end
  end
end
