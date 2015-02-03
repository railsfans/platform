#enforce utf-8
class HomeController < ApplicationController
before_filter :authenticate, :only=>:index
  def index
  end
  def test
  	@record=[]
  	respond_to do |format|
  		format.js
#  		format.json { render :json =>{ :totalCount=>10, :gridData=> @record.collect { |list| { :code=>list.code }} }}
		format.json { render :json =>{ :totalCount=>10, :gridData=> [{:cityname=>t(:taizhou), :server_type=>'addc', :ontime=>'2014-10-1 05:02:12', :offtime=>'2014-10-1 05:02:12', :dropcount=>'12', :status=>'on' }, {:cityname=>t(:taizhou), :server_type=>'addl', :ontime=>'2014-10-1 05:02:12', :offtime=>'2014-10-1 05:02:12', :dropcount=>'13', :status=>'on' }, {:cityname=>t(:rizhao), :server_type=>'addc', :ontime=>'2014-10-1 05:02:12', :offtime=>'2014-10-1 05:02:12', :dropcount=>'13', :status=>'on' }, {:cityname=>t(:rizhao), :server_type=>'addl', :ontime=>'2014-10-1 05:02:12', :offtime=>'2014-10-1 05:02:12', :dropcount=>'13', :status=>'off' }]  }}
  	end
  end
  
  def bus
  	@record=[]
  	respond_to do |format|
  		format.js
		format.json { render :json =>{ :totalCount=>10, :gridData=> [{:timecount=>t(:lastone),:cityname=>t(:taizhou), :update_percentage=>'90%', :bus_cal=>'90/100', :update_time=>'2014-10-2 05:02:12' }, {:timecount=>t(:lasttwo),:cityname=>t(:taizhou), :update_percentage=>'80%', :bus_cal=>'80/100', :update_time=>'2014-10-1 05:02:12'  }, {:timecount=>t(:lastone),:cityname=>t(:rizhao), :update_percentage=>'90%', :bus_cal=>'90/100', :update_time=>'2014-10-2 05:02:12' }, {:timecount=>t(:lasttwo),:cityname=>t(:rizhao), :update_percentage=>'90%', :bus_cal=>'90/100', :update_time=>'2014-10-1 05:02:12'  }]  }}
  	end
  end
  def allsolider
  	respond_to do |format|
  		format.js
		format.json { render :json =>{ :totalCount=>Solider.all, :gridData=> Solider.offset(params[:start]).limit(params[:limit])  }}
  	end
  end
  def init
  	respond_to do |format|
  		format.js
  	end
  end
end
