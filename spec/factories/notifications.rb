FactoryGirl.define do
  factory :notification do
    phone "555555555"
    body "My message"
    source_app "some_app"
    client FactoryGirl.build_stubbed(:client)
  end

  factory :second_notification, class: 'Notification' do
    phone "444444444"
    body "Another notification"
    source_app "some_app"
  end

  factory :outside_notification, class: 'Notification' do
    phone "333333333"
    body "Third notification"
    source_app "different_app"
  end
end