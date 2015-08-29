require 'minitest_helper'

class TestCaseninja < MiniTest::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::Caseninja::VERSION
  end

  def test_caseninja_exec
    assert_equal(
      {
        chain: "caseninja-converts-input-text-to-chain-case",
        snake: "caseninja_converts_input_text_to_chain_case",
        camel: "caseninjaConvertsInputTextToChainCase",
        pascal: "CaseninjaConvertsInputTextToChainCase",
        upper_chain: "CASENINJA-CONVERTS-INPUT-TEXT-TO-CHAIN-CASE",
        upper_snake: "CASENINJA_CONVERTS_INPUT_TEXT_TO_CHAIN_CASE",
      },
      Caseninja.exec("Caseninja converts input text to chain case")
    )
  end
end
