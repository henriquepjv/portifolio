require 'tag_helper'
require 'github/markup'

module AutoHtml
  class Youtube
    attr_reader :width, :height

    def initialize(width, height)
      @height = height
      @width = width
    end

    def call(text)
      text.gsub(youtube_pattern) do |match|
        "<iframe width='#{width}' height='#{height}' src='https://www.youtube.com/embed/#{$2}' frameborder=r'0' allowfullscreen></iframe>"
      end
    end

    private

    def youtube_pattern
      %r{(https?:\/\/www.youtube.com\/watch\?v=)(.+)}i
    end
  end

  class Vimeo
    attr_reader :width, :height

    def initialize(width, height)
      @height = height
      @width = width
    end

    def call(text)
      text.gsub(vimeo_pattern) do |match|
        "<iframe src='https://player.vimeo.com/video/#{$2}' width='#{width}' height='#{height}' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>"
      end
    end

    private

    def vimeo_pattern
      %r{(https?:\/\/www.vimeo.com\/)(.+)}i
    end
  end

  class GithubMarkDown
    def call(text)
      GitHub::Markup.render_s(GitHub::Markups::MARKUP_MARKDOWN, text)
    end
  end
end
