class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'は半角の英字と数字の両方を含めて設定してください' 
  
  validates :nickname, presence: true
  validates :image, presence: true

  with_options numericality: { other_than: 1, message: 'を選択してください'  } do
    validates :age_id
    validates :sex_id
    validates :level_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :age
    belongs_to_active_hash :sex
    belongs_to_active_hash :level

  has_one_attached :image
  has_many :events
    
end
