class Levelev < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '初級' },
    { id: 3, name: '初中級' },
    { id: 4, name: '中級' },
    { id: 5, name: '中上級' },
    { id: 6, name: '上級' },
    { id: 7, name: 'どなたでも' },
  ]

  include ActiveHash::Associations
  has_many :events
end