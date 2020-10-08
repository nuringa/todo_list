module ApplicationHelper
  def display_deadline(date)
    date&.strftime("%m/%d/%Y")
  end
end
