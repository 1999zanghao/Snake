-- 开始函数
function __G__TRACKBACK__(errorMessage)
    print("----------------------------------------")
    print("LUA ERROR: " .. tostring(errorMessage) .. "\n")
    print(debug.traceback("", 2))
    print("----------------------------------------")
end

-- create，创建主场景，run,运行主场景, MainScene主场景
package.path = package.path .. ";src/"
cc.FileUtils:getInstance():setPopupNotify(false)
require("app.MyApp").new():run()
