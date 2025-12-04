// ==UserScript==
// @name         Mobile Tools F11 + LocalStorage + Console
// @namespace    http://tampermonkey.net/
// @version      2.0
// @description  Tiện ích mở rộng: F11 mobile, Import/Export LocalStorage, Console mini
// @author       You
// @match        *://*/*
// @grant        none
// ==/UserScript==

(function () {
    // ====== STYLE ======
    const style = document.createElement("style");
    style.textContent = `
        #mobileToolsPanel {
            position: fixed;
            top: 20px;
            right: 20px;
            width: 260px;
            background: #222;
            color: white;
            padding: 12px;
            border-radius: 12px;
            font-size: 14px;
            display: none;
            z-index: 999999;
        }
        #mobileToolsBtn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: #0a84ff;
            color: white;
            padding: 12px 18px;
            border-radius: 50px;
            font-size: 16px;
            z-index: 999999;
        }
        #consoleBox {
            width: 100%;
            height: 120px;
            background: black;
            color: #0f0;
            font-family: monospace;
            font-size: 13px;
            padding: 5px;
            overflow-y: auto;
            margin-top: 8px;
            border-radius: 8px;
        }
        #consoleInput {
            width: 100%;
            padding: 6px;
            border-radius: 8px;
            border: none;
            margin-top: 5px;
            font-family: monospace;
        }
        button {
            width: 100%;
            margin-top: 6px;
            padding: 7px;
            background: #444;
            color: white;
            border-radius: 8px;
            border: none;
        }
    `;
    document.body.appendChild(style);

    // ====== BUTTON MỞ PANEL ======
    const openBtn = document.createElement("div");
    openBtn.id = "mobileToolsBtn";
    openBtn.innerText = "Tools";
    document.body.appendChild(openBtn);

    // ====== PANEL ======
    const panel = document.createElement("div");
    panel.id = "mobileToolsPanel";
    panel.innerHTML = `
        <button id="fullScreenBtn">F11 Mobile (Full screen)</button>
        <button id="exportBtn">Xuất LocalStorage</button>
        <button id="importBtn">Nhập LocalStorage</button>

        <div style="margin-top:10px; font-weight:bold;">Console mini</div>
        <div id="consoleBox"></div>
        <input id="consoleInput" placeholder="Nhập lệnh JavaScript...">
        <button id="runConsole">Chạy lệnh</button>
    `;
    document.body.appendChild(panel);

    // ====== MỞ / ĐÓNG ======
    openBtn.onclick = () => {
        panel.style.display = panel.style.display === "block" ? "none" : "block";
    };

    // ====== FULLSCREEN ======
    document.getElementById("fullScreenBtn").onclick = () => {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen();
        } else {
            document.exitFullscreen();
        }
    };

    // ====== EXPORT LOCAL STORAGE ======
    document.getElementById("exportBtn").onclick = () => {
        const data = JSON.stringify(localStorage, null, 2);
        navigator.clipboard.writeText(data);
        alert("Đã copy LocalStorage vào clipboard!");
    };

    // ====== IMPORT LOCAL STORAGE ======
    document.getElementById("importBtn").onclick = () => {
        let text = prompt("Dán JSON LocalStorage muốn nhập:");
        if (!text) return;
        try {
            let obj = JSON.parse(text);
            Object.keys(obj).forEach(k => localStorage.setItem(k, obj[k]));
            alert("Đã nhập LocalStorage xong!");
        } catch (e) {
            alert("JSON không hợp lệ!");
        }
    };

    // ====== CONSOLE MINI ======
    const consoleBox = document.getElementById("consoleBox");

    function logToConsole(msg) {
        consoleBox.innerHTML += msg + "\n";
        consoleBox.scrollTop = consoleBox.scrollHeight;
    }

    document.getElementById("runConsole").onclick = () => {
        let code = document.getElementById("consoleInput").value;
        if (!code.trim()) return;

        try {
            let result = eval(code);
            logToConsole("> " + result);
        } catch (err) {
            logToConsole("ERR: " + err);
        }
    };
})();
