require 'net/http'
require 'uri'

module Jekyll
  class RemoteMarkdownTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @url = text.strip
    end

    def render(context)
      return "<!-- URL is empty -->" if @url.empty?

      begin
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)

        if response.is_a?(Net::HTTPSuccess)
          # Force the response body to UTF-8
          markdown_content = response.body.force_encoding('UTF-8')
          site = context.registers[:site]
          converter = site.find_converter_instance(Jekyll::Converters::Markdown)
          converter.convert(markdown_content)
        else
          "<!-- Failed to fetch remote Markdown: #{@url} (HTTP #{response.code}) -->"
        end
      rescue => e
        "<!-- Error fetching remote Markdown: #{e.message} -->"
      end
    end
  end
end

Liquid::Template.register_tag('remote_markdown', Jekyll::RemoteMarkdownTag)
