<head><meta charset="utf-8">    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"><style>body{background:lightyellow;}</style></head><?php$conn=mysqli_connect("localhost","root","","hacker");if(!$conn){echo "not connected";}$result=mysqli_query($conn,"select * from chat_login");?><div class="card">  <div class="card-body">  <table class="table table-hover table-bordered table-dark">  <thead>    <tr>      <th scope="col">ID</th>      <th scope="col">Username</th>      <th scope="col">Password</th>      <th scope="col">Confirm Password</th>            <th scope="col">Delete</th>    </tr>  </thead>  <?php$i=1;while($row=mysqli_fetch_array($result,MYSQLI_ASSOC)){$idn=$row['id'];$fnn=$row['user'];$lnn=$row['pass'];$cnn=$row['cpass'];?><tbody>    <tr>      <th scope="row"><?php echo $idn; ?></th>      <td><?php echo $fnn; ?></td><td><?php echo $lnn; ?></td><td><?php echo $cnn; ?></td><td><a href="del_user.php?delete=<?php echo $idn; ?>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this User?');"><span class="glyphicon glyphicon-trash"></span></a></td>        </tr>  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script><?php $i++; }?>