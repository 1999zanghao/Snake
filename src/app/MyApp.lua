
require("config")
require("cocos.init")
require("framework.init")

local MyApp = class("MyApp", cc.mvc.AppBase)

-- 构造函数
function MyApp:ctor()
    MyApp.super.ctor(self)
end

-- 场景入口
function MyApp:run()
		cc.Director:getInstance():setContentScaleFactor(640/CONFIG_SCREEN_HEIGHT)
    cc.FileUtils:getInstance():addSearchPath("res/")
    self:enterScene("TitleScene")
	 -- self:enterScene("MainScene")
end

return MyApp
