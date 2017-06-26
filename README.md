<div class="blog_content">
    <div class="iteye-blog-content-contain">

<h3>The latest update</h3>
<ol>
<li>Canal qq discussion group has been established, group number: 161559791, welcome to join the technical discussion.</li>
<li>Canal consumer side project open source: Otter (distributed database synchronization system), address: https://github.com/alibaba/otter
</a></li>
</ol>

<h1>Background</h1>
<p style="font-size: 14px;">Early, Alibaba B2B companies because of the existence of Hangzhou and the United States dual-room deployment, there is a cross-room synchronization business needs. However, the early database synchronization business, mainly based on the trigger way to obtain incremental changes, but since 2010, the Department of the company began to gradually try to log based on the database analysis, access to incremental changes to synchronize, which derived from the increase The amount of subscription & consumer business, since then opened a new era.</p>
<p style="font-size: 14px;">   Ps. The current version has support mysql and oracle part of the log analysis, the current canal open source version supports 5.7 and below (Ali internal mysql 5.7.13, 5.6.10, mysql 5.5.18 and 5.1.40 / 48)</p>
<p style="font-size: 14px;"> </p>
<p style="font-size: 14px;">Based on log incremental subscriptions & consumer support business:</p>
<ol style="font-size: 14px;">
<li>Database mirroring</li>
<li>Database real-time backup</li>
<li>Multi-level index (seller and buyer each sub-index)</li>
<li>search build</li>
<li>Business cache refresh</li>
<li>Price changes and other important business news</li>
</ol>
<h1>Project Introduction</h1>
<p style="font-size: 14px;">   Name: canal [kə'næl]</p>
<p style="font-size: 14px;">   Waterways / pipes / ditches </p>
<p style="font-size: 14px;">   Language: pure java development</p>
<p style="font-size: 14px;">   Positioning: based on database incremental log analysis, to provide incremental data subscriptions & consumption, the current main support for the mysql</p>
<p style="font-size: 14px;">   Keywords: mysql binlog parser / real-time / queue & topic </p>
<p style="font-size: 14px;"> </p>
<h2>working principle</h2>
<h3 style="font-size: 14px;">Mysql master and backup copy to achieve</h3>
<p><img src="http://dl.iteye.com/upload/attachment/0080/3086/468c1a14-e7ad-3290-9d3d-44ac501a7227.jpg" alt=""><br> From the top, replication is divided into three steps:
<ol>
<li>Master records changes to the binary log (these records are called binary log events, binary log events, can be viewed through show binlog events)；</li>
<li>The slave copies the master binary log events to its relay log; </li>
<li>The slave redo the event in the relay log, which will change its own data. </li>
</ol>
<h3>Canal's working principle: </h3>
<p><img width="590" src="https://camo.githubusercontent.com/46c626b4cde399db43b2634a7911a04aecf273a0/687474703a2f2f646c2e69746579652e636f6d2f75706c6f61642f6174746163686d656e742f303038302f333130372f63383762363762612d333934632d333038362d393537372d3964623035626530346339352e6a7067" alt="" height="273">
<p>The principle is relatively simple:：</p>
<ol>
<li>Canal simulation mysql slave interactive protocol, disguised as mysql slave, mysql master to send the dump agreement</li>
<li>Mysql master received a request to start, to push binary log to the slave (that is, canal)</li>
<li>Canal parse binary log object (original byte stream)</li>
</ol>

<h1>Related documentation</h1>

See the wiki page for : <a href="https://github.com/alibaba/canal/wiki" >wiki documentation</a>

<h3><a name="table-of-contents" class="anchor" href="#table-of-contents"><span class="mini-icon mini-icon-link"></span></a>wiki documentation</h3>
<ul>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/Home">Home</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/Introduction">Introduction</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/QuickStart">QuickStart</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/ClientExample">ClientExample</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/AdminGuide">AdminGuide</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/ClientAPI">ClientAPI</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/DevGuide">DevGuide</a></li>
<li><a class="internal present" href="https://github.com/alibaba/canal/wiki/BinlogChange%28mysql5.6%29">BinlogChange(Mysql5.6)</a></li>
<li><a href="http://alibaba.github.com/canal/release.html">ReleaseNotes</a></li>
<li><a href="https://github.com/alibaba/canal/releases">Download</a></li>
</ul>

<h1>Relevant information</h1>

* ADC Ali Tech Carnival Share ppt (on google docs, may need to over the wall): <a href="https://docs.google.com/presentation/d/1MkszUPYRDkfVPz9IqOT1LLT5d9tuwde_WC8GZvjaDRg/edit?usp=sharing">ppt download</href>  
* [And Alibaba's RocketMQ with the use](https://github.com/alibaba/RocketMQ)

<h1>Related open source</h1>
<ol>
<li>Alibaba distributed database synchronization system (to solve the different room): <a href="http://github.com/alibaba/otter">http://github.com/alibaba/otter</a></li>
<li>Alibaba to Oracle data migration synchronization tool (target support MySQL / DRDS)：<a href="http://github.com/alibaba/yugong">http://github.com/alibaba/yugong</a></li>
</ol>

<h1>feedback</h1>
<ol>
<li>Qq exchange group: 161559791 </li>
<li>Mail exchange: jianghang115@gmail.com </li>
<li>Sina microblogging: agapple0002 </li>
<li>Report issue: <a href="https://github.com/alibaba/canal/issues">issues</a></li>
</ol>

<pre>
[Recruitment] Alibaba middleware team recruitment JAVA senior engineer
The main job for the technical content (non-business sector), Ali middleware the whole system for the future want to have the students in the technical precipitation is still very helpful
Work Location: Hangzhou, Beijing can be. Ps. Ali has always been a good treatment, interested who can QQ, microblogging private chat. 
Specific recruitment content: https: //job.alibaba.com/zhaopin/position_detail.htm? PositionId = 32666
</pre>
