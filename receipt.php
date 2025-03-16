<?php
$conn = mysqli_connect("localhost", "root", "", "hacker");

if (!$conn) {
    echo "Not connected";
}

if (isset($_GET['recep'])) {
    $delete_id = $_GET['recep'];
    $sql2 = mysqli_query($conn, "SELECT * FROM att WHERE id='$delete_id'");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Receipt</title>

    <!-- Bootstrap for better styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Responsive Styling */
        body {
            background: linear-gradient(to right, #ece9e6, #ffffff);
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .receipt-container {
            background: #fff;
            border-radius: 15px;
            padding: 20px;
            width: 90%;
            max-width: 450px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
            text-align: center;
        }

        h2 {
            color: #ff8c00;
            font-family: Algerian, sans-serif;
            font-size: 28px;
        }

        .receipt-table {
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background: #ff8c00;
            color: white;
            padding: 10px;
            text-transform: uppercase;
        }

        td {
            background: #f4f4f4;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        /* Print Button */
        .print-btn {
            background: skyblue;
            color: white;
            border: none;
            padding: 12px 20px;
            margin-top: 15px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .print-btn:hover {
            background: pink;
        }

        /* Fade-in Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>

    <script>
        function printReceipt() {
            document.getElementById('print-btn').style.display = 'none'; // Hide button before printing
            window.print();
            document.getElementById('print-btn').style.display = 'block'; // Show button after printing
        }
    </script>
</head>
<body>

    <div class="receipt-container">
        <h2>Receipt</h2>

        <?php if (mysqli_num_rows($sql2) > 0): ?>
            <table class="receipt-table">
                <?php while ($row = mysqli_fetch_assoc($sql2)): ?>
                    <tr><td><strong>Date:</strong> <?= $row['dof']; ?></td></tr>
                    <tr><td><strong>Name:</strong> <?= $row['fn'] . " " . $row['ln']; ?></td></tr>
                    <tr><td><strong>Contact No:</strong> <?= $row['cn']; ?></td></tr>
                    <tr><td><strong>Paid Amount:</strong> ₹<?= $row['pa']; ?></td></tr>
                    <tr><td><strong>Balance Amount:</strong> ₹<?= $row['ba']; ?></td></tr>
                <?php endwhile; ?>
            </table>
        <?php else: ?>
            <p>No receipt found.</p>
        <?php endif; ?>

        <!-- Print Button -->
        <button id="print-btn" class="print-btn" onclick="printReceipt();">Print</button>
    </div>

</body>
</html>
