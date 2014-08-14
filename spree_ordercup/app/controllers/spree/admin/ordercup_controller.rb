class Spree::Admin::OrdercupController < Spree::Admin::ResourceController
  before_filter :get_ordercup_path, :only => [:index]
     
  def index
    @errors = params[:errors] unless params[:errors].blank?
  end
  
  protected # use this in Controllers please, not private

  def get_ordercup_path
     if Rails.env.production?
       @ordercup_path = "https://ship.ordercup.com/connect-to-ordercup"
     elsif Rails.env.staging?
       @ordercup_path = "https://ship.ordercup4.com/connect-to-ordercup"
     else
       @ordercup_path = "http://localhost:3000/connect-to-ordercup"
     end        
  end     
  
end
