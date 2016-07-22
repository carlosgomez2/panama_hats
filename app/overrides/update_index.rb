Deface::Override.new(:virtual_path  => 'spree/home/index',
        name: 'adding background',
        insert_before: '[data-hook="homepage_products"]',
        text: "
          <div class='landing-background'>
            <h2>Autenticos sombreros Panama tejidos en Ecuador</h2>
          </div>
        ")
