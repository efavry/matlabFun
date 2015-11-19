function [ result ] =  evaluate_func(func, x)
%evalue la fonction ecrite comme un tring en point t, cette fonction ne
%doit pas être executé car elle n'est pas sécurisé
    result=eval(func);
end

