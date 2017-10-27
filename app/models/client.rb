class Client < ActiveRecord::Base
  has_many :notifications, foreign_key: 'source_app', primary_key: 'source_app'
  validates_presence_of :source_app, :api_key
  validates_uniqueness_of :source_app, :api_key

  before_validation :set_api_key

  private

    def set_api_key
      self.api_key = ApiKey.generator
    end
end

## for test 
## app_name5
## eMIu6EF3Qre7AppRMqm1HQtt

# curl --user app_name5:eMIu6EF3Qre7AppRMqm1HQtt -X POST -d "notification[phone]=881497885" -d "notification[body]=mymessage from app" -d "notification[source_app]=app_name5" http://localhost:3000/notifications