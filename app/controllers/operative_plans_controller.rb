class OperativePlansController < ApplicationController
  before_action :set_operative_plan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /operative_plans
  # GET /operative_plans.json
  def index
    @operative_plans = OperativePlan.all
  end

  # GET /operative_plans/1
  # GET /operative_plans/1.json
  def show
  end

  # GET /operative_plans/new
  def new
    @operative_plan = OperativePlan.new
  end

  # GET /operative_plans/1/edit
  def edit
  end

  # POST /operative_plans
  # POST /operative_plans.json
  def create
    @operative_plan = OperativePlan.new(operative_plan_params)

    respond_to do |format|
      if @operative_plan.save
        format.html { redirect_to @operative_plan, notice: 'Plan operativo creado exitosamente' }
        format.json { render :show, status: :created, location: @operative_plan }
      else
        format.html { render :new }
        format.json { render json: @operative_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operative_plans/1
  # PATCH/PUT /operative_plans/1.json
  def update
    respond_to do |format|
      if @operative_plan.update(operative_plan_params)
        format.html { redirect_to @operative_plan, notice: 'Plan operativo actualizado exitosamente' }
        format.json { render :show, status: :ok, location: @operative_plan }
      else
        format.html { render :edit }
        format.json { render json: @operative_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operative_plans/1
  # DELETE /operative_plans/1.json
  def destroy
    @operative_plan.destroy
    respond_to do |format|
      format.html { redirect_to operative_plans_url, notice: 'Plan operativo eliminado exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operative_plan
      @operative_plan = OperativePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operative_plan_params
      params.require(:operative_plan).permit(:name, :description)
    end
end
