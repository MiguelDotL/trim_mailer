class EmailerFormsController < ApplicationController

  # GET /emailer_forms/new
  def new
    @emailer_form = EmailerForm.new
  end

  # POST /emailer_forms
  def create
    @emailer_form = EmailerForm.new(emailer_form_params)

    respond_to do |format|
      if @emailer_form.save
        format.html { redirect_to sent_path, notice: 'Your application was sent successfully!' }
      else
        format.html { render :new }
      end
    end
  end


  private
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
                                            :country #honeypot
                                          )
    end
end
