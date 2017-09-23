class ServicesController < ApplicationController

    def index
        @services = Service.all
    end

    def show
        @service = Service.find( params[:id])
        @pings = Ping.where( service_id: params[:id])
    end

    def new
    end

    def edit
    end

    def create
        @service = Service.new( service_params)

        @service.save
        redirect_to @service
    end

    def update
    end

    def destroy
    end

    private

      def service_params
        params.require( :service).permit( :title, :url)
      end
end
