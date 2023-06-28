<%@ Page Language="C#" AutoEventWireup="true" CodeFile="flowers.aspx.cs" Inherits="flowers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Flowers</title>
    <link rel="stylesheet" href="flowers.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="nav">

        <a href="Home.aspx" class="nav-link">HOME</a>

        <a class="nav-link">
            <div class="img-div">
                <img class="icon" src="/img/111111.jpg" alt=""/>
                <img class="icon" src="/img/login.png" alt=""/>
            </div>
        </a>
    </div>
    <div class="first-section">
        <div class="img-frame">
            <img class="first-flower" src="img/5b568326908acb3a44dabcad7ef6ec0c.jpg" alt=""/>
        </div>
        <div class="center-line"></div>
        <div class="first-content">
            <p>
                The shop was closed. Or you had doubts — 
                The sort that minds like ours 
                Dream up incessantly. You thought 
                I might not want your flowers.
            </p>
            <span class="author">
                Wendy Cope
            </span>
        </div>
    </div>
    <div class="second-section">
        <div class="horizontal-title">
            <div class="static-txt">You Know? </div>
                <ul class="dynamic-txts">
                    <li><span>Different Flowers has</span></li>
                    <li><span>Different meanings</span></li>
                   
                </ul>   
            <!-- <p>Different Flowers has different  </p>
            <p>meanings</p> -->
        </div>
        <div class="second-content">
            <img class="first" src="img/917544139c44bb2ad954b5d1cd36f25e.png" alt="">
            <div class="vertical-title">
                <p>UNIQUE THINGS ABOUT FLOWERS</p>
            </div>
            <img class="second" src="img/917544139c44bb2ad954b5d1cd36f25eii.png" alt="">
        </div>
    </div>
    <div class="third-title">
        <p>Tutlips</p>
    </div>
    <div class="third-section">
        
        <div class="img-frame">
            <img class="first-flower" src="img/111111.jpg" alt="">
        </div>
        <div class="center-line"></div>
        <div class="third-content">
            <h4>perfect and deep love</h4>
            <p>
                The most known meaning of tulips is perfect and deep love. As tulips are a classic flower that has been loved by many for centuries they have been attached with the meaning of love. They're ideal to give to someone who you have a deep, unconditional love for, whether it's your partner, children, parents or siblings.
            </p>
        </div>
    </div>
    <div class="fourth-title">
        <p>sunflowers</p>
    </div>
    <div class="fourth-section">
        <div class="fourth-content">
            <h4>unwavering faith</h4>
            <p>
                Sunflowers symbolize unwavering faith and unconditional love. It's perfect to send to your loved one if you want to express exactly how much you adore him or her. Sunflowers, especially the ones grown in farms, are often photographed stretching their tall stalks and vibrant petals towards the sun.
            </p>
        </div>
        <div class="center-line"></div>
        <div class="img-frame">
            <img class="first-flower" src="img/8d0efc6d1931134a3d657299ea1028b4.jpg" alt="">
        </div>
    </div>
    <div class="fifth-title">
        <p>roses</p>
    </div>
    <div class="fifth-section">
        
        <div class="img-frame">
            <img class="first-flower" src="img/869b0d6e92ba498720a863ac7c775179.jpg" alt="">
        </div>
        <div class="center-line"></div>
        <div class="fifth-content">
            <p>
                Roses are England’s national flower. In the fifteenth century, they represented two important families — the Lancasters and the Yorks. The War of the Roses occurred in England between 1455 and 1487 when the house of Lancaster, represented by a red rose, and the house of York, represented by a white rose, competed with each other to rule England.
            </p>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
