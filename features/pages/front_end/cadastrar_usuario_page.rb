module PageObjects
    module Home
      class Cadastro
        include Capybara::DSL
        def acessar_cadastro
            find('a[class="login"]').click
            find('input[id="email_create"]').click.set Faker::Internet.email
            find('button[id="SubmitCreate"]').click
        end
        
        def cadastrar_usuario
            find('input[id="id_gender1"]', visible: :all).click 
            find('input[id="customer_firstname"]').click.set Faker::Name.first_name
            find('input[id="customer_lastname"]').click.set Faker::Name.last_name
            find('input[id="passwd"]').click.set Faker::Lorem.characters(number: 8) 
            # find('body[id="authentication"]').click
            first(:option, '3').select_option
            # find('select[id="months"]', visible: :all).click
            first(:option, 'October').select_option
            # find('select[id="uniform-years"]', visible: :all).click
            first(:option, '1981').select_option
            find('input[name="newsletter"]', visible: :all).check
            find('input[name="optin"]', visible: :all).check
            find('input[id="company"]').click.set Faker::Company.name
            find('input[id="address1"]').click.set Faker::Address.street_address
            find('input[id="city"]').click.set Faker::Address.city
            find('select[id="id_state"]', visible: :all).click
            first(:option, 'California').select_option
            find('input[id="postcode"]').click.set Faker::Number.number(digits: 5)
            find('textarea[id="other"]').click.set Faker::Lorem.paragraph_by_chars
            find('input[id="phone_mobile"]').click.set Faker::PhoneNumber.cell_phone
            find('button[id="submitAccount"]').click
        end

        def fazer_pedido
            find('a[title="Women"]').click
            find('div[class="subcategory-image"] a[title="Dresses"]').click
            find('li[class="ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line first-item-of-tablet-line first-item-of-mobile-line"]').hover.click
            find('button[name="Submit"]').click
            find('a[title="Proceed to checkout"]').click
            find('a[title="Proceed to checkout"]').click
            find('button[name="processAddress"]').click
            find('input[id="cgv"]', visible: :all).check
            find('button[name="processCarrier"]').click
            find('a[class="cheque"]').click
            find('button[class="button btn btn-default button-medium"]').click
        end
        end
    end
end