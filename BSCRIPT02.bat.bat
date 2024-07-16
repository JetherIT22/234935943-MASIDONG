@echo off

:menu
cls
echo.
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
echo 4. Exit
set /p choices="Enter your choice (1, 2, 3, or 4): "

if "%choices%"=="1" goto circle
if "%choices%"=="2" goto triangle
if "%choices%"=="3" goto quadrilateral
if "%choices%"=="4" goto exit
echo Invalid choice. Please try again!.
goto menu

:circle
set /p radius="Enter the radius of the Circle: "
set /a area=314 * %radius% * %radius% / 100
echo The Area of the Circle is %area%
pause
goto menu

:triangle
set /p a="Enter the length of side A: "
set /p b="Enter the length of side B: "
set /p c="Enter the length of side C: "

set /a s=(%a% + %b% + %c%) / 2
set /a area=s*(s-%a%)*(s-%b%)*(s-%c%)
set /a area=%area% ** 0.5

if %a%==%b% if %b%==%c% (
    echo The triangle is equilateral.
    goto triangle_end
)

if %a%==%b% (
    echo The triangle is Isosceles.
    goto triangle_end
)
if %a%==%c% (
    echo The triangle is Isosceles.
    goto triangle_end
)
if %b%==%c% (
    echo The triangle is Isosceles.
    goto triangle_end
)

echo The triangle is Scalene.

:triangle_end
echo The area of the triangle is %area%
pause
goto menu

:quadrilateral
set /p length="Enter the length of the quadrilateral: "
set /p width="Enter the width of the quadrilateral: "
set /a area=%length% * %width%
echo The area of the quadrilateral is %area%

if %length%==%width% (
    echo The Quadrilateral is a Square.
) else (
    echo The Quadrilateral is a Rectangle.
)
pause
goto menu

:exit
pause
exit
