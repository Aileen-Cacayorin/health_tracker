class Food < ActiveRecord::Base
  has_and_belongs_to_many :logs

  validates :name, :presence => true
  validates :quantity, :presence => true
  validates :calories, :presence => true

  def self.search(search)
    if search != ""
      where('name LIKE ?', "%#{search}%")
    else
     []
   end
  end
end
