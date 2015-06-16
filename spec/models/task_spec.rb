require 'rails_helper'

RSpec.describe Task, type: :model do
 it "must have a title to be created" do
    p = Project.create(title: "hi")
    t1 = Task.create(title: "make toast", project_id: 1)
    t2 = Task.create(title: "")

    expect(t1.id).to be_truthy
    expect(t2.id).to be_nil
    expect(t1.status).to eq("backlog")
  end
end
