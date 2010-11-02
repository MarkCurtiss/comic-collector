class IssuesController < ApplicationController
  has_scope :by_barcode
  has_scope :by_issue_num
  has_scope :series_name

  def show
  end

  def edit
  end

  def index
    @issues = apply_scopes(Issue).all
  end

end
