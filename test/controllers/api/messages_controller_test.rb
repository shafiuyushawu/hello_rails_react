require 'test_helper'

module Api
  class MessagesControllerTest < ActionDispatch::IntegrationTest
    test 'should get random_greeting' do
      get api_messages_random_greeting_url
      assert_response :success
    end
  end
end
