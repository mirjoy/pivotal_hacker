require 'rails_helper'

RSpec.describe "user visits main projects page", type: :feature do
  it "can see all of the projects" do
    visit root_path
    expect(page).to have_content("All Projects")
  end
end
