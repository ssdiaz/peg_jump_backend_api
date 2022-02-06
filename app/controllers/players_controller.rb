class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: PlayerSerializer.new(players) 
    end


    def show
        player = Player.find_by(id: params[:id])
        render json: {id: player.id, name: player.name} 
    end

    def create
        player = Player.new(player_params)
        if player.save
            render json: PlayerSerializer.new(player), status: :accepted
        else
            render json: {errors: player.errors.full_messages}, status: :unprocessible_entity
        end
    end


    private

    def player_params
        params.require(:player).permit(:name) 
    end






    # def create
    #     @stylist = Stylist.new(stylist_params)
    #     if @stylist.save
    #         flash[:success] = "Stylist Created"
    #         redirect_to @stylist
    #     else
    #         render 'new'
    #     end
    # end

    # def index
    #     @stylists = Stylist.all.order(level: :desc, name: :asc)
    #     @appointments = @appointments.filter_by_stylist(params[:appointment_ids]) if params[:appointment_ids].present?
    # end

    # def show
    #     @stylist = Stylist.find(params[:id])
    # end

    # def edit
    #     @stylist = Stylist.find(params[:id])
    # end

    # def update
    #     @stylist = Stylist.find(params[:id])
    #     @stylist.update(stylist_params)
    #     if @stylist.valid?
    #         flash[:success] = "Stylist Saved"
    #         redirect_to @stylist
    #     else
    #         render 'edit'
    #     end
    # end

    # def destroy
    #     Stylist.find(params[:id]).destroy
    #     flash[:success] = "Stylist Deleted"
    #     redirect_to stylists_path
    # end

    # private

    # def stylist_params
    #     params.require(:stylist).permit(:name, :email, :handle, :level, service_ids:[], appointment_ids:[], client_ids:[]) 
    # end









end