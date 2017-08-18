class HaitController < ApplicationController
  
  def first_login
    unless current_user.user_type.nil?
      redirect_to '/'
    end
  end
  
  def index
    
  end
  
  def user_type_update
    user = current_user
    user.user_type = params[:user_type]
    user.save
    redirect_to '/'
  end
  def mypage_update
    user = current_user
    user.email = params[:user_email]
    user.name = params[:user_name]
    user.phone = params[:user_phone]
    if user.password == params[:password] and params[:new_password] == params[:password_confirm]
      user.password = params[:new_password]
    end
    user.save
  end
  def home_management
    @house = House.find_by(current_user.id)
  end
  def home_enrollment
    House.create(:house_name => params[:house_name], :post_code => params[:post_code], :address => params[:address], :detail_address => params[:detail_address], :phone_number => params[:phone_number], :user_id => params[:user_id])
    redirect_to '/hait/home_management'
  end
  def room_register
    @house = House.find(params[:house_id])
  end
  def room_enrollment
    Room.create(:price => params[:price], :room_number => params[:room_number], :floor =>params[:floor], :room_statement => params[:room_statement], :breakfast => params[:breakfast], :lunch => params[:lunch], :dinner => params[:dinner], :cesco => params[:cesco], :air_con => params[:air_con], :fan => params[:fan], :toilet => params[:toilet], :washing => params[:washing], :woman_only => params[:woman_only], :house_id => params[:house_id])
    redirect_to '/hait/home_management'
  end
  def room_list
    @room = Room.all
    @random_room = (1..25).to_a.sample(1)
  end
  def event_notice
    @notice = Notice.all
    @index = 1
    @event = Event.all
  end
  
  def room_detail
    @random_room = (1..25).to_a.sample(1)
    @room_number = params[:room_number]
    @room_info = Room.find(params[:room_id])
  end
end
