# frozen_string_literal: true

# app/controllers/api/messages_controller.rb
module Api
  class MessagesController < ApplicationController
    def random_greeting
      random_message = Message.order('RANDOM()').first
      render json: { greeting: random_message.greeting }
    end
  end
end
