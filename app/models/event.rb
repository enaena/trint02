class Event < ApplicationRecord
  
  has_many :event_users
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :levelev

  with_options presence: true do
    validates :title,length: { maximum: 25, message: 'は25文字以内で入力してください' }
    validates :day
    validates :start_time
    validates :end_time
    validates :place
    validates :number,numericality: { only_integer: true }
    validates :cost,numericality: { only_integer: true }
    validates :text
  end

  validates :levelev_id, numericality: { other_than: 1, message: 'を選択してください'  }

end
