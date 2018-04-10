<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themes.aspx.cs" Inherits="FineUIPro.EmptyProjectNet40.common.themes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: none !important;
            background-color: #000 !important;
            padding: 0;
        }
        /* 选择主题 */
        #themecontainer ul {
            list-style-type: none;
            margin: 10px 0 0;
            padding: 0;
        }

            #themecontainer ul li {
                display: inline-block;
                margin: 0 10px 10px;
                border: solid 2px #000;
                padding: 5px;
            }

                #themecontainer ul li .title {
                    text-align: center;
                    color: #666;
                    font-size: 13px;
                    margin-top: 5px;
                }

                #themecontainer ul li.hover,
                #themecontainer ul li.active {
                    border-bottom-color: #fff;
                }

                    #themecontainer ul li.hover .title,
                    #themecontainer ul li.active .title {
                        color: #fff;
                        font-weight: bold;
                    }

                #themecontainer ul li img {
                    width: 125px;
                }

        #themecontainer .grouptitle {
            color: #ccc;
            font-size: 16px;
            border-bottom: solid 1px #333;
            padding: 5px;
            margin: 10px;
        }

        #themecontainer .note {
            color: #ccc;
            font-size: 11px;
            margin-left: 10px;
            display: inline-block;
        }

            #themecontainer .note a {
                color: #ccc;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server"></f:PageManager>
        <div id="themecontainer">
            <div class="grouptitle">
                内置（Metro）
            </div>
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/default.png" alt="Default" data-value="Default" /></a>
                    <div class="title">Default</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/metro_blue.png" alt="Metro Blue" data-value="Metro_Blue" /></a>
                    <div class="title">Metro Blue</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/metro_dark_blue.png" alt="Metro Dark Blue" data-value="Metro_Dark_Blue" /></a>
                    <div class="title">Metro Dark Blue</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/metro_gray.png" alt="Metro Gray" data-value="Metro_Gray" /></a>
                    <div class="title">Metro Gray</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/metro_green.png" alt="Metro Green" data-value="Metro_Green" /></a>
                    <div class="title">Metro Green</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/metro_orange.png" alt="Metro Orange" data-value="Metro_Orange" /></a>
                    <div class="title">Metro Orange</div>
                </li>
            </ul>
            <div class="grouptitle">
                内置（jQuery UI）
            </div>
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/black_tie.png" alt="Black Tie" data-value="Black_Tie" /></a>
                    <div class="title">Black Tie</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/blitzer.png" alt="Blitzer" data-value="Blitzer" /></a>
                    <div class="title">Blitzer</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/cupertino.png" alt="Cupertino" data-value="Cupertino" /></a>
                    <div class="title">Cupertino</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/dark_hive.png" alt="Dark Hive" data-value="Dark_Hive" /></a>
                    <div class="title">Dark Hive</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/dot_luv.png" alt="Dot Luv" data-value="Dot_Luv" /></a>
                    <div class="title">Dot Luv</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/eggplant.png" alt="Eggplant" data-value="Eggplant" /></a>
                    <div class="title">Eggplant</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/excite_bike.png" alt="Excite Bike" data-value="Excite_Bike" /></a>
                    <div class="title">Excite Bike</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/flick.png" alt="Flick" data-value="Flick" /></a>
                    <div class="title">Flick</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/hot_sneaks.png" alt="Hot Sneaks" data-value="Hot_Sneaks" /></a>
                    <div class="title">Hot Sneaks</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/humanity.png" alt="Humanity" data-value="Humanity" /></a>
                    <div class="title">Humanity</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/le_frog.png" alt="Le Frog" data-value="Le_Frog" /></a>
                    <div class="title">Le Frog</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/mint_choc.png" alt="Mint Choc" data-value="Mint_Choc" /></a>
                    <div class="title">Mint Choc</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/overcast.png" alt="Overcast" data-value="Overcast" /></a>
                    <div class="title">Overcast</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pepper_grinder.png" alt="Pepper Grinder" data-value="Pepper_Grinder" /></a>
                    <div class="title">Pepper Grinder</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/redmond.png" alt="Redmond" data-value="Redmond" /></a>
                    <div class="title">Redmond</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/smoothness.png" alt="Smoothness" data-value="Smoothness" /></a>
                    <div class="title">Smoothness</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/south_street.png" alt="South Street" data-value="South_Street" /></a>
                    <div class="title">South Street</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/start.png" alt="Start" data-value="Start" /></a>
                    <div class="title">Start</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/sunny.png" alt="Sunny" data-value="Sunny" /></a>
                    <div class="title">Sunny</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/swanky_purse.png" alt="Swanky Purse" data-value="Swanky_Purse" /></a>
                    <div class="title">Swanky Purse</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/trontastic.png" alt="Trontastic" data-value="Trontastic" /></a>
                    <div class="title">Trontastic</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/ui_darkness.png" alt="UI Darkness" data-value="UI_Darkness" /></a>
                    <div class="title">UI Darkness</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/ui_lightness.png" alt="UI Lightness" data-value="UI_Lightness" /></a>
                    <div class="title">UI Lightness</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/vader.png" alt="Vader" data-value="Vader" /></a>
                    <div class="title">Vader</div>
                </li>
            </ul>
            <div class="grouptitle">
                自定义
            </div>
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/custom_default.png" alt="Custom Default" data-value="custom_default" /></a>
                    <div class="title">Custom Default</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/bootstrap_pure.png" alt="Bootstrap Pure" data-value="bootstrap_pure" /></a>
                    <div class="title">Bootstrap Pure</div>
                </li>
            </ul>
            <div class="grouptitle">
                自定义（纯色背景）
            </div>
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pure_black.png" alt="Pure Black" data-value="pure_black" />
                    </a>
                    <div class="title">Pure Black</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pure_green.png" alt="Pure Green" data-value="pure_green" />
                    </a>
                    <div class="title">Pure Green</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pure_blue.png" alt="Pure Blue" data-value="pure_blue" />
                    </a>
                    <div class="title">Pure Blue</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pure_purple.png" alt="Pure Purple" data-value="pure_purple" />
                    </a>
                    <div class="title">Pure Purple</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pure_orange.png" alt="Pure Orange" data-value="pure_orange" />
                    </a>
                    <div class="title">Pure Orange</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/pure_red.png" alt="Pure Red" data-value="pure_red" />
                    </a>
                    <div class="title">Pure Red</div>
                </li>

            </ul>
            <div class="grouptitle">
                自定义（图片背景）
            <span class="note">注：本分组的背景图片来自网络，版权归原作者！
            </span>
            </div>
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_black_sky.png" alt="Image Black Sky" data-value="image_black_sky" />
                    </a>
                    <div class="title">Image Black Sky</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_green_rain.png" alt="Image Green Rain" data-value="image_green_rain" />
                    </a>
                    <div class="title">Image Green Rain</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_green_drip.png" alt="Image Green Drip" data-value="image_green_drip" />
                    </a>
                    <div class="title">Image Green Drip</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_green_poppy.png" alt="Image Green Poppy" data-value="image_green_poppy" />
                    </a>
                    <div class="title">Image Green Poppy</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_green_lotus.png" alt="Image Green Lotus" data-value="image_green_lotus" />
                    </a>
                    <div class="title">Image Green Lotus</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_blue_sky.png" alt="Image Blue Sky" data-value="image_blue_sky" />
                    </a>
                    <div class="title">Image Blue Sky</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_blue_star.png" alt="Image Blue Star" data-value="image_blue_star" />
                    </a>
                    <div class="title">Image Blue Star</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_blue_moon.png" alt="Image Blue Moon" data-value="image_blue_moon" />
                    </a>
                    <div class="title">Image Blue Moon</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_blue_drip.png" alt="Image Blue Drip" data-value="image_blue_drip" />
                    </a>
                    <div class="title">Image Blue Drip</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_purple_fog.png" alt="Image Purple Fog" data-value="image_purple_fog" />
                    </a>
                    <div class="title">Image Purple Fog</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_orange_light.png" alt="Image Orange Light" data-value="image_orange_light" />
                    </a>
                    <div class="title">Image Orange Light</div>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../res/images/themes/small/image_red_dawn.png" alt="Image Red Dawn" data-value="image_red_dawn" />
                    </a>
                    <div class="title">Image Red Dawn</div>
                </li>
            </ul>
        </div>

        <div style="display: none;">
            <!-- 缓存背景图片 -->
            <img src="../res/themes/image_black_sky/sky.jpg" />
            <img src="../res/themes/image_blue_drip/drip.jpg" />
            <img src="../res/themes/image_blue_moon/moon.jpg" />
            <img src="../res/themes/image_blue_sky/sky.jpg" />
            <img src="../res/themes/image_blue_star/star.jpg" />
            <img src="../res/themes/image_green_drip/drip.jpg" />
            <img src="../res/themes/image_green_lotus/lotus.jpg" />
            <img src="../res/themes/image_green_poppy/poppy.jpg" />
            <img src="../res/themes/image_green_rain/rain.jpg" />
            <img src="../res/themes/image_orange_light/light.jpg" />
            <img src="../res/themes/image_purple_fog/fog.jpg" />
            <img src="../res/themes/image_red_dawn/dawn.jpg" />
        </div>

    </form>
    <script>
        F.ready(function () {
            // 选择主题窗口
            $('#themecontainer li').hover(function () {
                $(this).addClass('hover');
            }, function () {
                $(this).removeClass('hover');
            }).click(function () {
                //var imgSrcRegex = /([^\.\/]+)\.png$/.exec(imgSrc);
                var imgNode = $(this).find('img');

                var themeName = imgNode.attr('data-value');
                F.cookie('Theme_Pro', themeName, {
                    expires: 100  // 单位：天
                });

                var themeTitle = imgNode.attr('alt');
                F.cookie('Theme_Pro_Title', themeTitle, {
                    expires: 100  // 单位：天
                });

                top.window.location.reload();
            });


            // 初始化
            var themeName = F.cookie('Theme_Pro');
            if (!themeName) {
                themeName = 'pure_green';
            }
            themeName = themeName.toLowerCase();
            $('#themecontainer li').each(function () {
                var cnode = $(this);
                if (cnode.find('img').attr('data-value').toLowerCase() === themeName) {
                    cnode.addClass('active');
                } else {
                    cnode.removeClass('active');
                }
            });
        });
    </script>
</body>
</html>
