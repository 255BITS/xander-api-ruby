module Xander
  class Variant < ActiveResource::Base
    self.site="http://api.xander.io/"

    def impression
      @attributes[:impressions]||=0
      @attributes[:impressions]+=1
    end

    def impressions
      @attributes[:impressions] || 0
    end

    def conversion
      @attributes[:conversions]||=0
      @attributes[:conversions]+=1
    end

    def conversions
      @attributes[:conversions] || 0
    end
  end
end
