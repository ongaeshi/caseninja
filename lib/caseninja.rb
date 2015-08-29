require "caseninja/version"

module Caseninja
  module_function

  def exec(text, options = {})
    "Caseninja converts input text to chain case"

    {
      chain: "caseninja-converts-input-text-to-chain-case",
      snake: "caseninja_converts_input_text_to_chain_case",
      camel: "caseninjaConvertsInputTextToChainCase",
      pascal: "CaseninjaConvertsInputTextToChainCase",
      upper_chain: "CASENINJA-CONVERTS-INPUT-TEXT-TO-CHAIN-CASE",
      upper_snake: "CASENINJA_CONVERTS_INPUT_TEXT_TO_CHAIN_CASE",
    }
  end
end
