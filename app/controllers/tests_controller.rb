class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
def new
  session[:test_params] ||= {}
  @test = Test.new(session[:test_params])
  @test.current_step = session[:test_step]
end

def create
  session[:test_params].deep_merge!(params[:test]) if params[:test]
  @test = Test.new(session[:test_params])
  @test.current_step = session[:test_step]
  if @test.valid?
    if params[:back_button]
      @test.previous_step
    elsif @test.last_step?
      @test.save if @test.all_valid?
    else
      @test.next_step
    end
    session[:test_step] = @test.current_step
  end
  if @test.new_record?
    render "new"
  else
    session[:test_step] = session[:test_params] = nil
    flash[:notice] = "test saved!"
    redirect_to @test
  end
end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:nombre, :email, :l11, :l12, :l13, :l14, :l1total, :l21, :l22, :l23, :l24, :l25, :l26, :l2total, :l31, :l32, :l33, :l34, :l3total, :l41, :l42, :l43, :l44, :l4total, :l51, :l52, :l53, :l54, :l55, :l5total, :l61, :l62, :l63, :l64, :l6total, :l71, :l72, :l73, :l74, :l7total, :l81, :l82, :l83, :l8total)
    end
end
