class Expense < ActiveRecord::Base

  belongs_to :user

  acts_as_taggable_on :tags

  geocoded_by :city   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  enum option: [:Food, :Accommodation, :Transport, :EntertainmentandAttractions,:NatureandOutdoor,
   :Culture,:Nightlife ,:Sports,:ShoppingandGifts, :Business, :Health, :Miscellaneous ]

end
