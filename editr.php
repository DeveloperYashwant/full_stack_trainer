<?php
// Database connection
$conn = mysqli_connect("localhost", "root", "", "hacker");

if (!$conn) {
    die("Database Connection Failed: " . mysqli_connect_error());
}

// Fetching record for editing
if (isset($_GET['edit'])) {
    $edit_id = $_GET['edit'];
    $query = "SELECT * FROM att WHERE id = ?";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, "i", $edit_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        $id = $row['id'];
        $fn = $row['fn'];
        $ln = $row['ln'];
        $cn = $row['cn'];
        $email = $row['email'];
        $dof = $row['dof'];
        $pa = $row['pa'];
        $tpa = $row['tpa'];
        $ba = $row['ba'];
    } else {
        echo "Record Not Found!";
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Fees Receipt</title>
    <style>
        .c1 {
            height: 500px;
            width: 400px;
            position: absolute;
            left: 30%;
            box-shadow: 0px 0px 5px 5px grey;
            top: 80px;
            border-radius: 20px;
            background: white;
        }

        .c2 {
            border: 1px solid orange;
            height: 60px;
            width: 380px;
            position: absolute;
            right: 10px;
            top: 10px;
            background: orange;
            border-radius: 10px;
        }

        .c3 {
            border: 1px solid skyblue;
            height: 400px;
            width: 380px;
            position: absolute;
            right: 10px;
            top: 85px;
            background: skyblue;
            border-radius: 10px;
        }

        .c4 {
            color: white;
            font-size: 30px;
            position: absolute;
            right: 140px;
            top: 10px;
        }

        table {
            color: yellow;
            font-size: 19px;
            font-weight: bold;
        }

        input, textarea {
            border: 1px solid white;
            padding: 3px;
            color: black;
            border-radius: 5px;
            outline: none;
        }

        input[type=submit], input[type=reset] {
            border: 1px solid grey;
            background: grey;
            color: white;
            padding: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type=submit]:hover, input[type=reset]:hover {
            border: 1px solid black;
            background: black;
            color: white;
            padding: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        body {
            background: lightyellow;
        }
    </style>
</head>
<body>
    <div class="c1">
        <div class="c2">
            <div class="c4"><b>Fees Receipt</b></div>
        </div>
        <div class="c3">
            <form action="editr.php?edit_form=<?php echo $id; ?>" method="post">
                <table border="1" align="center" cellspacing="4" cellpadding="6" bordercolor="white">
                    <tr><td>First Name</td><td><input type="text" name="fname" value="<?php echo htmlspecialchars($fn); ?>" required></td></tr>
                    <tr><td>Last Name</td><td><input type="text" name="lname" value="<?php echo htmlspecialchars($ln); ?>" required></td></tr>
                    <tr><td>Contact No</td><td><input type="text" name="cnumber" value="<?php echo htmlspecialchars($cn); ?>" required></td></tr>
                    <tr><td>Email ID</td><td><input type="email" name="email" value="<?php echo htmlspecialchars($email); ?>" required></td></tr>
                    <tr><td>Date of Fees</td><td><input type="date" name="dofees" value="<?php echo $dof; ?>" required></td></tr>
                    <tr><td>Paid Amount</td><td><input type="text" name="pamount" value="<?php echo htmlspecialchars($pa); ?>" required></td></tr>
                    <tr><td>Total Amount</td><td><input type="text" name="tpamount" value="<?php echo htmlspecialchars($tpa); ?>" required></td></tr>
                    <tr><td>Balance Amount</td><td><input type="text" name="bamount" value="<?php echo htmlspecialchars($ba); ?>" required></td></tr>
                    <tr align="center">
                        <td><input type="submit" name="update" value="Update"></td>
                        <td><input type="reset" value="Cancel"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>

<?php
// Update record in database
if (isset($_POST['update'])) {
    $uid = $_GET['edit_form'];
    $ua = mysqli_real_escape_string($conn, $_POST['fname']);
    $ub = mysqli_real_escape_string($conn, $_POST['lname']);
    $uc = mysqli_real_escape_string($conn, $_POST['cnumber']);
    $ud = mysqli_real_escape_string($conn, $_POST['email']);
    $ue = mysqli_real_escape_string($conn, $_POST['dofees']);
    $uf = mysqli_real_escape_string($conn, $_POST['pamount']);
    $ug = mysqli_real_escape_string($conn, $_POST['tpamount']);
    $uh = mysqli_real_escape_string($conn, $_POST['bamount']);

    $updateQuery = "UPDATE att SET fn=?, ln=?, cn=?, email=?, dof=?, pa=?, tpa=?, ba=? WHERE id=?";
    $stmt = mysqli_prepare($conn, $updateQuery);
    mysqli_stmt_bind_param($stmt, "ssssssssi", $ua, $ub, $uc, $ud, $ue, $uf, $ug, $uh, $uid);

    if (mysqli_stmt_execute($stmt)) {
        echo "<script>alert('Update Successfully'); window.location.href='showed.php';</script>";
    } else {
        echo "<script>alert('Update Failed');</script>";
    }
}
?>
