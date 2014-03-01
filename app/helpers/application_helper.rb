module ApplicationHelper

  def home?
    @selected == :home
  end

  def share?
    @selected == :share
  end

  def shame?
    @selected == :shame
  end

end
