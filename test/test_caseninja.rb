require 'minitest_helper'

class TestCaseninja < MiniTest::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::Caseninja::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
