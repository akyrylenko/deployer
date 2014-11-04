class DeployTask < ActiveRecord::Base
  attr_accessible :issue, :stage_id, :user_id
end
