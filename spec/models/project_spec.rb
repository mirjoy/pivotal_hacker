require 'rails_helper'

RSpec.describe Project, type: :model do
  it "must have a title to be created" do
    p1 = Project.create(title: "make toast")
    p2 = Project.create(title: "")

    expect(p1.id).to be_truthy
    expect(p2.id).to be_nil
  end
end
