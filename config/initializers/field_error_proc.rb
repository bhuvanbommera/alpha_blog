ActiveSupport::Reloader.to_prepare do
  ActionView::Base.field_error_proc = Proc.new do |html_tag, _instance|
    html_tag.html_safe
  end
end
