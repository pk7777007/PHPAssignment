<?php include 'common/header.php'; ?>

<?php
$sql = 'SELECT * from profile';
$result = mysqli_query($conn, $sql);
$profiles = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>

<div class="container">
  <h3>Profiles</h3>
  <?php if (empty($profiles)) : ?>
    No profiles found. Click <a href="./create_profile.php">here</a> to create profile.
  <?php endif; ?>
  <?php if (($profiles)) : ?>
    <div> Click <a href="./create_profile.php">here</a> to create more profiles.</div>
  <?php endif; ?>

  <div class="profile-list">
    <?php foreach ($profiles as $item) : ?>
      <div class="list-item p-2">
        <div class="d-flex justify-content-between">
          <div class="name">
            <?php echo $item['name']; ?>
          </div>
          <div class="email">
            <?php echo $item['email']; ?>
          </div>
        </div>
        <div class="bio">
          <?php echo $item['bio']; ?>
        </div>
      </div>
      <button onclick="<?php
                        $id = $item['id'];
                        $query = "DELETE FROM profiles WHERE id = '$id';";
                        $result = mysqli_query($conn, $query);
                        if ($result) {
                          mysqli_close($conn);
                          header("location: /assignment");
                          exit();
                        } else {
                          echo "Error deleting record";
                        }
                        ?>">Delete</button>
    <?php endforeach; ?>

  </div>
</div>
<?php include 'common/footer.php'; ?>
</body>
