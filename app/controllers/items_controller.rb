class ItemsController < ApplicationController
  before_action :hihi
  
  def yoo
    @item = 123
	#render plain: "hello world!"
  end
  def hoo
    @item = 234
  end
  private
  def hihi
	@yoo= "route"
  end
end
