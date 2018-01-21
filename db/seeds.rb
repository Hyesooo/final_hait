# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 공지사항 seed
Notice.create(:content => 'Ha-it 서비스가 오픈되었습니다!')
Notice.create(:content => '하숙집 삭제 문의는 ha-it@gmail.com 으로 해주시기 바랍니다.')
Notice.create(:content => '하숙집 주인은 회원가입 시에 체크박스에 표시해주세요.')

# 이벤트 seed
Event.create(:content => '열람권 1달 무료 이벤트')
Event.create(:content => '하잇 카톡 이모티콘 이벤트')
Event.create(:content => '숙명여대 눈송이 이벤트')

#아이디
User.create(:email => 'a@a', :password => 'aaaaaa', :user_type => 1, :name => '김주인', :phone => 01011111111, :ticket => 0)
User.create(:email => 'b@b', :password => 'bbbbbb', :user_type => 0, :name => '하숙생', :phone => 01022222222, :ticket => 1)
User.create(:email => 'c@c', :password => 'cccccc', :user_type => 1, :name => '김청파', :phone => 01033333333, :ticket => 0)
User.create(:email => 'd@d', :password => 'dddddd', :user_type => 1, :name => '김엄마', :phone => 01044444444, :ticket => 0)
User.create(:email => 'e@e', :password => 'eeeeee', :user_type => 1, :name => '김숙명', :phone => 01055555555, :ticket => 0)
User.create(:email => 'f@f', :password => 'ffffff', :user_type => 1, :name => '김명신', :phone => 01066666666, :ticket => 0)
# 집, 룸
House.create(:user_id => 1, :house_name => '하잇하숙', :post_code => '', :address => '서울 용산구 청파로47나길 50', :detail_address => '', :phone_number => '01011111111')
House.create(:user_id => 3, :house_name => '청파하숙', :post_code => '', :address => '서울특별시 용산구 청파로47길 100', :detail_address => '', :phone_number => '01033333333')
House.create(:user_id => 4, :house_name => '엄마하숙', :post_code => '', :address => '서울 용산구 청파동3가 26-15', :detail_address => '', :phone_number => '01044444444')
House.create(:user_id => 5, :house_name => '숙명하숙', :post_code => '', :address => '서울 용산구 청파로45길 37', :detail_address => '', :phone_number => '01055555555')
House.create(:user_id => 6, :house_name => '명신하숙', :post_code => '', :address => '서울 용산구 청파로47가길 19-5', :detail_address => '', :phone_number => '01066666666')



#Room.create(:house_id => 1, :room_number => 101, :floor => 2, :room_statement => 0, :breakfast => "아침", :lunch => "점심:", :dinner => "저녁",
#:cesco => 1, :fan => '에어컨', :toilet => 3, :washing => 2, :woman_only => 0, :img_url => '1.jpg')
