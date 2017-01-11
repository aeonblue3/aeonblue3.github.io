require "digest/md5"

module Jekyll
  module Gravatar
    def to_gravatar(email, size=512)
      "https://www.gravatar.com/avatar/#{md5_hash(email)?s=#{size}}"
    end

    private :md5_hash

    def md5_hash(email)
      address = email ? email.downcase.strip : ""
      Digest::MD5.hexdigest(address)
    end
  end
end