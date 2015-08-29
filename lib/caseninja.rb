require "caseninja/version"

module Caseninja
  module_function

  def exec(text, options = {})
    {
      chain: to_chain(text),
      snake: to_snake(text),
      camel: to_camel(text),
      pascal: to_pascal(text),
      upper_chain: to_upper_chain(text),
      upper_snake: to_upper_snake(text),
    }
  end

  def to_chain(text)
    text.gsub(" ", "-")
  end

  def to_snake(text)
    text.gsub(" ", "_")
  end

  def to_camel(text)
    to_pascal(text).sub(/./) { $&.downcase }
  end

  def to_pascal(text)
    text.split.map { |e| e.capitalize }.join
  end

  def to_upper_chain(text)
    to_chain(text).upcase
  end
  
  def to_upper_snake(text)
    to_snake(text).upcase
  end
  
end
