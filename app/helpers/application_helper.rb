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

  def cloudfront(url)
    url.gsub("s3.amazonaws.com/#{ENV['S3_BUCKET']}", "#{ENV['CLOUDFRONT_URL']}")
  end

  def form_error
    'error' if flash[:error]
  end

end
