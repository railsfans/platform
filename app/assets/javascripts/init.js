Ext.onReady(function() {
	

    var broswer="";
    var platform="";	    
    if(Ext.isIE){ 	
        if(Ext.isIE6){
            broswer = "Internet Explorer 6.x"
        }else if(Ext.isIE7){
            broswer = "Internet Explorer 7.x"
        }else if(Ext.isIE8){
            broswer = "Internet Explorer 8.x"
        }
    }else if(Ext.isSafari){
        if(Ext.isSafari2){
            broswer = "Safari 2.x"
        }else if(Ext.isSafari3){
           broswer = "Safari 3.x"
        }else if(Ext.isSafari4){
            broswer = "Safari 4.x"
        }
    }else if(Ext.isChrome){
        broswer = "Chrome"
    }else if(Ext.isGecko){
        broswer = "Firefox"
        if(Ext.isGecko2){
            broswer = "Firefox 2.x"
        }else if(Ext.isGecko3){
            broswer = "Firefox 3.x"
        }
    }else if(Ext.isOpera){
        broswer = "Opera"
    }else if(Ext.isWebKit){
        broswer = "WebKit"
    }else{
        broswer = "unknown"
    }    
    if(Ext.isWindows){
        platform = "Windows"
    }else if(Ext.isLinux){
        platform = "Linux"
    }else if(Ext.isMac){
        platform = "Mac OS"
    }else{
        broswer = "unknown"
    }	
    $("#platform").text(platform);	
    $("#broswer").text(broswer);
    
	var mainpanel =new Ext.create('Ext.panel.Panel', {
        width: 150,
        height: 150,
        border: false,
        frame: false,
        layout: 'fit',
    	bodyStyle: "background: #fff url('assets/body.jpg') no-repeat 0px 0px;background-position: 50% 90%;",
    //    bodyStyle:"background-image:url('assets/body.jpg'); no-repeat; padding:55px 5px 0",
    //    style: {
	//	    background:'#ffffff',
	//	    backgroundImage: 'url(assets/body.jpg)',
	//	    backgroundSize: '10% 85%',
	//	    backgroundRepeat: 'no-repeat',
	//	    backgroundPosition: 'bottom left',
	//	},
        html: '<div class="title"><span class="style1">龙湾区公安分局</span><span><li class="style2">征兵政审系统</li><li class="style3">Conscript Political Examination System</li></span></div>'
    });
    
    Ext.QuickTips.init();
    var viewport = Ext.create('Ext.Viewport', {
        id: 'border-example',
        layout: 'border',
        items: [
	        Ext.create('Ext.Component', {
	            region: 'north',
	            height: 100, 
	            contentEl: 'header'
	        }), 
	        {
	            region: 'center', 
	            id: "work-space",
	            border:true,
	            layout:"fit",
	            items: [     
	                mainpanel
	               ]
	        }, {
	            region: 'south',
	            contentEl: 'footer',
	            height: 20,
	        }
		]
    });
});
   
