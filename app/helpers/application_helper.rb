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

end
