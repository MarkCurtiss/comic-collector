class Issue < ActiveRecord::Base
  scope :by_barcode, proc { |barcode| { :conditions => { :barcode => barcode }}}
  scope :by_issue_num, proc { |issue_num| { :conditions => { :issue_num => issue_num }}}
  scope :series_name, proc { |name| includes(:series).where('series.name'.to_sym.matches => "%#{name}%") }

  belongs_to :series

  def series_name
    self.series && self.series.name
  end

  def series_name=(name)
    self.series = Series.find_or_create_by_name(name)
  end
end
