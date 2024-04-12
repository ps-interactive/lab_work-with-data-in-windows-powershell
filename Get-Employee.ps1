Function Get-Employee {

    $employees = @(
        [PSCustomObject]@{
            FirstName = 'Jane'
            LastName  = 'Doe'
            JobTitle  = 'Developer'
            HireDate  = '2022-01-01'
            Salary    = 60000 
        },
        [PSCustomObject]@{
            FirstName = 'John'
            LastName  = 'Smith'
            JobTitle  = 'Project Manager'
            HireDate  = '2020-05-15'
            Salary    = 80000
        },
        [PSCustomObject]@{
            FirstName = 'Sarah' 
            LastName  = 'Davis'
            JobTitle  = 'Senior Developer'
            HireDate  = '2018-11-01'
            Salary    = 120000
        }
    )
  
    return $employees
  
}