module Skydrive
  class Object
    attr_reader :object
    def initialize json_object
      @object = JSON.load(json_object)
    end

    # ID of the object
    # @return [String] object id
    def id
      object["id"]
    end

    # Info about the user who uploaded the file.
    # @return [Skydrive::User]
    def from
      Skydrive::User.new(object["from"]) if object["from"]
    end

    # Name of the object
    # @return [String]
    def name
      object["name"]
    end

    # Desciption of the obejct
    # @return [String]
    def description
      object["description"]
    end

    # Type of object
    # @return [String]
    def type
      object["type"]
    end

    # A URL to view the item on SkyDrive
    # @return [String]
    def link
      object["link"]
    end

    # The time at which the object was created.
    # @return [Time]
    def created_time
      Time.parse(object["created_time"]) if object["created_time"]
    end

    # The time at which the object was updated.
    # @return [Time]
    def updated_time
      Time.parse(object["updated_time"]) if object["updated_time"]
    end

    # The URL to upload file content hosted in SkyDrive.
    # @return [String]
    def upload_location
      object["upload_location"]
    end

    # The ID of the parent object
    # @return [String]
    def parent_id
      object["parent_id"]
    end
    
    def to_json
      object.to_json
    end

    def to_hash
      object
    end
  end
end