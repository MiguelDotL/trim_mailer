class EmailerFormsController < ApplicationController
  # before_action :set_emailer_form, only: [:show, :edit, :update, :destroy]
  # before_action :set_emailer_form, only: [:show]

  # GET /emailer_forms
  # GET /emailer_forms.json
  # def index
  #   @emailer_forms = EmailerForm.all
  # end

  # GET /emailer_forms/1
  # GET /emailer_forms/1.json
  # def show
  # end

  # GET /emailer_forms/new
  def new
    @emailer_form = EmailerForm.new
  end

  # GET /emailer_forms/1/edit
  # def edit
  # end

  # POST /emailer_forms
  # POST /emailer_forms.json
  def create
    @emailer_form = EmailerForm.new(emailer_form_params)

    respond_to do |format|
      if @emailer_form.save
        format.html { redirect_to sent_path, notice: 'Your application was sent successfully!' }
        format.json { render :show, status: :created, location: @emailer_form }
        # send email
        FormMailer.completed_form_email(@emailer_form).deliver
      else
        format.html { render :new }
        format.json { render json: @emailer_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PATCH/PUT /emailer_forms/1
  # # PATCH/PUT /emailer_forms/1.json
  # def update
  #   respond_to do |format|
  #     if @emailer_form.update(emailer_form_params)
  #       format.html { redirect_to @emailer_form, notice: 'Emailer form was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @emailer_form }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @emailer_form.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /emailer_forms/1
  # # DELETE /emailer_forms/1.json
  # def destroy
  #   @emailer_form.destroy
  #   respond_to do |format|
  #     format.html { redirect_to emailer_forms_url, notice: 'Emailer form was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_emailer_form
    #   @emailer_form = EmailerForm.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emailer_form_params
      params.require(:emailer_form).permit( :name,
                                            :email,
                                            :proj_repo,
                                            :proj_url,
                                            :oop,
                                            :modular,
                                            :full_stack,
                                            :testing,
                                            :db,
                                            :debugging,
                                            :problem_solving,
                                            :js,
                                            :html,
                                            :css,
                                            :teamwork,
                                            :self_motivation,
                                            :communication,
                                            :energy_level,
                                            :aptitude,
                                            :country)
    end
end
