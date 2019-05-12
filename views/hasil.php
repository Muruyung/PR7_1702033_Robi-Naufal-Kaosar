<br>
<br>
<style media="screen">
  table {
    background-color: green;
  }
</style>
<?php
if ($jenis == 'kiri'){
  ?>
    <table border="1">
      <tr>
        <td>kd_kereta</td>
        <td>nama</td>
        <td>kd_kursi</td>
        <td>kd_gerbong</td>
      </tr>
      <tr>
        <td><?php print_r ($query[0]->kd_kereta); ?></td>
        <td><?php print_r ($query[0]->nama); ?></td>
        <td><?php print_r ($query[0]->kd_kursi); ?></td>
        <td><?php print_r ($query[0]->kd_gerbong); ?></td>
      </tr>
    </table>
  <?php
}else
if ($jenis == 'kanan'){
  ?>
    <table border="1">
      <tr>
        <td>kd_kursi</td>
        <td>kd_gerbong</td>
        <td>kd_kereta</td>
        <td>nama</td>
      </tr>
      <tr>
        <td><?php print_r ($query[0]->kd_kursi); ?></td>
        <td><?php print_r ($query[0]->kd_gerbong); ?></td>
        <td><?php print_r ($query[0]->kd_kereta); ?></td>
        <td><?php print_r ($query[0]->nama); ?></td>
      </tr>
    </table>
  <?php
}else {
  // code...
  print_r ($query);
}
 ?>
