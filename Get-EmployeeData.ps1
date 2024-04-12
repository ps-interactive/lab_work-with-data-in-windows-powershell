# Function to get sample employee data
Function Get-EmployeeData {

    $employees = @(
  
        [PSCustomObject]@{
            Name       = 'Jane Doe'  
            ID         = 56789
            Department = [PSCustomObject]@{
                Name   = 'Sales'
                Region = [PSCustomObject]@{
                    Name      = 'West'
                    Districts = [PSCustomObject[]]@(
                        [PSCustomObject]@{
                            Name     = 'District 1'
                            Managers = [PSCustomObject[]]@(
                                [PSCustomObject]@{
                                    Name = 'John Smith' 
                                }
                            )
                        }  
                    )
                }
            }
        },
  
        [PSCustomObject]@{
            Name       = 'Bob Johnson'
            ID         = 12345
            Department = [PSCustomObject]@{
                Name   = 'Engineering'
                Region = [PSCustomObject]@{
                    Name      = 'East'
                    Districts = [PSCustomObject[]]@(
                        [PSCustomObject]@{
                            Name     = 'District 2'
                            Managers = [PSCustomObject[]]@(
                                [PSCustomObject]@{
                                    Name = 'Mary Davis'
                                }
                            )
                        }
                    )
                }  
            }
        },
  
        [PSCustomObject]@{
            Name       = 'John Smith'
            ID         = 45678
            Department = [PSCustomObject]@{
                Name   = 'IT'
                Region = [PSCustomObject]@{
                    Name      = 'Central'
                    Districts = [PSCustomObject[]]@(
                        [PSCustomObject]@{
                            Name     = 'District 3'
                            Managers = [PSCustomObject[]]@(
                                [PSCustomObject]@{
                                    Name = 'Michael Brown'
                                }
                            )
                        }  
                    )
                }
            }
        }
  
    )
  
    return $employees
  
}