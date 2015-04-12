class KitesController < ApplicationController

def index
    @kites = Kite.all
end

end
