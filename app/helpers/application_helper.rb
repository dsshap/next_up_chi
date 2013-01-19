module ApplicationHelper
  def cc_html(options = {}, &blk)
    attrs = options.map { |(k, v)| %( #{h k}="#{h v}") }.join('')
    [ %(<!--[if lt IE 7 ]><html#{attrs} class="ie6"><![endif]-->),
      %(<!--[if IE 7 ]><html#{attrs} class="ie7"><![endif]-->),
      %(<!--[if IE 8 ]><html#{attrs} class="ie8"><![endif]-->),
      %(<!--[if IE 8 ]><html#{attrs} class="ie9"><![endif]-->),
      %(<!--[if (gt IE 9)|!(IE)]><!--><html#{attrs}><!--<![endif]-->),
      capture_haml(&blk).strip,
      "</html>"
    ].join("\n")
  end
  def flash_type(type)
    case type
    when :alert
      'alert-block'
    when :error
      'alert-error'
    when :notice
      'alert-info'
    when :success
      'alert-success'
    else
      type.to_s
    end
  end
  def next_up_current_page?(url1, url2)
    is_current_page = false
    if current_page?(url1)
      is_current_page = true
    end
    if current_page?(url2)
      is_current_page = true
    end
    is_current_page
  end
end
