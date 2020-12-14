class ImageUploader < CarrierWave::Uploader::Base
    after :remove, :delete_empty_upstream_dirs
  
    def extension_whitelist
      %w(png jpg jpeg)
    end
  
    def store_dir
      "#{base_store_dir}/#{model.id}"
    end
  
    def base_store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}"
    end
  
    def size_range
      1..5.megabytes
    end
  
    def extension_whitelist
      %w(jpg jpeg png)
    end
  
    def delete_empty_upstream_dirs
      path = ::File.expand_path(store_dir, root)
      Dir.delete(path) # fails if path not empty dir
  
      path = ::File.expand_path(base_store_dir, root)
      Dir.delete(path) # fails if path not empty dir
    rescue SystemCallError
      true # nothing, the dir is not empty
    end
end
  