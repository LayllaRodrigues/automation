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


   
        find(:xpath, '//*[@id="root"]/div[2]/div/div[8]/div/div[2]/div/label[2]/span[1]').click

        find(:xpath, '//*[@id="root"]/div[2]/div/div[8]/div/div[2]/div/label[1]/span[1]/span[1]').click
        find(:xpath, '//*[@id="vehicleLicensePlate"]').set "YOU0000"
        
        # usabilidade do veicuo

        find(:id, 'vehicleUsage').click 
        find(:xpath, '//*[@id="menu-"]/div[3]/ul/li[1]').click.set 'particular'

        # find(:xpath, '//*[@id="select-label"]').set 'particular'


    end
        

end

