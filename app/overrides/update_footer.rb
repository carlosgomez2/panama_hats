Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
    :name => "adding footer",
    :insert_after => "body#default > div.container",
    :text => "
      <div class='container'>
        <div class='col-md-4'>
          <h3>Ubicación</h3>
          <p>Reforma '#'222, Ciudad de México</p>
          <p>C.P. 50000</p>
          <p>Telefonos: (555) 123 5678</p>
        </div>
        <div class='col-md-4'>
          <h3>Conoce PH Inc.</h3>
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
