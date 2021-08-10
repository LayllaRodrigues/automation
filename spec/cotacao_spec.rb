describe 'Cotação auto por km -John Single' do

    before(:each) do
        visit 'https://stage-cotacao.youse.io/seguro-auto-por-km'
    end
    
    it 'preenchimento de lead' do

        fill_in 'insuredPersonName' , with: 'John John'
        find(:xpath, '//*[@id="root"]/div[2]/div/div[4]/div/div[2]/div/input').set("123.456.752-09")
        fill_in 'email' , with: 'laylla@youse.com.br'
        find(:xpath, '//*[@id="root"]/div[2]/div/div[6]/div/div[2]/div/input').set("11988776655")
        # find(:xpath, '//*[@id="insuredPersonMaritalStatus"]').click.set ('single')

        find(:xpath, '//*[@id="root"]/div[2]/div/div[6]/div/div[2]/div/input').fill_in  with: 'single'

        
    end

end