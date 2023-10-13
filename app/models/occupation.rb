class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '理学療法士' },
    { id: 3, name: '作業療法士' },
    { id: 4, name: '言語聴覚士' },
    { id: 5, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :users
end