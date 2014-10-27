class Issue < ActiveRecord::Base
  attr_accessible :number, :project_id
end
