// ==UserScript==
// @name         复制网址成markdown 样式
// @namespace    http://github.com/rainboylvx
// @version      0.1
// @description  复制网址成markdown 样式
// @author       rainboy
// @grant        GM_setClipboard
// @grant        GM_registerMenuCommand
// @include   *
// @license      MIT
// ==/UserScript==



;(() => {
  // 注册菜单
  function registerMenu() {
    GM_registerMenuCommand('复制', () => {
      let title = document.getElementsByTagName("title")[0].innerText
        .replace('(','（')
        .replace( ')' , '）')
        .replace( '[', '「')
        .replace(']', '」')
      console.log(title)
      GM_setClipboard(`- [${title}](${window.location.href})`,'text')
    })
  }
  registerMenu()
})()


