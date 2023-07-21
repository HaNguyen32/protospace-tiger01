class PrototypesController < ApplicationController
    def index
        @prototypes = Prototype.all
    end

    def show
        @Prototype = Prototype.find(params[:id])
      end
end
