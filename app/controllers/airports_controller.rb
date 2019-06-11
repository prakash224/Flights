class AirportsController < ApplicationController
    before_action :set_country

    def create
        @airport = @country.airports.create(airport_params)
        redirect_to @country
    end

    def destroy
        @airport = @country.airports.find(params[:id])
        if @airport.destroy
         flash[:success] = "Airport was deleted."
        else
         flash[:error] = "Airport could not be deleted."
        end
        redirect_to @country 
    end

    private

    def set_country
        @country = Country.find(params[:country_id])
    end

    def airport_params
        params[:airport].permit(:airport_city,:airport_code)
    end

end
