class OrderPicturesController < ApplicationController
  # GET /order_pictures
  # GET /order_pictures.json
  def index
    @order_pictures = OrderPicture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_pictures }
    end
  end

  # GET /order_pictures/1
  # GET /order_pictures/1.json
  def show
    @order_picture = OrderPicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_picture }
    end
  end

  # GET /order_pictures/new
  # GET /order_pictures/new.json
  def new
    @order_picture = OrderPicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_picture }
    end
  end

  # GET /order_pictures/1/edit
  def edit
    @order_picture = OrderPicture.find(params[:id])
  end

  # POST /order_pictures
  # POST /order_pictures.json
  def create
    @order_picture = OrderPicture.new(params[:order_picture])

    respond_to do |format|
      if @order_picture.save
        format.html { redirect_to @order_picture, notice: 'Order picture was successfully created.' }
        format.json { render json: @order_picture, status: :created, location: @order_picture }
      else
        format.html { render action: "new" }
        format.json { render json: @order_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_pictures/1
  # PUT /order_pictures/1.json
  def update
    @order_picture = OrderPicture.find(params[:id])

    respond_to do |format|
      if @order_picture.update_attributes(params[:order_picture])
        format.html { redirect_to @order_picture, notice: 'Order picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_pictures/1
  # DELETE /order_pictures/1.json
  def destroy
    @order_picture = OrderPicture.find(params[:id])
    @order_picture.destroy

    respond_to do |format|
      format.html { redirect_to order_pictures_url }
      format.json { head :no_content }
    end
  end
end
