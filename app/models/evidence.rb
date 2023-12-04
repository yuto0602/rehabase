class Evidence < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'A' },
    { id: 3, name: 'B' },
    { id: 4, name: 'C1' },
    { id: 5, name: 'C2' },
    { id: 6, name: 'D' }
  ]

  include ActiveHash::Associations
  has_many :rehas
end
