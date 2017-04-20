class ProductPresenter < Presenter
  def tech_specs_as_dictionary_list
    list = '<dl class="dl-horizontal">'.html_safe
    object.tech_specs.each do |term, description|
      list << view_context.content_tag(:dt, term.titleize)
      list << view_context.content_tag(:dd, description)
    end
    list << '</dl>'.html_safe
  end
end