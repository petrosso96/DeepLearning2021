function e = cross_entropy(Y, T)
    %Nel caso Y e T fossero matrici, "e" sar� un vettore colonna che
    %contiene la cross entropy di ogni output della rete: ogni riga di Y �
    %un vettore di 10 valori; ogni i-esimo elemento di tale vettore indica
    %la probabilit� che i valori di input si riferiscono all'i-esimo
    %risultato. "e" � un vettore di tante colonne quante sono le colonne di
    %Y che indica quanto � l'errore di ogni i-esima probabilit� per ogni
    %output.
    %Nel caso fossero vettori sarebbe un valore che indicherebbe la cross
    %entropy dell'unico output
    e = - sum(T.*log(Y), 2);
    %"e" sar� l'errore medio nel caso T e Y fossero matrici. Altrimenti
    %rimarr� invariato. Sar� quindi l'errore relativo all'output a cui si
    %riferisce rispetto all'input iniziale
    e = sum(e)/size(Y, 1);
end

