require 'rails_helper'

RSpec.describe "user visits main projects page", type: :feature do
  it "can see all of the projects" do
    Project.create(title: "my great project")
    visit root_path
    expect(page).to have_content("All Projects")
    expect(page).to have_content("my great project")
  end

  it "can create a new board for a project" do
    visit root_path
    click_link_or_button("Create a New Board")
    expect(current_path).to eq(new_project_path)
  end
end



