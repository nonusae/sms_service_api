require "rails_helper"

RSpec.describe Notification, type: :request do

  it "creates a Notification" do
    headers = {
      "ACCEPT" => "application/json"
    }

    post "/notifications",
    params: {
      notification: {
        phone: "5555555555",
        body: "My Message",
        source_app: "my_app_name"
      }
    }, headers: headers

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
  end

end