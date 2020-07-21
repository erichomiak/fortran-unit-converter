PROGRAM P1
  INTEGER input, looping
  DOUBLE PRECISION kg, lbs, ft, m, f, c, value
  looping = 1
  DO WHILE (looping .EQ. 1)
   WRITE(*,*) 'Enter a conversion option (1-6 or 0 to exit):'
   WRITE(*,*) '--------------------'
   WRITE(*,*) '(1) Pounds to Kilograms'
   WRITE(*,*) '(2) Kilograms to Pounds'
   WRITE(*,*) '(3) Feet to Meters'
   WRITE(*,*) '(4) Meters to Feet'
   WRITE(*,*) '(5) Fahrenheit to Celsius'
   WRITE(*,*) '(6) Celsius to Fahrenheit'
   WRITE(*,*) '(0) Exit this program'
   WRITE(*,*) '--------------------'
   READ(*,*) input
   IF (input .EQ. 1) THEN
    WRITE(*,*) 'Enter the value you wish to convert'
    READ(*,*) value
    kg = value * 0.45359237
    WRITE(*,*) 'The value in kilograms is ', kg
    WRITE(*,*) '--------------------'
   ELSE IF (input .EQ. 2) THEN
    WRITE(*,*) 'Enter the value you wish to convert'
    READ(*,*) value
    lbs = value / 0.45359237
    WRITE(*,*) 'The value in pounds is ', lbs
    WRITE(*,*) '--------------------'
   ELSE IF (input .EQ. 3) THEN
    WRITE(*,*) 'Enter the value you wish to convert'
    READ(*,*) value
    m = value * 0.3048
    WRITE(*,*) 'The value in meters is ', m
    WRITE(*,*) '--------------------'
   ELSE IF (input .EQ. 4) THEN
    WRITE(*,*) 'Enter the value you wish to convert'
    READ(*,*) value
    ft = value / 0.3048
    WRITE(*,*) 'The value in feet is ', ft
    WRITE(*,*) '--------------------'
   ELSE IF (input .EQ. 5) THEN
    WRITE(*,*) 'Enter the value you wish to convert'
    READ(*,*) value
    c = (value - 32) / 1.8
    WRITE(*,*) 'The value in Celsius is ', c
    WRITE(*,*) '--------------------'
  ELSE IF (input .EQ. 6) THEN
    WRITE(*,*) 'Enter the value you wish to convert'
    READ(*,*) value
    f = (value * 1.8) +32
    WRITE(*,*) 'The value in Fahrenheit is ', f
    WRITE(*,*) '--------------------'
   ELSE IF (input .EQ. 0) THEN
    looping = 0
    WRITE(*,*) 'Goodbye'
   ELSE
    WRITE(*,*) 'Input a valid number option'
    WRITE(*,*) '--------------------'
   END IF
 END DO
END
