# frozen_string_literal: true

# -----------------------------------------------------------------------------
#
# Tests for the simple mercator polygon implementation
#
# -----------------------------------------------------------------------------

require "test_helper"

class MercatorPolygonTest < Minitest::Test # :nodoc:
  include RGeo::Tests::Common::PolygonTests

  def setup
    @factory = RGeo::Geographic.simple_mercator_factory
  end
end
