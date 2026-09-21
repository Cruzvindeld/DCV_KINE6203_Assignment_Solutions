% Diana Cruz-Vindel
% today date is 09/9/2026 and this code allows individuals to play the
% game of tic tac toe
while true 
disp ('welcome to the best game ever of tic-tac-toe')
prompt= "would you like to play? Y/N";
%make sure that a lowercase y or n is still valid
txt= lower(input(prompt,'s'));
if txt == "y"
    disp ("great start the game");
elseif txt ~= "y"
    disp("No problem! Maybe next time.");
    return;
end

board= ["a" "b" "c"; "d" "e" "f" ; "g" "h" "i"];
player1= 'x';
player2= 'o';
move=lower(input('where would you like to move?','s'));

if move== "a"
   board(1,1)='x';
elseif move=="b"
    board(1,2)='x';
elseif move=="c" 
    board(1,3)='x';
elseif move=="d"
    board(2,1)='x';
elseif move=="e"
    board(2,2)='x';
elseif move=="f"
    board(2,3)='x';
elseif move=="g"
    board(3,1)='x';
elseif move=="h"
    board(3,2)='x';
elseif move=="i"
    board(3,3)='x';
else
    disp('Invalid move. Please choose a valid position.');
end
% Display the updated board
disp(board);
%computer will make a move 
availableMoves= find(board ~="x" & board ~= "o");
if isempty (availableMoves)
    disp('No valid move left.')
    return;
end
chosenmove= availableMoves(randi(numel(availableMoves)));
    [row,col]= ind2sub(size(board),chosenmove);
    board(row,col) = "o";
    disp('Computer move:');
    disp(board);
while any(board~='x' & board~='o','all')
    move=lower(input('where would you like to move','s'));
    availableMoves = find(board ~= "x" & board ~= "o");

    if ~ismember(move, board(availableMoves))
        disp('Invalid move. Please choose an available position.');
        continue;
    end
    board(board == move) = "x";
    disp(board);
      availableMoves = find(board ~= "x" & board ~= "o");

    chosenmove = availableMoves(randi(numel(availableMoves)));

    [row,col] = ind2sub(size(board),chosenmove);

    board(row,col) = "o";

    disp('Computer move:');
    disp(board);

    winningLines = [board(1,:); board(2,:); board(3,:);
        board(:,1)'; board(:,2)'; board(:,3)'; 
        diag(board)'; diag(flipud(board))'];

    if any(all(winningLines == "x", 2))
        disp('Congratulations! You win.');
        break;
    elseif any(all(winningLines == "o", 2))
        disp('The computer wins.');
        break;
    elseif ~any(board ~= "x" & board ~= "o", 'all')
        disp('It''s a tie!');
        break;
    end
end
    
    disp('Thanks for playing tic-tac-toe!');

again = lower(input('Would you like to play again? Y/N: ','s'));

if again ~= "y"
    disp('Thanks for playing! See you next time!');
    break;
end
end







