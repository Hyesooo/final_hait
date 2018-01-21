class Room < ActiveRecord::Base
  belongs_to :house
  mount_uploader :img_url, ImgUploader
  def self.search(cesco, woman_only, price_from, price_to,floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to, fan)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
  end
  def self.search1(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,breakfast,lunch,dinner)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(breakfast: breakfast).where(lunch: lunch).where(dinner: dinner)
  end
  def self.search2(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,breakfast,lunch)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(breakfast: breakfast).where(lunch: lunch)
  end
  def self.search3(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,breakfast,dinner)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(breakfast: breakfast).where(dinner: dinner)
  end
  def self.search4(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,breakfast)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(breakfast: breakfast)
  end
  def self.search5(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,lunch,dinner)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(lunch: lunch).where(dinner: dinner)
  end
  def self.search6(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,lunch)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(lunch: lunch)
  end
  def self.search7(cesco, woman_only, price_from, price_to,
    floor_from, floor_to, washing_from, washing_to, toilet_from, toilet_to,fan,dinner)
    where(cesco: cesco).where(woman_only: woman_only).where(price: price_from...price_to).where(fan: fan)
    .where(floor: floor_from...floor_to).where(washing: washing_from...washing_to).where(toilet: toilet_from...toilet_to)
    .where(dinner: dinner)
  end
end

 