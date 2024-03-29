require 'spec_helper'

describe "todo_items/new" do
  before(:each) do
    assign(:todo_item, stub_model(TodoItem,
      :title => "MyString",
      :description => "MyText",
      :done => false
    ).as_new_record)
  end

  it "renders new todo_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todo_items_path, "post" do
      assert_select "input#todo_item_title[name=?]", "todo_item[title]"
      assert_select "textarea#todo_item_description[name=?]", "todo_item[description]"
      assert_select "input#todo_item_done[name=?]", "todo_item[done]"
    end
  end
end
