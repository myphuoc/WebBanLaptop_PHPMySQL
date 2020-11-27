<div class="left" style="padding:0px; background:#dcd4c6">
	<?php
		if(!isset($_SESSION['user'])){
			echo '
			<form action="act-dangnhap.php" method="POST">
				<table class="dangnhap" style="width:100%; background:#dcd4c6">
					<tr>
						<th>ĐĂNG NHẬP</th>
					</tr>
					<tr>
						<td>
							<input type="text" name="user" style="border:#888 1px solid; margin-left: 10px; background: #f1f1f1; padding:10px; border-radius: 10px;" placeholder="Tài khoản:"/>
						<td>
					</tr>
					<tr>
						<td>
							<input type="password" name="pass" style="border:#888 1px solid;  margin-left: 10px; background: #f1f1f1;padding:10px; border-radius: 10px;" placeholder="Mật khẩu: "/>
						<td>
					</tr>
						<tr>
						<td>
							<a href="dkm.php"><input type="button" name="dkm" value="Đăng ký mới" style="border-top-left-radius:5px; padding:5px; border-color:#888;font-weight: bold; background-color:#888; color:white; margin:10px 10px;"/></a>
							<input type="submit" name="login" value="Đăng nhập" style="font-weight: bold;border-top-left-radius:5px; padding:5px; border-color:#888; background-color:#888; color:white;"/>
						</td>
					</tr>
					<tr><td colspan="2"><hr/></td></tr>
				</table>
			</form>';
		}else{
			echo '<table class="dangnhap" style="width:100%; background:#dcd4c6">';
			include_once('conn.php');
			$user=$_SESSION['user'];
			$pass=$_SESSION['pass'];
			$sql='select * from users where username like "'.$user.'" and password like "'.$pass.'"';
			$result=mysqli_query($con,$sql);
			if(mysqli_num_rows($result)){
				while($row=mysqli_fetch_assoc($result)){
					if($user!='admin'){
						echo '
						<tr><td colspan="2"><br></td></tr>
						<tr>
							<td style="color:blue; font-weight:bold;">HELLO: </td>
							<td>'.$row['username'].'</td>
							<td>
								<a href="logout.php"><input type="button" name="logout"  value="LOGOUT" style="background:#f1bc80; color:black; padding:5px; font-weight: bold; border-radius: 5px;"/></a>
							</td>
						</tr>
						</table>
						<table style="width:100%; background:#dcd4c6">
							<tr><td colspan="2"><hr/></td></tr>
							
							<tr>
								<td colspan="2">
									<a href="update_profile.php?user_id='.$row['user_id'].'" style="font-weight: bold;  padding-left: 15px;">Tài khoản.</a>
								</td>
							</tr>
							<tr><td colspan="2"><hr></td></tr>
							<tr>
								<td colspan="2">
									<a href="donhang.php?user_id='.$row['user_id'].'" style="font-weight: bold; padding-left: 15px;">Lịch sử đơn hàng</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="shoppingcart.php"><img src="images/shopping-cart.jpg" alt="shopping-cart" name="cart" style="margin-left:10px; border-radius:23px;" /></a>
								</td>';
									if (isset($_SESSION['giohang'])) {
										$sl = count($_SESSION['giohang']);
										echo '<th border=1 style="background:#f1f1f1;margin-right:10px; border-radius:10px;">Số lượng: '.$sl.' </th>';
									}else {
										echo '<th border=1 style="background:#f1f1f1;margin-right:10px; border-radius:10px;">Số lượng: 0</th>';
									}
								echo '
							</tr>
							<tr><td colspan="2"><br></td></tr>
							<tr><td colspan="2"><hr/></td></tr>';
					}else{
						header('location:admin.php');
					}
				}
			}echo '
						</table>';
		}
		echo '<h2>Sản phẩm</h2><br>';
		include_once('conn.php');
		$sql='select * from catalogs';
		$result=mysqli_query($con,$sql);
		if(mysqli_num_rows($result)>0){
			while($row=mysqli_fetch_assoc($result)){
				echo '<a href="list.php?id='.$row['catalog_id'].'" style="margin-left:20px;color:black;">'.$row['name'].'</a><br/><br/>';
			}
		}
	?>
</div>