require ‘RMagick’

class Image < ActiveRecord::Base
   belongs_to :binary



   validates_presence_of( :upload )

   attr_accessor :upload

   # snip (for now)
 end