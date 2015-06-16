require 'rails_helper'

RSpec.describe "user can add a new board", type: :feature do
  it "can add a board when there is a title" do
    visit new_project_path
    fill_in "project[title]", with: "Oscar's new trashcan"
    click_link_or_button("Save Project")

    expect(page).to have_content("You have successfully created a new board")
    expect(page).to have_content("Project Status")
    expect(page).to have_content("Oscar's new trashcan")
  end

  it "will receive an error if there is no title" do
    visit new_project_path
    fill_in "project[title]", with: ""
    click_link_or_button("Save Project")
    expect(page).to have_content("Please fill in the required forms")
  end

  it "can add a description and status" do

  end

  it "has a default status of 'backlog'" do
  end
end
