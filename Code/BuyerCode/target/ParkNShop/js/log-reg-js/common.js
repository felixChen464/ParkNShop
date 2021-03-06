﻿//打开字滑入效果
window.onload = function(){
	$(".connect p").eq(0).animate({"left":"0%"}, 600);
	$(".connect p").eq(1).animate({"left":"0%"}, 400);
};
//jquery.validate表单验证
$(document).ready(function(){
	//登陆表单验证
	$("#loginForm").validate({
		rules:{
			username:{
				required:true,//必填
				minlength:3, //最少6个字符
				maxlength:32,//最多20个字符
			},
			password:{
				required:true,
				minlength:3, 
				maxlength:32,
			},
		},
		//错误信息提示
		messages:{
            username:{
                required:"The user name must be filled in",
                minlength:"The user name is at least 3 characters",
                maxlength:"The user name is up to 32 characters",
                remote: "User name already exists",
            },
            password:{
                required:"Password must be filled in",
                minlength:"The password is at least 3 characters",
                maxlength:"The password is at most 32 characters",
            },
		},

	});
	//注册表单验证
	$("#registerForm").validate({
		rules:{
			username:{
				required:true,//必填
				minlength:3, //最少6个字符
				maxlength:32,//最多20个字符
				remote:{
					url:"http://kouss.com/demo/Sharelink/remote.json",//用户名重复检查，别跨域调用
					type:"post",
				},
			},
			password:{
				required:true,
				minlength:3, 
				maxlength:32,
			},
			email:{
				required:true,
				email:true,
			},
			confirm_password:{
				required:true,
				minlength:3,
				equalTo:'.password'
			},
			phone_number:{
				required:true,
				phone_number:true,//自定义的规则
				digits:true,//整数
			}
		},
		//错误信息提示
		messages:{
			username:{
				required:"The user name must be filled in",
				minlength:"The user name is at least 3 characters",
				maxlength:"The user name is up to 32 characters",
				remote: "User name already exists",
			},
			password:{
				required:"Password must be filled in",
				minlength:"The password is at least 3 characters",
				maxlength:"The password is at most 32 characters",
			},
			email:{
				required:"Please enter your email address",
				email: "Please enter the correct email address"
			},
			confirm_password:{
				required: "Please enter your password again",
				minlength: "Confirm that the password cannot be less than 3 characters",
				equalTo: "The two input passwords do not match",//与另一个元素相同
			},
			phone_number:{
				required:"Please enter your phone number",
				digits:"Please enter the correct phone number",
			},
		
		},
	});
	//添加自定义验证规则
	jQuery.validator.addMethod("phone_number", function(value, element) { 
		var length = value.length; 
		var phone_number = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/ 
		return this.optional(element) || (length == 11 && phone_number.test(value)); 
	}, "Incorrect phone number format");
});
