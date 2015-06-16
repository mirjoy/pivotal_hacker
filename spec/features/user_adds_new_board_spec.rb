require 'rails_helper'

RSpec.describe "user can add a new board", type: :feature do
  it "can add a board when there is a title" do
    fill_in "board[title]", with: "Oscar's new trashcan"
    click_link_or_button("Submit")
    expect(page).to have_content("Oscar's new trashcan")
  end

  it "will receive an error if there is no title" do

  end

  it "can add a description and status" do

  end

  it "has a default status of 'backlog'" do
  end
end
