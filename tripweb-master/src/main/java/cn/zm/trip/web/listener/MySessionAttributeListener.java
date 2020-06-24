package cn.zm.trip.web.listener;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import cn.zm.trip.web.commons.Msg;

public class MySessionAttributeListener implements HttpSessionAttributeListener {
  
	
	/**
     * 添加属性
     */
    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        System.out.println("属性添加");
 
        // 获取 session 对象
        final HttpSession session = se.getSession();
        // 获取添加的属性值
        if(session.getAttribute("msg") !=null){
        Msg msg = (Msg)session.getAttribute("msg");
        System.out.println("msg：" + msg.getMsg());
        }
        
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
                public void run() {
                	session.removeAttribute("msg");
                }
        }, 3000);
        
    }
 
    /**
     * 移除属性
     */
    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        System.out.println("属性移除");
    }
 
    /**
     * 修改属性
     */
    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {
        // 获取 session 对象
        final HttpSession session = se.getSession();
 
        // 获取属性修改前的值
        Object oldValue = se.getValue();
//        System.out.println("oldValue：" + oldValue);
 
        // 获取属性修改后的值
        // 获取添加的属性值
        if(session.getAttribute("msg") !=null){
        Msg msg = (Msg)session.getAttribute("msg");
        System.out.println("msg：" + msg.getMsg());
       
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
                public void run() {
                	session.removeAttribute("msg");
                }
        }, 3000);
        }
    }
}