module Skydrive
  # The file object
  class File < Skydrive::Object

    # The file size
    # @return [String]
    def size
      object["size"]      
    end

    # The number of comments associated with the file
    # @return [Integer]
    def comments_count
      object["comments_count"]
    end

    # A value that indicates whether comments are enabled for the file
    # @return [Boolean]
    def comments_enabled
      object["comments_enabled"]
    end

    # A value that indicates whether this file can be embedded
    # @return [Boolean]
    def is_embeddable
      object["is_embeddable"]
    end

    # The URL to use to download the file from SkyDrive
    # @return [String]
    def source
      object["source"]
    end
  end
end