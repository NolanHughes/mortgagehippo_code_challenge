class Coin < ApplicationRecord
	def self.total
    self.all.inject(0) do |sum,x| 
    	sum + x.value 
    end
  end
end
