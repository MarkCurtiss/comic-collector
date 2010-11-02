require 'spec_helper'

describe Issue do
  describe '#series_name' do
    it 'should return the name of the associated series' do
      x_men = Factory.create(:series, :name => 'X-Men')
      issue = Factory.create(:issue)
      issue.series_name.should be_nil

      issue.series = x_men
      issue.series_name.should == 'X-Men'
    end
  end

  describe '#series_name=' do
    it 'should assign a series to the issue' do
    i = Factory.create(:issue)
    x_men = Factory.create(:series, :name => 'X-Men')

    i.series_name = 'X-Men'
    i.series_name.should == 'X-Men'
    end

    it 'should create a series with that name if none exists' do
      i = Factory.create(:issue)
      i.series_name = 'X-Men'

      i.series_name.should == 'X-Men'
      Series.find_by_name('X-Men').should_not be nil
    end
  end
end
