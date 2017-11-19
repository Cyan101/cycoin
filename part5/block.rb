require 'digest'
require 'colorize'

class BlockChain
  attr_reader :blocks

  def initialize(msg)
  end

  def add_to_chain(msg)
  end

  def valid?
  end

  def to_s
    @blocks.map(&:to_s).join("\n")
  end
end


b = BlockChain.new("---Genesis Block---")
b.add_to_chain("Cinderella")
b.add_to_chain("Senpai")
b.add_to_chain("Snow White")
