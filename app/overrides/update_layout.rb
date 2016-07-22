Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
        name: 'adding footer',
        insert_after: 'div.container',
        text: "
        <div id='footer' class='container'>
          <div class='col-md-4'>
            <h3>Ubicación</h3>
            <p>Reforma '#'222, Ciudad de México</p>
            <p>C.P. 50000</p>
            <p>Telefonos: (555) 123 5678</p>
          </div>
          <div class='col-md-4'>
            <h3>Conoce mas de PH</h3>
            <p>Nuestra historia</p>
            <p>Nuestro equipo</p>
          </div>
          <div class='col-md-4'>
            <h3>Redes Sociales</h3>
            <p>Facebook</p>
            <p>Twitter</p>
            <p>Pinterest</p>
            <p>Instagram</p>
          </div>
          <div class='col-md-12 text-center'>
            <p>Derechos Reservados 2016 | Panama Hats Inc.</p>
          </div>
        </div>
        ")

Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
        name: 'adding subscribe',
        insert_before: 'div#footer',
        text: "
        <section id='subscribe'>
          <div class='content-subscribe'>
            <p>Suscríbete para recibir lo último de Panama Hats Inc. </p>
            <form id='subscription_form' class='subscription_form'>
              <input id='subscribe_email' placeholder='Tu email aquí' type='text'></input>
              <input class='submit_subscribe' value='suscríbirse' type='submit'></input>
            </form>
          </div>
        </section>
        ")
