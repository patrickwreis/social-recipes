require 'rails_helper'

feature 'user create recipes' do
  scenario 'successfully' do
    visit new_recipe_path

    expect(page).to have_css('h1', text: 'Nova Receita')
    fill_in 'Nome da receita',        with: 'Gelo'
    fill_in 'Cozinha',                with: 'Mundial'
    fill_in 'Tipo de comida',         with: 'Bebida'
    fill_in 'Quantas pessoas serve',  with: 12
    fill_in 'Tempo de preparo',       with: 120
    fill_in 'Nivel de dificuldade',   with: 'Facil'
    fill_in 'Ingredientes',           with: 'Agua'
    fill_in 'Passo a passo',          with: 'Encha uma forma de gelo
                                             com agua e coloque no frezer'

    click_on 'Criar Receita'

    expect(page).to have_css('h1', text: 'Gelo')
    expect(page).to have_content('Mundial')
    expect(page).to have_content('Bebida')
    expect(page).to have_content(12)
    expect(page).to have_content('120 minutos')
    expect(page).to have_content('Facil')
    expect(page).to have_content('Agua')
    expect(page).to have_content('Encha uma forma de gelo
                                             com agua e coloque no frezer')
  end

  scenario 'with invalid data' do
    visit new_recipe_path

    build(:recipe)

    click_on 'Criar Receita'

    expect(page).to have_content 'Não foi possível criar a receita'
  end
end
