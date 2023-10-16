require 'pry'

class Event
  attr_accessor :start_date, :duration, :title, :attendees



  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save.to_i
    @title = title_to_save.to_s
    @attendees = attendees_to_save.to_a
  end



  def postpone_24h
    @start_date = @start_date + 24*60*60
  end



  def end_date
    @end_date = @start_date + @duration
  end



  def is_past?
    Time.now > @start_date
  end



  def is_future?
    Time.now < start_date
  end



  def is_soon?
    Time.now < @start_date && Time.now > @start_date - 60*30
  end



  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date}"
    puts ">Durée : #{@duration/60/60} heures"
    puts ">Invités : #{@attendees.join(", ")}"
  end


end