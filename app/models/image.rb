class Image < ApplicationRecord
  mount_uploader :file, FileUploader

  def self.search(search)
    if search.present?
      Image.where(['label LIKE ?', "%#{search}%"])
    else
      Image.all
    end
  end
end
