<?php
global $dir, $views;
require $dir . $views['displayPlane'];
?>

<!-- Display loading ... -->
<div class="loading">
    loading ...<br>
    <!--<img style="height: 50px; width: 50px" src="resources/images/loading.gif" alt="loading ..."/>-->
</div>


<a-scene physics inspector="url:resources/libraryJS/aframe-inspector.min.js" button-stats="p">

    <?php
    require $dir . $views['loft'];
    require $dir . $views['door'];

    $managementPlane->placeEntity();
    ?>

</a-scene>