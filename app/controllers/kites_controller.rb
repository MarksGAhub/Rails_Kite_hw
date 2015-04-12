class KitesController < ApplicationController

def index
    @kites = Kite.all
end

    def show
        @kite = Kite.find(params[ :id ])
    end

    def new
        @kite = Kite.new
    end


end
