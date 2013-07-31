class PagesController < ApplicationController
  def index
  end

  def meetups
    add_crumb('Meetups') {|instance| instance.send :meetups_path rescue nil }
  end

  def theteam
    add_crumb('The Team') {|instance| instance.send :theteam_path rescue nil }
  end

  def contact
    add_crumb('Contact') {|instance| instance.send :contact_path rescue nil }
  end
end
