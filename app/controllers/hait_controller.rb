class HaitController < ApplicationController
  before_action :authenticate_user!
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
  
  def profile
    @user = User.find(params[:user_id])
  end
  
  def profile_update
    user = User.find(params[:user_id])
    user.name = params[:name]
    user.phone = params[:phone]
    # if user.password == params[:current_password] and params[:new_password] == params[:password_confirm]
    #   user.password = params[:new_password]
    # end
    user.save
    redirect_to "/hait/profile/#{user.id}"
  end
  
  def home_management
      @house = House.all
  end
  
  def home_enrollment
    House.create(:house_name => params[:house_name], :post_code => params[:post_code], :address => params[:address], :detail_address => params[:detail_address], :phone_number => params[:phone_number], :user_id => params[:user_id])
    redirect_to '/hait/home_management'
  end
  
  def room_register
    @house = House.find(params[:house_id])
  end
  
  def room_enrollment
    Room.create(:price => params[:price], :room_number => params[:room_number], :floor =>params[:floor], :room_statement => params[:room_statement], :breakfast => params[:breakfast], :lunch => params[:lunch], :dinner => params[:dinner], :cesco => params[:cesco], :fan => params[:fan], :toilet => params[:toilet], :washing => params[:washing], :woman_only => params[:woman_only], :house_id => params[:house_id], :img_url => params[:pic])
    redirect_to '/hait/home_management'
  end
  #룸 업데이트 라우트랑 뷰만 만들어놓은 상태
  def room_list
    @room = Room.all
  end
  
  def event_notice
    @notice = Notice.all
    @index = 1
    @event = Event.all
  end
  
  def room_detail
    # @room_number = params[:room_number]
    @room_info = Room.find(params[:room_id])
  end
  
  def room_detail2
    @room_info = Room.find(params[:room_id])
  end
  
  def room_search
    @cesco = params[:cesco]
    @woman_only = params[:woman_only]
    @price_from = params[:price_from]
    @price_to = params[:price_to]
    @floor_from = params[:floor_from]
    @floor_to = params[:floor_to]
    @washing_from = params[:washing_from]
    @washing_to = params[:washing_to]
    @toilet_from = params[:toilet_from]
    @toilet_to = params[:toilet_to]
    @fan = params[:fan]
    @breakfast = params[:breakfast]
    @lunch = params[:lunch]
    @dinner = params[:dinner]
    if(@breakfast)
      if(@lunch)
        if(@dinner)
          @search_room = Room.search1(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@breakfast,@lunch,@dinner)
        else
          @search_room = Room.search2(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@breakfast,@lunch)
        end
      else
        if(@dinner)
          @search_room = Room.search3(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@breakfast,@dinner)
        else
          @search_room = Room.search4(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@breakfast)
        end
      end
    else
      if(@lunch)
        if(@dinner)
          @search_room = Room.search5(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@lunch,@dinner)
        else
          @search_room = Room.search6(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@lunch)
        end
      else
        if(@dinner)
          @search_room = Room.search7(@cesco, @woman_only, @price_from, @price_to,
          @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan,@dinner)
        else
          if(@price_from)
            @search_room = Room.search(@cesco, @woman_only, @price_from, @price_to,
            @floor_from, @floor_to, @washing_from, @washing_to, @toilet_from, @toilet_to,@fan)
          else
            @search_room = Room.all
          end
        end
      end
    end
  end
  
  def ticket_history
    @user = User.find(params[:user_id])
  end
  
  # room_detail에서 열람권을 사용하면 열람권 차감하고 detail2로 보내주는 메소드 
  def use_ticket
    room = Room.find(params[:room_id])  
    ticket = User.find(params[:user_id])
    ticket.ticket = ticket.ticket-1
    ticket.save
    redirect_to "/hait/room_detail2/#{room.id}"
  end
  
  # ticket_buy 페이지에서 구매할 티켓을 누르면 처리하는 메소드 
  def buy_ticket
    ticket_number = params[:ticket_number]
    ticket_number = ticket_number.to_i
    user = User.find(params[:user_id])
    user.ticket = user.ticket + ticket_number
    user.save
    redirect_to "/hait/ticket_history/#{user.id}"
  end
end
