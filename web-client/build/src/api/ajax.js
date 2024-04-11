// axios 请求工具
import axios from "axios";

// 封装的函数

// {}中是对象
export default function ajax(url = "", params = {}, type = "GET") {
  // 1. 定义promise对象
  let promise;
  // Promise是方法
  return new Promise((resolve, reject) => {
    // 2. 判断请求的方式
    if ("GET" === type) {
      // 2.1 拼接请求字符串
      let paramsStr = "";
      Object.keys(params).forEach(key => {
        paramsStr += key + "=" + params[key] + "&";
      });
      // 2.2 过滤最后的&
      if (paramsStr !== "") {
        paramsStr = paramsStr.substring(0, paramsStr.lastIndexOf("&"));
      }
      // 2.3 完整路径
      url += "?" + paramsStr;
      // 2.4 发送get请求
      promise = axios.get(url);
    } else if ("POST" === type) {
      promise = axios.post(url, params);
    }
    // 3. 返回请求的结果
    //  Promise中最为重要的状态，通过then的状态传递可以实现的回调函数链式操作的实现。
    //  其中 resolve 函数的作用是当Promise对象转移到成功，调用resolve并将操作结果作为其参数传递出去；
    //  reject 函数的作用是当Promise对象的状态变为失败时，将操作报出的错误作为参数传递出去。
    promise
      .then(response => {
        resolve(response.data);
      })
      // 这个时候catch执行的是和reject一样的，也就是说如果Promise的状态变为reject时，
      // 会被catch捕捉到，不过需要特别注意的是如果前面设置了reject方法的回调函数，
      // 则catch不会捕捉到状态变为reject的情况。
      .catch(error => {
        reject(error);
      });
  });
}
