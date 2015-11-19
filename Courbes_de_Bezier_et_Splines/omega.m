function y = omega (a,b,t,x)

if ( isequal(t(a+1),t(a+b+1) ))
    y=0;
else
    if ( t(a+1)<t(a+b+1) )
        y=(x-t(a+1))/(t(a+b+1)-t(a+1));
        
    end
end

end