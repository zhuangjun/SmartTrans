#1 SmartTrans

SmartTrans是一个将网页翻译成中英对照Markdown的小工具。

## 使用指南
### Step 1： 网页转Markdown

**http://heckyesmarkdown.com/**

Markdownifier 可以将大部分网页一件转成Markdown， 转出的Markdown也很漂亮

**http://brettterpstra.com/2013/07/30/precise-web-clipping-to-markdown-with-bullseye/**

Bullseye是一个基于Markdownifier的工具。 对于Markdownifier不能转换的网页， 可以使用它。

使用方法：添加到书签。 打开待翻译网页， 点击书签， 选择要翻译的部分， 即转成MD.

### Step 2: 翻译Markdown

> 注： Python是现学现用， 只在 2.7 版本运行过
> 使用的类库googletrans 兼容Python 3.0， trans.py 在3.0下可能需要做小幅调整。

#### 准备
1. Python 2.7 运行环境
2. 安装 pip
3. 翻墙软件和http代理

```
pip install googletrans
```

```
# 127.0.0.1:1087 替换成你的翻墙代理地址
export http_proxy=127.0.0.1:1087
export https_proxy=127.0.0.1:1087

# 将需要翻译的文章MD放进input.md
python trans.py
# 程序运行完后输出“Translated. Please check output.md!”
```

