class IssuesController < ApplicationController
  has_scope :by_barcode

  def show
  end

  def edit
  end

  def index
    @issues = apply_scopes(Issue).all
  end

end
