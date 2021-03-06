require 'minitest_helper'

class TestCaseninja < MiniTest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Caseninja::VERSION
  end

  def test_to_hash
    assert_equal(
      {
        chain: "hello-world",
        snake: "hello_world",
        camel: "helloWorld",
        pascal: "HelloWorld",
        upchain: "HELLO-WORLD",
        upsnake: "HELLO_WORLD",
      },
      Caseninja.to_hash("hello world")
    )

    assert_equal(
      {
        chain: "caseninja-converts-input-text-to-chain-case",
        snake: "caseninja_converts_input_text_to_chain_case",
        camel: "caseninjaConvertsInputTextToChainCase",
        pascal: "CaseninjaConvertsInputTextToChainCase",
        upchain: "CASENINJA-CONVERTS-INPUT-TEXT-TO-CHAIN-CASE",
        upsnake: "CASENINJA_CONVERTS_INPUT_TEXT_TO_CHAIN_CASE",
      },
      Caseninja.to_hash("Caseninja converts input text to chain case")
    )
  end

  def test_normlize
    assert_equal "hello world", Caseninja.normalize("hello world")
    assert_equal "hello world", Caseninja.normalize("Hello world")
    assert_equal "hello world", Caseninja.normalize("hello-world")
    assert_equal "hello world", Caseninja.normalize("hello_world")
    assert_equal "hello world", Caseninja.normalize("helloWorld")
    assert_equal "hello world", Caseninja.normalize("HelloWorld")
    assert_equal "hello world", Caseninja.normalize("HELLO-WORLD")
    assert_equal "hello world", Caseninja.normalize("HELLO_WORLD")
    assert_equal "hello world", Caseninja.normalize("HELLO_world")
  end
end
