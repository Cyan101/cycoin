require 'digest'

NUM_ZEROS = 4

def hash(message)
  Digest::SHA256.hexdigest(message)
end

def nonce(message)
end
