class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  has_many :items
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
