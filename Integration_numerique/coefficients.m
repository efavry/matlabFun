function [W,W2] = coefficients(n)
%Construis les coefficients d'intégration pour les méthodes de Lengendre
%et de Tchebychev.
%============================
%n+1 : nb de points de support d'intégration
%W : coefficients de legendre
%W2 : coefficients de tchebyschev


if isscalar(n)
    if (n > (-1))
        
        [sup_leg,sup_tche]=support_integration(n);
        
        P=poly_ortho(n+2);
        
        %détermination des polynômes Ln+1 et Ln
        sym_leg=P(1,:);
        
        last_poly=sym2poly(sym_leg(length(sym_leg)));
        before_last_poly=sym2poly(sym_leg(length(sym_leg)-1));
        
        %dérivée du polynome Ln+1
        diff_last_poly=polyder(last_poly);
        
        %calcul itératif des coefficients d'intégration gaussienne
        for i=1:1:length(sup_leg)
            W(i)=2/(length(sup_leg)*polyval(diff_last_poly,sup_leg(i))*polyval(before_last_poly,sup_leg(i)));
            W2(i)=pi/length(sup_tche);            
        end
        
        
    else
        error('n doit etre positif');
    end   
else
    error('n n''est pas un nombre');
end
        
        
        

end