# Deface::Override.new(:virtual_path => 'spree/shared/_search',
#     :name => "changing search styles",
#     :insert_after => "form-group",
#     :text => "
#       <%= submit_tag Spree.t(:search), :name => nil, class: 'btn search-btn btn-success' %>
#     ")

# Deface::Override.new(:virtual_path => 'spree/shared/_search',
#     :name => "changing search styles",
#     :replace => "erb[loud]:contains('t(:search)')",
#     :text => "
#       <%= submit_tag Spree.t(:search), :name => nil, class: 'btn search-btn btn-success' %>
#     ")

# Deface::Override.new(:virtual_path => 'spree/shared/_search',
#     :name => "changing search styles",
#     :remove => "erb[loud]:contains('t(:search)')")
