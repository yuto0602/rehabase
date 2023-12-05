class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '中枢疾患' },
    { id: 3, name: '整形疾患' },
    { id: 4, name: '内科系疾患' },
    { id: 5, name: '廃用症候群' },
    { id: 6, name: '難病' },
    { id: 7, name: 'その他' },
  ]

  include ActiveHash::Associations
  belongs_to :reha
end
