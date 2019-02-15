package SystemManage.LogManage.controller;

import SystemManage.Common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("log")
public class LogController extends BaseController {

    /**
     * 待开发页
     * @return
     */
    @RequestMapping(value = "/manager", method = RequestMethod.GET)
    public String manager() {
        return "/log/log";
    }

}
