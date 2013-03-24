module Xander
  class Experiment < ActiveResource::Base
    self.site="http://api.xander.io/"

    def variants
      @attributes[:variants] ||= []
    end
  end
end
