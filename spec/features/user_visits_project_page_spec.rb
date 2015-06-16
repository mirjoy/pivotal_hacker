require 'rails_helper'

RSpec.describe "user visits one project page", type: :feature do
  it "should have the four agile states on it" do
    # expect it to have "backlog", "current sprint", "in progress", and "done"
  end

# When viewing a board, a user should have the option, via a form positioned clearly on the page, to create a new ticket.

# When creating a new ticket, the user must provide a "Title". They may also provide a "Description" (textbox) and a "Status" (dropdown selection of available ticket states).

# If not provided, the description should be blank, and the status should default to "backlog".

# Existing tickets should be displayed on the page grouped under the appropriate "status" section.
end
