# frozen_string_literal: true

require 'prometheus/client'
require 'prometheus/client/formats/text'

class MetricsController < ActionController::Base
  def index
    prometheus = Prometheus::Client.registry
    # Serialize metrics in Prometheus text format
    metrics_text = Prometheus::Client::Formats::Text.marshal(prometheus)

    render plain: metrics_text, content_type: 'text/plain'
  rescue => e
    Rails.logger.error("Error generating metrics: #{e.message}")
    render plain: "Error generating metrics", status: :internal_server_error
  end
end
