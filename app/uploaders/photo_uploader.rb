class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :thumnail do
    resize_to_fit 256, 256
  end

  version :background do
    cloudinary_transformation effect: "brightness:30",
    height: 320, crop: :fill, width: 400
  end

end

