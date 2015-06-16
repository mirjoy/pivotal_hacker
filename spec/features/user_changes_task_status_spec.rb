require 'rails_helper'

RSpec.describe "user can change task status", type: :feature do
# Once a ticket has been created, a user should be able to move it through the various ticket states. To facilitate this, each ticket should be rendered with links or buttons for the appropriate "neighbor" states.

# Thus, given the states "backlog", "current sprint", "in progress", and "done", a ticket in the "current sprint" state should include links to "move to backlog" and "move to in progress".

# A ticket in the "backlog" state would only include one link: "move to current sprint".

# Clicking the link should send the appropriate request to the server to update the ticket's status. Upon the next page load, it should show up in the newly update column.
end
