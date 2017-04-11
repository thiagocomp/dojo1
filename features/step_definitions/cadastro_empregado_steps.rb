Dado(/^que eu acesse o sistema com usuario "([^"]*)" e senha "([^"]*)"$/) do |usuario, senha|
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => usuario)
  fill_in('txtPassword', :with => senha)
  find('#btnLogin').click
end

Dado(/^acesso o menu de cadastro de empregado$/) do
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_addEmployee').click
end

Quando(/^eu preencher dos dados do Empregado$/) do
  fill_in('firstName', :with => 'Thiago')
  fill_in('middleName', :with => 'Marques')
  fill_in('lastName', :with => 'Ribeiro')
  find('#btnSave').click
end

Entao(/^devera retornar a tela dos dados do empregado$/) do
   texto = find(:xpath,'//*[@id="pdMainContainer"]/div[1]/h1').text
   expect('Personal Details').to eq(texto)
   $Employee_Id = find('#personal_txtEmployeeId').value
end
