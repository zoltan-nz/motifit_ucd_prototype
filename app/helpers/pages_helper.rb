module PagesHelper

  def to_bool
    return true if self =~ (/^(true|t|yes|y|1)$/i)
    return false if self.empty? || self =~ (/^(false|f|no|n|0)$/i)
    raise ArgumentError.new "invalid value: #{self}"
  end

  def accordion_box(title, help=nil, acc_hash={}, form=nil, id="#{title.downcase.scan(/[a-z]/).join("")}", right_link=nil)
    if acc_hash[id]
      box_open = acc_hash[id].to_bool
    else
      box_open = false
    end

    if acc_hash[:force_open]
      box_open = true
    end

    capture_haml do
      haml_tag :div, class: 'accordion-group' do
        haml_tag :div, class: 'accordion-heading row-fluid' do
          haml_tag :span, {class: 'accordion-toggle span11', data: {toggle: 'collapse', target: "##{id}"}} do
            haml_tag :i, class: 'icon-arrow-down'
            haml_concat "#{title}"
          end
          unless form.nil?
            if form[:custom]
              haml_tag :div, class: 'action_buttons' do
                haml_concat submit_tag "Update #{form[:value]}",  class: "btn btn-success"
              end
            else
              haml_tag :div, class: 'action_buttons' do
                haml_concat form.action :submit, button_html: {class: 'btn btn-success'}
                haml_concat form.action :cancel
              end
            end
          end
          unless right_link.nil?
            haml_concat(link_to  right_link[:title], right_link[:url], class: 'btn btn-primary pull-right')
          end

          unless help.nil?
            haml_tag :div, class: 'info-icon-box' do
              haml_tag :i, class: 'icon-info-sign', data: {toggle: 'tooltip'}, title: "#{help}"
            end
          end
        end

        box_open ? box_open_class = "in" : box_open_class = ""

        haml_tag :div, id: "#{id}", class: "accordion-body collapse #{box_open_class}" do
          haml_tag :div, class: 'accordion-inner' do
            yield
          end
        end
      end
    end
  end
end