class Issue < ActiveRecord::Base
  scope :by_barcode, proc { |barcode| { :conditions => { :barcode => barcode }}}
end
