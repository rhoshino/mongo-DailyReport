#coding:utf-8

class ReportsController < ApplicationController
    def index
    #@reports = current_user.reports
@reports =  Report.all# Scaffold Code
    respond_to do |format|

      format.html # index.html.erb
      format.json { render json: @reports }
    end
  end

 def new
    @report = Report.new()
    #@report.worktimes.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report }
    end
  end

  def create
@report = Report.new(params[:report])#Scaffold code
    #@report = current_user.reports.new(params[:report])
    respond_to do |format|
      if @report.save

        #ApplicationController.helpers.sending_report_submit(@report.user,@report)

        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render json: @report, status: :created, location: @report }
      else
        format.html { render action: "new" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @report = Report.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @report }
    end
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to reports_path }
      format.json { head :no_content }
    end
  end


  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])
  end
end