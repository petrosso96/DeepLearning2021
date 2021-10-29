function e = cross_entropy(Y, T)
    %Nel caso Y e T fossero matrici, "e" sar� un vettore colonna che
    %contiene la cross entropy di ogni output della rete
    %Nel caso fossero vettori sarebbe un valore che indicherebbe la cross
    %entropy dell'unico output
    Y(Y == 0) = realmin;
    e = - sum(T.*log(Y), 2);
    %"e" sar� l'errore medio nel caso T e Y fossero matrici. Altrimenti
    %rimarr� invariato.
    e = sum(e)/size(Y, 1);
end

