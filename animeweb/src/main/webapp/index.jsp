<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome To My Word</title>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/commonStyle.css" rel="stylesheet">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<!-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> -->
<script src="js/jquery-3.2.1.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
#mainTable tr{
	 display:block; /*将tr设置为块体元素*/
    margin:10px 0;  /*设置tr间距为2px*/
}
#mainTable img{
	width: 80px;
    height: 66px;
}
</style>
</head>
<body>
<div class="divMain">
<div class="topDiv"></div>
<!-- 导航条 -->
<div class="brandDiv">
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- <a class="navbar-brand" href="#">Brand</a> -->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">七月新番 <span class="sr-only">(current)</span></a></li>
        <!-- <li><a href="#">Link</a></li> -->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">热血动漫<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">海贼王</a></li>
            <li><a href="#">火影忍者</a></li>
            <li><a href="#">死神</a></li>
            <li><a href="#">妖精的尾巴</a></li>
          </ul>
        </li>
        <li><a href="#">站长推荐</a></li>
        <li><a href="#">动漫分类</a></li>
        <li><a href="#">动漫专栏</a></li>
        <li><a href="#">音乐专栏</a></li>
        <li><a href="#">本站论坛</a></li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

<!-- 滚动图 -->
<div class="carouseDiv">
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="http://www.dilidili.wang/uploads/allimg/170825/6_1817345601.jpg" style="float: left" alt="">
      <img src="http://www.dilidili.wang/uploads/allimg/170818/2_1953546751.jpg" style="float: left" alt="">
      <img src="http://www.dilidili.wang/uploads/allimg/170816/6_1141341841.jpg" style="float: left" alt="">
      <div class="carousel-caption"></div>
    </div>
    <div class="item">
       <img src="http://www.dilidili.wang/uploads/allimg/170825/6_1817345601.jpg" style="float: left" alt="">
      <img src="http://www.dilidili.wang/uploads/allimg/170818/2_1953546751.jpg" style="float: left" alt="">
      <img src="http://www.dilidili.wang/uploads/allimg/170816/6_1141341841.jpg" style="float: left" alt="">
      <div class="carousel-caption"></div>
    </div>
    <div class="item">
       <img src="http://www.dilidili.wang/uploads/allimg/170825/6_1817345601.jpg" style="float: left" alt="">
      <img src="http://www.dilidili.wang/uploads/allimg/170818/2_1953546751.jpg" style="float: left" alt="">
      <img src="http://www.dilidili.wang/uploads/allimg/170816/6_1141341841.jpg" style="float: left" alt="">
      <div class="carousel-caption"></div>
    </div>
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

<!-- 每日更新 -->
<div class="DropdownsDiv">
	<h3>一周更新时间表</h3>
	<div>
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#monday" aria-controls="monday" role="tab" data-toggle="tab">Mon.</a></li>
	    <li role="presentation"><a href="#tuesday" aria-controls="tuesday" role="tab" data-toggle="tab">Tues.</a></li>
	    <li role="presentation"><a href="#wednesday" aria-controls="wednesday" role="tab" data-toggle="tab">Wed.</a></li>
	    <li role="presentation"><a href="#thurday" aria-controls="thurday" role="tab" data-toggle="tab">Thur.</a></li>
	  	<li role="presentation"><a href="#friday" aria-controls="friday" role="tab" data-toggle="tab">Fri.</a></li>
	  	<li role="presentation"><a href="#saturday" aria-controls="saturday" role="tab" data-toggle="tab">Sat.</a></li>
	  	<li role="presentation"><a href="#sunday" aria-controls="sunday" role="tab" data-toggle="tab">Sun.</a></li>
	  </ul>
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="monday">
			<table class="weeklyAnime" id="mainTable">
				<tr>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
				</tr>
				<tr>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
				</tr>
				<tr>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
					<td>
					  <div class="media">
						<div class="media-left">
							<a href="#"><img class="img-rounded" class="media-object" src="http://www.dilidili.wang/uploads/allimg/170628/6_1713261322.jpg"alt="第一话"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">狂赌之渊</h4>
							<p>更新：第7话</p>
						</div>
					  </div>
					</td>
				</tr>
			</table>
		</div>
	    <div role="tabpanel" class="tab-pane" id="tuesday">.这是礼拜一.</div>
	    <div role="tabpanel" class="tab-pane" id="wednesday">这是礼拜一..</div>
	    <div role="tabpanel" class="tab-pane" id="thurday">这是礼拜一..</div>
	    <div role="tabpanel" class="tab-pane" id="friday">这是礼拜一..</div>
	    <div role="tabpanel" class="tab-pane" id="saturday">这是礼拜一..</div>
	    <div role="tabpanel" class="tab-pane" id="sunday">这是礼拜一..</div>
	  </div>
	</div>
</div>
<!-- 热门排行 -->
<div class="TogglableTabs">
	<div class="page-header">
  		<h1>热门排行<small>hot</small></h1>
	</div>
			<div>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#thisMonth"
						aria-controls="thisMonth" role="tab" data-toggle="tab">本月人气</a></li>
					<li role="presentation"><a href="#animeOrder"
						aria-controls="animeOrder" role="tab" data-toggle="tab">国漫排行</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="thisMonth">
						<ul class="list-group">
							<li class="list-group-item"><a href="/anime/kdzy/" target="_blank">狂赌之渊</a></li>
							<li class="list-group-item"><a href="/anime/dzzhxsj/" target="_blank">带着手机闯异世界</a></li>
							<li class="list-group-item"><a href="/anime/lianaiyhuangyan/" target="_blank">恋爱禁止的世界</a></li>
							<li class="list-group-item"><a href="/anime/qsandmf/" target="_blank">骑士与魔法</a></li>
							<li class="list-group-item"><a href="/anime/qzxdys/" target="_blank">裙子下的野兽</a></li>
							<li class="list-group-item"><a href="/anime/sakulataseito/" target="_blank">重启咲良田</a></li>
							<li class="list-group-item"><a href="/anime/danchunnvhai/" target="_blank">单蠢女孩</a></li>
							<li class="list-group-item"><a href="/anime/fdgqjdcg/" target="_blank">梵蒂冈奇迹调查官</a></li>
							<li class="list-group-item"><a href="/anime/trapntr/" target="_blank">捏造陷阱NTR</a></li>
							<li class="list-group-item"><a href="/anime/ultramangeed/" target="_blank">捷德奥特曼</a></li>
						</ul>
					</div>
					<div role="tabpanel" class="tab-pane" id="animeOrder">
						<ul class="list-group">
							<li class="list-group-item"><a href="/anime/hyxhn/" target="_blank">狐妖小红娘</a></li>
							<li class="list-group-item"><a href="/anime/nvwaczrjtv/" target="_blank">女娲成长日记</a></li>
							<li class="list-group-item"><a href="/anime/yzdmx2/" target="_blank">勇者大冒险第二季</a></li>
							<li class="list-group-item"><a href="/anime/muwangzw/" target="_blank">墓王之王</a></li>
							<li class="list-group-item"><a href="/anime/theoutcasti/" target="_blank">一人之下</a></li>
							<li class="list-group-item"><a href="/anime/kssg/" target="_blank">口水三国</a></li>
							<li class="list-group-item"><a href="/anime/affinity/" target="_blank">灵契</a></li>
							<li class="list-group-item"><a href="/anime/killergood/" target="_blank">杀手古德</a></li>
							<li class="list-group-item"><a href="/anime/mashen/" target="_blank">麻神</a></li>
							<li class="list-group-item"><a href="/anime/boomguy/" target="_blank">暴基枪手</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
</div>

</body>
</html>
