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

def create
    @kite = Kite.new(params.require(:kite). permit(:name, :size, :quantity))

        if @kite.save
            redirect_to kites_path
        else
            render "new"
        end
    end

def edit
    @kite = Kite.find(params[ :id ])
end

 def update
    @kite = Kite.find(params[ :id ])

    if @kite.update_attributes(params.require(:kite).permit(:name, :size, :quantity))
        redirect_to kites_path
    else
        render "edit"
    end
end

def destroy
    @kite = Kite.find(params[ :id ])
    @kite.destroy
    redirect_to kites_path
end


end
