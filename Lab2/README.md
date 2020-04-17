Zad 1

Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu (parametr wywołania skryptu) utworzy dowiązania twarde w drugim katalogu (parametr wywołania skryptu), zaś dla podkatalogów utworzy on dowiązania miękkie. 

Zad 2 

Napisz skrypt, który wyświetli nazwy wszystkich dowiązań symbolicznych z danego katalogu (parametr skryptu), a jeśli są to dowiązania poprawne (wskazujące na istniejące elementy) to dodatkowo wyświetlona zostanie ścieżka wskazywana przez to dowiązanie. Dodatkowo (wykonane częściowo): 
- skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików 
- jeżeli ścieżka dowiązania jest dowolną ścieżką bezwzględną to zamień ją na kanoniczną 
- wyświetl także ścieżkę względną od katalogu roboczego (`pwd`) do wskazywanego miejsca 
- wykonaj analogiczne czynności dla wszystkich podkatalogów zadanego katalogu oraz dowiązań, wskazujących na istniejące katalogi 