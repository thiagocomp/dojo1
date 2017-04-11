Dado(/^acesso o menu de lista de empregados$/) do
    find('#menu_pim_viewPimModule').click
    find('#menu_pim_viewEmployeeList').click
end

Quando(/^eu localizo o empregado$/) do
  click_link($Employee_Id)
  find('#btnSave').click
end

Entao(/^eu altero o cadastro do empregado$/) do
  fill_in('personal_txtEmpFirstName', :with => 'Ribeiro')
  fill_in('personal_txtEmpMiddleName', :with => 'Thiago')
  fill_in('personal_txtEmpLastName', :with => 'Marques')
  select('Brazilian',:from =>'personal_cmbNation')
  find('#btnSave').click
end

Entao(/^valido a mensagem da alteração$/) do
    assert_text("Successfully Saved")
end
