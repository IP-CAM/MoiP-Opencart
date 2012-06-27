<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
    <div class="left"></div>
    <div class="right"></div>
    <div class="heading">
        <h1 style="background-image: url('view/image/payment.png');"><?php echo $heading_title; ?></h1>
        <div class="buttons">
            <a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a>
            <a onclick="location='<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a>
        </div>
    </div>
    <div class="content" style="min-height:1100px;">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
            <table class="form">
                <tr>
                    <td><?php echo $entry_status; ?></td>
                    <td><select name="moip_status">
                            <?php if ($moip_status) { ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                    </select></td>
                </tr>
                <tr>
                    <td>
						<span class="required">*</span> <?php echo $entry_razao; ?>
						<span class="help"><?php echo $help_razao; ?></span>
					</td>
                    <td>
                        <input type="text" name="moip_razao" value="<?php echo $moip_razao; ?>" />
                        <br />
                        <?php if (isset($error_razao)) { ?>
                        <span class="error"><?php echo $error_razao; ?></span>
                        <?php } ?></td>
                </tr>
                
                
                
                
                <tr>
                    <td><span class="required">*</span> <?php echo $entry_apitoken; ?></td>
                    <td>
                        <input type="text" name="moip_apitoken" value="<?php echo $moip_apitoken; ?>" size="40" />
                                           </td>  
                </tr>
                
                <tr>
                    <td><span class="required">*</span> <?php echo $entry_apikey; ?></td>
                    <td>
                        <input type="text" name="moip_apikey" value="<?php echo $moip_apikey; ?>" size="45"/>
						<?php if (isset($erro_apikey)) { ?>
						<span class="error"><?php echo $erro_apikey; ?></span>
						<?php } ?>
                       </td>
                </tr>
                <tr>
                    <td><span class="required">*</span><?php echo $entry_test; ?></td>
                    <td><?php if ($moip_test) { ?>
                        <input type="radio" name="moip_test" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <input type="radio" name="moip_test" value="0" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="moip_test" value="1" />
                        <?php echo $text_yes; ?>
                        <input type="radio" name="moip_test" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } ?>
						<?php if (isset($erro_test)) { ?>
						<span class="error"><?php echo $erro_test; ?></span>
						<?php } ?>
						</td>
                </tr>
				
				<tr>
                    <td><span class="required">*</span><?php echo $entry_notify; ?></td>
                    <td>
						<?php if ($moip_notify) { ?>
						<input type="radio" name="moip_notify" checked value="1" /><?php echo $text_yes; ?>
						<input type="radio" name="moip_notify" value="0" /><?php echo $text_no; ?>
						<?php }else{ ?>
						<input type="radio" name="moip_notify" value="1" /><?php echo $text_yes; ?>
						<input type="radio" name="moip_notify" checked value="0" /><?php echo $text_no; ?>
						<?php } ?>
						<?php if (isset($erro_notify)) { ?>
						<span class="error"><?php echo $erro_notify; ?></span>
						<?php } ?>
					</td>
                </tr>
                <tr>
                    <td>
						<?php echo $entry_autorizdo; ?>
                        <span class="help"><?php echo $help_autorizado; ?></span>
					</td>
                    <td><select name="moip_autorizado" id="moip_autorizado">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_autorizado) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select></td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_iniciado; ?>
						<span class="help"><?php echo $help_iniciado; ?></span>
					</td>
                    <td><select name="moip_iniciado" id="moip_iniciado">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_iniciado) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_boletoimpresso; ?>
						<span class="help"><?php echo $help_boletoimpresso; ?></span>
					</td>
                    <td><select name="moip_boletoimpresso" id="moip_boletoimpresso">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_boletoimpresso) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_concluido; ?>
						<span class="help"><?php echo $help_concluido; ?></span>
					</td>
                    <td><select name="moip_concluido" id="moip_concluido">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_concluido) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_cancelado; ?>
						<span class="help"><?php echo $help_cancelado; ?></span>
					</td>
                    <td><select name="moip_cancelado" id="moip_cancelado">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_cancelado) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_emanalise; ?>
						<span class="help"><?php echo $help_emanalise; ?></span>
					</td>
                    <td><select name="moip_emanalise" id="moip_emanalise">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_emanalise) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_estornado; ?>
						<span class="help"><?php echo $help_estornado; ?></span>
					</td>
                    <td><select name="moip_estornado" id="moip_estornado">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_estornado) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_revisao; ?>
						<span class="help"><?php echo $help_revisao; ?></span>
					</td>
                    <td><select name="moip_revisao" id="moip_revisao">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_revisao) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
				
				<tr>
                    <td>
						<?php echo $entry_reembolsado; ?>
						<span class="help"><?php echo $help_reembolsado; ?></span>
					</td>
                    <td><select name="moip_reembolsado" id="moip_reembolsado">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if ($order_status['order_status_id'] == $moip_reembolsado) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                <?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>">
                            <?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
					</td>
                </tr>
                <tr>
                    <td><?php echo $entry_geo_zone; ?></td>
                    <td><select name="moip_geo_zone_id">
                            <option value="0"><?php echo $text_all_zones; ?></option>
                            <?php foreach ($geo_zones as $geo_zone) { ?>
                            <?php if ($geo_zone['geo_zone_id'] == $moip_geo_zone_id) { ?>
                            <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected">
                            <?php echo $geo_zone['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                    </select></td>
                </tr>
                <tr>
                    <td><?php echo $entry_sort_order; ?></td>
                    <td><input type="text" name="moip_sort_order" value="<?php echo $moip_sort_order; ?>" size="1" /></td>
                </tr>
            </table>
        </form>
		<span class="help">Autores: Valdeir Santana &lt;valdeirpsr@hotmail.com.br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Glauco Juniores &lt;csakaos@hotmail.com&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Manoel Vidal &lt;manoelvidal@opencartbrasil.com.br&gt;
		</span>
    </div>
</div>
<?php echo $footer; ?>
