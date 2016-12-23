# 中文模板

Markdown 是一种轻量级的标记语言，其用简单的标记语法便可达到排版的目的，其可以使
我们更加专注于内容的编写，而不需过多关注排版。本文主要整理了 Markdown 中的常用
的标记语法，以便自己与他人以后查用。

## 列表、**加粗**、*斜体*、上下标

有序列表

1.  Stay hungry
2.  Stay foolish

无序列表

-   All work and no play
-   makes Jacky a dull boy

混用

1.  one
    #.  one-one
    #.  one-two
2.  two
    -   two-one
    -   two-two
3.  three
    1.  three-one
    2.  three-two

强调

-   **加粗**、*斜体*，或者***一起用***
-   ~~2^^10^^ = 2014~~ ==> 2^^10^^ = 1024, H~2~O 和 $H_2O$ 都是生命之源[^water]
-   三种连字符：1 - 1，1 -- 8，1 --- one（hyphen, en-dash，em-dash）
-   <span style="font-variant:small-caps;">Small caps</span>
-   <kbd>c-x</kbd> 在 Emacs 里指的是 Control-X

[^water]: 看上去不一样，其实都是“水”。

## 表格

表格 1

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

表格 2

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

## 代码

```
# 检查字体
$ texlua fontname.lua consola.ttf
Fontname:   Consolas
Fullname:   Consolas
Familyname: Consolas
```

## 引用

[译言-**为什么要探索宇宙**](http://article.yeeyan.org/view/265546/309669)

>   那是在 400 年前，德国某小镇里有一位伯爵。他是个心地善良的人，他将自己收入的
>   一大部分捐给了镇子上的穷人。这十分令人钦佩，因为中世纪时穷人很多，而且那时
>   经常爆发席卷全国的瘟疫。一天，伯爵碰到了一个奇怪的人，他家中有一个工作台和
>   一个小实验室，他白天卖力工作，每天晚上的几小时的时间专心进行研究。他把小玻
>   璃片研磨成镜片，然后把研磨好的镜片装到镜筒里，用此来观察细小的物件。**伯爵
>   被这个前所未见的可以把东西放大观察的小发明迷住了。**他邀请这个怪人住到了他
>   的城堡里，作为伯爵的门客，此后他可以专心投入所有的时间来研究这些光学器件。

[Terminator 2（终结者）](http://www.imdb.com/character/ch0000933/quotes)

>   The future has not been written.  There is no fate but what we make for
>   ourselves.  I wish I could believe that. My name is John Connor, they tried
>   to murder me before I was born, when I was 13 they tried again.  Machines
>   from the future.  Terminators...

## 定义

[代码混淆——福音还是噩梦？](http://www.changhai.org/articles/technology/misc/obfuscation.php)

:   保护软件有着双重意义： 一是保护软件的知识产权 (intellectual property)， 防
    止被人盗用； 二是保护软件中可能隐含的诸如技术漏洞等私密信息， 防止被人利用。
    就保护思路而言， 目前主要有两条： 一条是加密 (encryption)， 另一条是代码
    混淆 (obfuscation)。 两者的主要区别是前者需解密 (decryption)， 后者则不需要
    ——因为后者只是将代码换成普通人难以读懂、 在计算机上却仍能运行， 且功能相同的
    形式， 很多网站采用的 JavaScript 代码混淆就是很好的例子。

## 公式

不管用了多少年的 M$ Word，总有一天写论文你要用 $\LaTeX$，
那就从 MathJax 开始练习吧。

$$
        \begin{matrix}
        1 & x & x^2 \\
        1 & y & y^2 \\
        1 & z & z^2 \\
        \end{matrix}
$$

访问 [MathJax](http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference) 参考更多使用方法。

## 章节

# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

---

Credits

-   文档转化：[jgm/pandoc: Universal markup converter](https://github.com/jgm/pandoc)
-   中文字体：[造字工房](http://www.makefont.com/)
-   ODT 模板：[andrewheiss/Global-Pandoc-files: Stuff that goes in ~/.pandoc](https://github.com/andrewheiss/Global-Pandoc-files)
-   转化 PDF：[LibreOffice 简体中文官方网站 - 自由免费的办公套件](http://zh-cn.libreoffice.org/)
-   [Inconsolata](http://levien.com/type/myfonts/inconsolata.html)
