import Data.List
import System.IO


data Employee = Employee {name::String,
    position::String,
    idNumber::Int}
    deriving (Eq, Show)


employeeINFO::Employee -> IO()
employeeINFO p = print(p)

isEqual::Employee -> Employee -> Bool
isEqual p q = p == q

p1::Employee
p1 = Employee{name = "Tom", position = "manager", idNumber = 456}

p2 = Employee{name = "Anna", position = "teacher", idNumber = 76}

p3 = Employee{name = "Tom", position = "manager", idNumber = 456}

main = do 
    employeeINFO(p1)
    employeeINFO(p2)
    employeeINFO(p3)
    print(isEqual p1 p2)
    print(isEqual p1 p1)
    print(isEqual p1 p3)
    
