class KindRoomsController < ApplicationController
  before_action :set_kind_room, only: [:show, :edit, :update, :destroy]

  # GET /kind_rooms
  # GET /kind_rooms.json
  def index
    @kind_rooms = KindRoom.all
  end

  # GET /kind_rooms/1
  # GET /kind_rooms/1.json
  def show
  end

  # GET /kind_rooms/new
  def new
    @kind_room = KindRoom.new
  end

  # GET /kind_rooms/1/edit
  def edit
  end

  # POST /kind_rooms
  # POST /kind_rooms.json
  def create
    @kind_room = KindRoom.new(kind_room_params)

    respond_to do |format|
      if @kind_room.save
        format.html { redirect_to @kind_room, notice: 'Kind room was successfully created.' }
        format.json { render :show, status: :created, location: @kind_room }
      else
        format.html { render :new }
        format.json { render json: @kind_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kind_rooms/1
  # PATCH/PUT /kind_rooms/1.json
  def update
    respond_to do |format|
      if @kind_room.update(kind_room_params)
        format.html { redirect_to @kind_room, notice: 'Kind room was successfully updated.' }
        format.json { render :show, status: :ok, location: @kind_room }
      else
        format.html { render :edit }
        format.json { render json: @kind_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kind_rooms/1
  # DELETE /kind_rooms/1.json
  def destroy
    @kind_room.destroy
    respond_to do |format|
      format.html { redirect_to kind_rooms_url, notice: 'Kind room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind_room
      @kind_room = KindRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kind_room_params
      params.require(:kind_room).permit(:name, :code)
    end
end
