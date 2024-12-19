class UserCsController < ApplicationController
  before_action :set_user_c, only: %i[ show edit update destroy ]

  # GET /user_cs or /user_cs.json
  def index
    @user_cs = UserC.all
  end

  # GET /user_cs/1 or /user_cs/1.json
  def show
  end

  # GET /user_cs/new
  def new
    @user_c = UserC.new
  end

  # GET /user_cs/1/edit
  def edit
  end

  # POST /user_cs or /user_cs.json
  def create
    @user_c = UserC.new(user_c_params)

    respond_to do |format|
      if @user_c.save
        format.html { redirect_to user_c_url(@user_c), notice: "User c was successfully created." }
        format.json { render :show, status: :created, location: @user_c }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_cs/1 or /user_cs/1.json
  def update
    respond_to do |format|
      if @user_c.update(user_c_params)
        format.html { redirect_to user_c_url(@user_c), notice: "User c was successfully updated." }
        format.json { render :show, status: :ok, location: @user_c }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_cs/1 or /user_cs/1.json
  def destroy
    @user_c.destroy

    respond_to do |format|
      format.html { redirect_to user_cs_url, notice: "User c was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_c
      @user_c = UserC.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_c_params
      params.require(:user_c).permit(:username, :password, :role, :email, :contact)
    end
end
