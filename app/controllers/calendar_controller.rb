class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events_by_date = Party.all.group_by do |party|
      Date.parse(party.when.to_s)
    end
  end
end
