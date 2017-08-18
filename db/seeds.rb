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
Event.create(:content => '진행중인 이벤트가 없습니다.')
Event.create(:content => '진행중인 이벤트가 없습니다.')
Event.create(:content => '진행중인 이벤트가 없습니다.')

#아이디
User.create(:email => 'a@a', :password => 'aaaaaa')
