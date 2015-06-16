require 'rails_helper'

RSpec.describe "user visits one project page", type: :feature do
  it "should have the four agile states on it" do
    p = Project.create(title: "Get water")
    visit project_path(p)

    expect(page).to have_content("Backlog")
    expect(page).to have_content("Current Sprint")
    expect(page).to have_content("In Progress")
    expect(page).to have_content("Done")
  end

  it "can create a new task" do

  end

  it "tasks have a default status of 'backlog'" do
    p = Project.create(title: "Clean Up")

    visit project_path(p)
    fill_in "task[title]", with: "clean the trash"
    fill_in "task[description]", with: "gross"
    click_link_or_button("Save Task")

    within("#backlog") do
      expect(page).to have_content("clean the trash")
    end
  end

# When viewing a board, a user should have the option, via a form positioned clearly on the page, to create a new ticket.

# When creating a new ticket, the user must provide a "Title". They may also provide a "Description" (textbox) and a "Status" (dropdown selection of available ticket states).

# If not provided, the description should be blank, and the status should default to "backlog".

# Existing tickets should be displayed on the page grouped under the appropriate "status" section.
end
