<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<br>
<h3>Mi compra</h3>

<table class="table table-light table-bordered">
    <tbody>
        <tr>
            <th width="40%">Description</th>
            <th width="150%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="20%" class="text-center">Total</th>
            <th width="5%">--</th>
        </tr>
        <tr>
            <td width="40%">VESTIDO</td>
            <td width="150%" class="text-center">1</td>
            <td width="20%" class="text-center">$350</td>
            <td width="20%" class="text-center">$300</td>
            <td width="5%"> <button class="btn btn-danger" type="button">Eliminar</button> </td>
        </tr>
        <tr>
            <td width="40%">VESTIDO</td>
            <td width="150%" class="text-center">1</td>
            <td width="20%" class="text-center">$350</td>
            <td width="20%" class="text-center">$300</td>
            <td width="5%"> <button class="btn btn-danger" type="button">Eliminar</button> </td>
        </tr>

        <tr>
            <td colspan="3" alig="right"><h3>Total</h3></td>
            <td alig="right"><h3>$<?php echo number_format(300, 2); ?></h3></td>
            <td></td>
        </tr>
    </tbody>
</table>

<?php
include 'templates/pie.php';
?>