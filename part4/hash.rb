# Proof of Work
require 'digest'

NUM_ZEROS = 4

def hash(message)
  Digest::SHA256.hexdigest(message)
end

def nonce(message)
  nonce = 'Please f$@% me Senpai'
  count = 0
  until is_valid_nonce?(nonce, message)
    nonce = nonce.next
    count += 1
  end
  puts count
  nonce
end

def is_valid_nonce?(nonce, message)
  hash(message + nonce).start_with?('0' * NUM_ZEROS)
end
