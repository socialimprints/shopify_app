# frozen_string_literal: true

module ShopifyApp
  module Authenticated
    extend ActiveSupport::Concern

    included do
      ShopifyApp::Logger.deprecated("Authenticated has been replaced by EnsureHasSession."\
        " Please use the EnsureHasSession controller concern for the same behavior", "22.0.0")
    end

    include ShopifyApp::EnsureHasSession
  end
end
