describe 'Cotação auto por km -John Single' do

    before(:each) do
        driver = Selenium::WebDriver.for :chrome
        driver.manage.timeouts.implicit_wait = 10 # seconds
        visit 'https://stage-cotacao.youse.io/seguro-auto-por-km'
        
    end
    
    it 'preenchimento de lead' do

        fill_in 'insuredPersonName' , with: 'John John'


        find(:xpath, '//*[@id="root"]/div[2]/div/div[4]/div/div[2]/div/input').set"123.456.752-09"
        fill_in 'email' , with: 'laylla@youse.com.br'
        find(:xpath, '//*[@id="root"]/div[2]/div/div[6]/div/div[2]/div/input').set"11988776655"
        find(:xpath, '//*[@id="insuredPersonMaritalStatus"]').click
        find(:xpath, '//*[@id="menu-"]/div[3]/ul/li[1]').click.set 'single'

        #segurado é o motorista?

        find(:xpath, '//*[@id="root"]/div[2]/div/div[8]/div/div[2]/div/label[2]/span[1]').click

        #placa ou chassi?

        find(:xpath, '//*[@id="root"]/div[2]/div/div[8]/div/div[2]/div/label[1]/span[1]/span[1]').click

        #placa 
        find(:xpath, '//*[@id="vehicleLicensePlate"]').set "YOU0000"
        
        # tipo de uso do veiculo

        find(:id, 'vehicleUsage').click 
        find(:xpath, '//*[@id="menu-"]/div[3]/ul/li[1]').click.set 'particular'

        #O veiculo esta em nome de

        find(:xpath, '//*[@id="root"]/div[2]/div/div[9]/div[6]/div/div/div/div').click
        find(:xpath, '//*[@id="menu-"]/div[3]/ul/li[1]').click.set 'Pessoa Física'

        # minha residencia fica no cep

        find(:xpath, '//*[@id="root"]/div[2]/div/div[13]/div[2]/div/div[2]/div/input').set "04538133"

        find(:id, 'insuredPersonAddressNeighborhood').click
        
        #numberhouse

        find(:xpath, '//*[@id="insuredPersonAddressNumber"]').set "98"

        #Quer receber noticias sobre a youse?

        find(:xpath, '//*[@id="root"]/div[2]/div/div[15]/div/div[2]/div/label[2]/span[1]').click

        #botton continuar

        find(:xpath, '//*[@id="root"]/div[2]/div/div[16]/div/div[2]/span/div/button').click

        sleep 5

        #Escolha de planos

        find(:xpath, '//*[@id="root"]/div[2]/div[3]/div/div[1]/div[3]/div[4]/span/button').click

        sleep 5

        # data

        # find(:xpath, '//*[@id="component-container"]/div/div/div[2]/div[1]/div[2]/div[1]/label/div/span').set '0124'
     
        # find(:xpath, '//*[@id="component-container"]/div/div/div[2]/div[1]/div[2]/div[1]/label/div').click.set '0124'

        # card

        find(:xpath, '//*[@id="component-container"]/div/div/div[2]/div[1]/div[1]/label').click.set ('0124').to_i

        # find(:xpath, '//*[@id="component-container"]/div/div/div[2]/div[1]/div[1]/label/div').click.set '4111 1111 1111 1111'

        find(:xpath, '//*[@id="component-container"]/div/div/div[2]/div[1]/div[1]/label/div/span[1]').set ('4111 1111 1111 1111').to_i
        # find(:xpath, '').click.set 


    end    

end

