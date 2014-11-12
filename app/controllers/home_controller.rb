class HomeController < ApplicationController
before_filter :authenticate, :only=>:index
  def index
  end
  def test
  	@record=[]
  	respond_to do |format|
  		format.js
  		format.json { render :json =>{ :totalCount=>10, :gridData=> @record.collect { |list| { :code=>list.code }} }}
  	end
  end
  
  def init
  	respond_to do |format|
  		format.js
  	end
  end
end
