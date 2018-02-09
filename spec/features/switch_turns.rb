feature 'switch turns' do
  scenario 'it allows player 2 to play' do
    p1_attacks
    expect(page).to have_content("Attack Player 1")
  end
end