# frozen_string_literal: true

class MetricsController < ActionController::Base
  def index
    prometheus = Prometheus::Client.registry
    render plain: prometheus.text, content_type: "text/plain"
  end
end
