<!DOCTYPE html>
<html>
<head>
    <title>Simple PHP Calculator</title>
</head>
<body>
    <h1>Simple PHP Calculator</h1>
    <form method="post">
        <label for="num1">Enter the first number:</label>
        <input type="number" name="num1" id="num1" step="any" required>
        <br>
        <label for="num2">Enter the second number:</label>
        <input type="number" name="num2" id="num2" step="any" required>
        <br>
        <label for="operator">Select an operator:</label>
        <select name="operator" id="operator" required>
            <option value="+">Add</option>
            <option value="-">Subtract</option>
            <option value="*">Multiply</option>
            <option value="/">Divide</option>
        </select>
        <br>
        <input type="submit" value="Calculate">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $operator = $_POST['operator'];
        
        // Perform the calculation
        switch ($operator) {
            case '+':
                $result = $num1 + $num2;
                break;
            case '-':
                $result = $num1 - $num2;
                break;
            case '*':
                $result = $num1 * $num2;
                break;
            case '/':
                if ($num2 != 0) {
                    $result = $num1 / $num2;
                } else {
                    $result = "Error! Division by zero.";
                }
                break;
            default:
                $result = "Error! Invalid operator.";
                break;
        }

        // Display the result
        echo "<h2>Result:</h2>";
        echo "<p>The result of $num1 $operator $num2 is: $result</p>";
    }
    ?>
</body>
</html>
