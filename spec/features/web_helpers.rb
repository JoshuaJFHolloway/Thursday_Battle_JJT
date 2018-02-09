def sign_in_and_play
  visit '/'
  fill_in :player_1, with: 'Terry'
  fill_in :player_2, with: 'Josh'
  click_button 'Submit'
end

def p1_attacks
  sign_in_and_play
  click_button("Attack Player 2")
end
