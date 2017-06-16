module ApplicationHelper
  FORMAT = AutoHtml::Pipeline.new(
    AutoHtml::Youtube.new(750, 400),
    AutoHtml::Vimeo.new(750, 400),
    AutoHtml::GithubMarkDown.new
  )

  def html_for(content)
    #safe_join [raw(FORMAT.call(content))]
    FORMAT.call(content).html_safe
  end
end
