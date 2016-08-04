# Head
Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
        name: 'Custom layout HEAD',
        replace: "[data-hook='inside_head']",
        text: "
          <%= render partial: 'spree/shared/head' %>
        ")
# Body
Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
        name: 'Custom layout BODY',
        replace: "[data-hook='body']",
        text: "
        <!-- Header  -->
        <div class='shipping-free text-center'>
        <p>Envió gratis en México a partir de $1,500.00</p>
        </div>
        <%= render partial: 'spree/shared/google_analytics.js' %>
        <%= render partial: 'spree/shared/header' %>

        <!-- Heder bg -->
        <% if current_page?(root_path) %>
        <div class='landing-background'>
        </div>
        <% end %>

        <div class='container'>
          <div class='row' data-hook>
            <%= breadcrumbs(@taxon) %>

            <%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %>

            <div id='content' class='<%= !content_for?(:sidebar) ? 'col-sm-12' : 'col-sm-8 col-md-9' %>' data-hook>
              <%= flash_messages %>
              <%= yield %>
            </div>

            <%= yield :templates %>
          </div>
        </div>

        <!-- Subscribe -->
        <% if current_page?(root_path) %>
          <section id='subscribe'>
            <div class='content-subscribe'>
              <p>Suscríbete para recibir lo último de Panama Hats Inc. </p>
              <form id='subscription_form' class='subscription_form'>
                <input id='subscribe_email' placeholder='Tu email aquí' type='text'></input>
                <input class='submit_subscribe' value='Suscríbirse' type='submit'></input>
              </form>
            </div>
          </section>

        <!-- Footer -->
          <div id='footer' class='container'>
            <div class='col-md-4'>
              <h3>Ubicación</h3>
              <p>Reforma #222, Ciudad de México</p>
              <p>C.P. 50000</p>
              <p>Telefonos: (555) 123 5678</p>
            </div>
            <div class='col-md-4'>
              <h3>Conoce mas de PH</h3>
              <p>Nuestra historia</p>
              <p>Nuestro equipo</p>
              <h3>Buscar Ayuda</h3>
              <p>Ayuda</p>
              <p>Politica de devoluciones</p>
              <p>Envío</p>
              <p>Pagos</p>
            </div>
            <div class='col-md-4'>
              <h3>Redes Sociales</h3>
              <p>
                <%= link_to 'https://facebook.com' do%>
                  <%= fa_icon 'facebook', text: 'Facebook' %>
                <% end %>
              </p>
              <p>
                <%= link_to 'https://twitter.com' do%>
                  <%= fa_icon 'twitter', text: 'Twitter' %>
                <% end %>
              </p>
              <p>
                <%= link_to 'https://pinterest.com' do%>
                  <%= fa_icon 'pinterest', text: 'Pinterest' %>
                <% end %>
              </p>
              <p>
                <%= link_to 'https://instagram.com' do%>
                  <%= fa_icon 'instagram', text: 'Instagram' %>
                <% end %>
              </p>
            </div>
          </div>
          <div class='col-md-12 copy'>
            <ul class='float-rigth footer_ul mid_with text-center'>
              <li>Trabaja con Nosotros</li>
              <li>Terminos y condiciones</li>
              <li>Politica de privacidad</li>
            </ul>
            <p class='mid_with text-center'> &copy; Derechos Reservados 2016 | Panama Hats Inc.</p>
          </div>
        <% end %>
        ")


# Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
#         name: 'adding footer',
#         insert_after: 'div.container',
#         text: "
#         <% if current_page?(root_path) %>
#           <div id='footer' class='container'>
#             <div class='col-md-4'>
#               <h3>Ubicación</h3>
#               <p>Reforma #222, Ciudad de México</p>
#               <p>C.P. 50000</p>
#               <p>Telefonos: (555) 123 5678</p>
#             </div>
#             <div class='col-md-4'>
#               <h3>Conoce mas de PH</h3>
#               <p>Nuestra historia</p>
#               <p>Nuestro equipo</p>
#             </div>
#             <div class='col-md-4'>
#               <h3>Redes Sociales</h3>
#               <p><%= link_to 'Facebook', 'https://facebook.com' %></p>
#               <p><%= link_to 'Twitter', 'https://twitter.com' %></p>
#               <p><%= link_to 'Pinterest', 'https://pinterest.com' %></p>
#               <p><%= link_to 'Instagram', 'https://instagram.com' %></p>
#             </div>
#           </div>
#           <div class='col-md-12 text-center copy'>
#             <p> &copy; Derechos Reservados 2016 | Panama Hats Inc.</p>
#           </div>
#         <% end %>
#         ")
#
# Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
#         name: 'adding subscribe',
#         insert_before: 'div#footer',
#         text: "
#         <% if current_page?(root_path) %>
#           <section id='subscribe'>
#             <div class='content-subscribe'>
#               <p>Suscríbete para recibir lo último de Panama Hats Inc. </p>
#               <form id='subscription_form' class='subscription_form'>
#                 <input id='subscribe_email' placeholder='Tu email aquí' type='text'></input>
#                 <input class='submit_subscribe' value='Suscríbirse' type='submit'></input>
#               </form>
#             </div>
#           </section>
#         <% end %>
#         ")
