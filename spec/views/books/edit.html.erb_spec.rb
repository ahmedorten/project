require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :name => "MyString",
      :price => 1.5,
      :status => "MyString",
      :description => "MyString",
      :category_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_price[name=?]", "book[price]"

      assert_select "input#book_status[name=?]", "book[status]"

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_category_id[name=?]", "book[category_id]"

      assert_select "input#book_user_id[name=?]", "book[user_id]"
    end
  end
end
