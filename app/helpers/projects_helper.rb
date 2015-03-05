module ProjectsHelper
  def markdownify(content)
    pipeline_context = { gfm: true, asset_root: '/public/images'}
    pipeline = HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter,
      HTML::Pipeline::EmojiFilter,
      HTML::Pipeline::SanitizationFilter,
    ], pipeline_context
    pipeline.call(content)[:output].to_s.html_safe
  end
end
