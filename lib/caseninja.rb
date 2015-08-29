require "caseninja/version"

module Caseninja
  module_function

  def exec(text, options = {})
    {
      chain: to_chain(text),
      snake: to_snake(text),
      camel: "helloWorld",
      pascal: "HelloWorld",
      upper_chain: "HELLO-WORLD",
      upper_snake: "HELLO_WORLD",
    }
  end

  def to_chain(text)
    text.gsub(" ", "-")
  end

  def to_snake(text)
    text.gsub(" ", "_")
  end
end
