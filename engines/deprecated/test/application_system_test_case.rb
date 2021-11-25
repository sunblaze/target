# typed: false
# frozen_string_literal: true

require "test_helper"

module Deprecated
  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

    private

    def url_helpers
      @url_helpers ||=
        if ActionDispatch.test_app
          Class.new do
            include ActionDispatch.test_app.routes.url_helpers
            include ActionDispatch.test_app.routes.mounted_helpers
            include Engine.routes.url_helpers

            def url_options
              default_url_options.reverse_merge(host: app_host)
            end

            def app_host
              Capybara.app_host || Capybara.current_session.server_url || DEFAULT_HOST
            end
          end.new
        end
    end
  end
end
