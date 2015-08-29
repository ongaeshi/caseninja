require 'minitest_helper'

class TestCaseninja < MiniTest::Test
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

  def test_hello_world
    assert_equal(
      {
        chain: "hello-world",
        snake: "hello_world",
        camel: "helloWorld",
        pascal: "HelloWorld",
        upper_chain: "HELLO-WORLD",
        upper_snake: "HELLO_WORLD",
      },
      Caseninja.exec("hello world")
    )
  end
  
end
