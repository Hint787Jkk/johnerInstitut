class fibonacci:

    def __fibCalc(self, stellenAnzahl):
        b, sum, count = 1, 0, 1
        print("Fibonacci Folge: ", end=" ")
        while count <= stellenAnzahl:
            print(sum, end=" ")
            count += 1
            a = b
            b = sum
            sum = a + b

    def printToConsole(self):
        print('Geben Sie bitte die Anzahl auszugebenden Stellen an:')
        stellenAnzahl = input()
        stellenAnzahl = int(stellenAnzahl.strip())
        if (stellenAnzahl < 0):
            raise TypeError('StellenAnzahl >= 0 please!')
        self.__fibCalc(stellenAnzahl)


fibTest = fibonacci()

try:
    fibTest.printToConsole()
except ValueError as e1:
    print("Bitte geben Sie eine ganzzahlige Zahl ein!")
    fibTest.printToConsole()
except TypeError as e2:
    print("Bitte geben Sie eine ganzzahlige Zahl >= 0 ein!")
    fibTest.printToConsole()
