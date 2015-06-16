class Task < ActiveRecord::Base
  validates :title, presence: true
  validates :project_id, presence: true

  belongs_to :project
end
