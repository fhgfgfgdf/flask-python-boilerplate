[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fvercel%2Fvercel%2Ftree%2Fmain%2Fexamples%2Fflask&demo-title=Flask%20API&demo-description=Use%20Flask%20API%20on%20Vercel%20with%20Serverless%20Functions%20using%20the%20Python%20Runtime.&demo-url=https%3A%2F%2Fvercel-plus-flask.vercel.app%2F&demo-image=https%3A%2F%2Fassets.vercel.com%2Fimage%2Fupload%2Fv1669994600%2Frandom%2Fpython.png)

# Flask + Vercel

This example shows how to use Flask on Vercel with Serverless Functions using the [Python Runtime](https://vercel.com/docs/concepts/functions/serverless-functions/runtimes/python).

## Demo

https://vercel-plus-flask.vercel.app/

## How it Works

This example uses the Web Server Gateway Interface (WSGI) with Flask to handle requests on Vercel with Serverless Functions.

## Running Locally

```bash
npm i -g vercel
python -m venv .venv
source .venv/bin/activate
uv sync  # or alternatively pip install flask gunicorn
gunicorn main:app
```

Your Flask application is now available at `http://localhost:3000`.

## One-Click Deploy

Deploy the example using [Vercel](https://vercel.com?utm_source=github&utm_medium=readme&utm_campaign=vercel-examples):

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fvercel%2Fvercel%2Ftree%2Fmain%2Fexamples%2Fflask&demo-title=Flask%20API&demo-description=Use%20Flask%20API%20on%20Vercel%20with%20Serverless%20Functions%20using%20the%20Python%20Runtime.&demo-url=https%3A%2F%2Fvercel-plus-flask.vercel.app%2F&demo-image=https%3A%2F%2Fassets.vercel.com%2Fimage%2Fupload%2Fv1669994600%2Frandom%2Fpython.png)

## Windows 本地运行

双击 `run.bat`，脚本会自动创建虚拟环境、安装依赖，并用 waitress 启动服务；启动后访问 `http://localhost:3000`。

- 依赖清单见 `requirements.txt`；
- Windows 本地使用 waitress 作为 WSGI 服务器（gunicorn 不支持 Windows 原生运行）；
- 服务监听 `0.0.0.0:3000`，入口为 `main:app`。

## Vercel 云端部署

Vercel 自动识别 `main.py` 中导出的顶层 `app` 实例，关联仓库后即可部署，无需额外入口文件。

## 隐私与注意事项

- 不要把账号、密码、密钥、真实地址等敏感信息写进代码；需要时使用环境变量。
- 现有接口：`/`（首页）、`/api/data`、`/api/items/<id>`。
- 本项目仅用于个人技术学习与调试。
