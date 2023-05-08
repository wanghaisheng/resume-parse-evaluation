# resume-parse-evaluation
Evaluate existing engine of resume parse  for Chinese 对各种简历解析工具的测评


paddler ocr 相關的有一個table structure extract 不知道能不能套上來

另外就是https://github.com/jamesturk/scrapeghost  看到一個gpt的應用 不知道有沒有可行性





从简历中提取感兴趣的字段


## Background    

一般来讲，不同的候选者和公司所选择的招聘渠道的不同，我们会收到不同类型的简历：

### 1.1 各大招聘网站上的网页版或网站上提供下载的简历

应聘者在各网站上，包括外部的网站和自己公司的网站，按网站提供的固定模板填写信息，形成网页版或从网页下载的其它格式简历（统称网页版简历）。

针对网页版简历的基础解析技术，各公司准确率不相上下，难度在于针对每一个固定模板做细致的分析，简历解析技术的准确度依赖于勤奋和经验。
智联、51、拉勾、猎聘、

### 1.2 应聘者按照自己的想法和偏好，制作word、pdf、png，甚至是 excel 格式的电子文档简历。

这种简历格式五花八门，由于不是直接以网页代码的模式呈现，且没有相对固定的模板和关键词字段，就给系统识别带来了挑战。对于系统来讲，要寻找规律并进行判断和识别就会有一定的难度，这一类的简历解析无法做到百分百。

### 1.3 简历文件的格式
doc, docx, xls, xlsx, mht, mhtml, html, htm, txt, pdf, rtf, eml, wps, xml, dotx, msg, jpeg, jpg, gif, png, bmp 等格式，基本上覆盖了招聘市场上99%的简历格式。

### 1.4 简历中的数据
中英文混合，大概有100余个字段，涵盖基本信息、联系方式、期望职位、教育经历、工作经历、 项目经历、技能、语言能力、证书、自我评价等字段信息。



## Tools     


###  商业化软件和解决方案    

| 公司名称 | 网站 | 网友评价 | 测试demo | 支持格式 | 价格 | 部署方式 |  其他 |
| --- | ---- | ---- | --- | --- | -- | --- | --- |        
捕鱼科技 | http://www.buyu-tech.com/  http://www.cv-parser.com/  | -- |  Y | 不支持图片 pdf、doc、docx、html、htm、txt、zip、mht、ppt等 |  --- | SaaS和本地部署 |     
云解析 | http://youyun.com | 他家的demo效果很一般，稍微特殊一点的情况就处理不好；| Y | 21种简历格式  支持图片|  | saas |      
cv-extract 北京有本科技 | http://k18.com.cn | 这家做解析有一定的时间了，改头换面也包装了几家分店。总体效果还可以，但还存在不少的问题；| Y |  支持图片 |  |  SaaS和本地部署  |   | 
北京云湾科技有限公司 | http://resumesdk.com | 这家比较低调，感觉不太善于宣传，但总体效果是三家中最好的，特别是能很好解决不同网站模板包括自由格式的简历，而且上手很简单方便。 | Y | 支持图片  |  | SaaS和本地部署  | |
德士达科技公司 | http://www.daxtra.cn/ | 简历解析Daxtra 做得相当不错，我听说他们香港有设点也在国内推广，听说是爱丁堡大学教授开发的算法。蛮多外国大公司和猎头用他们的。|  N |  -- | -- | -- |  
 杭州少世科技有限公司 | www.littleparser.com | 小析简历解析，免费试用现在，国际大数据团队研发的 | Y | 不支持图片 |  -- |  SaaS |  -- |
山卡拉 | http://cv-extract.com/ | --  | Y 不可用  | 不支持图片  | -- | SaaS | --- |
CV Tech 简历 | http://www.jianlijiexi.com/ | --  | Y | 支持图片 | -- |  SaaS和本地部署  | --- |
大易 | http://www.dayee.com/wt/dayee/dayeePageresume | -- | N | 不支持图片 | -- |  -- | -- |        
麦穗简历洞察 | https://www.mesoor.com/resume-insight.html | -- | N | 不支持图片 | -- |  -- | -- |


###  开源库 

* [简历解析工具](https://github.com/xsocket/job):支持猎聘、前程无忧、拉勾、智联网站上的简历 支持html、doc、pdf、eml     

* [python解析简历](https://github.com/ccccsy99/resume-parse-python):支持doc、pdf、eml、html  首先将不同格式的简历先转换成txt再进行提取     

* [简历解析的restful服务](https://github.com/liyaopinner/parser):支持猎聘、51job、智联的html简历    

* [基于纯文本的简历解析器，解析服务，支持磁盘扫描，简历内容抽取，简历解析，简历存储](https://github.com/lietou1986/xparser): 支持的文件格式有pdf,word,text,html等

* [简历内容提取](https://github.com/keliangyong/htmlParser):手动标记 提取简历数据 支持51job、智联的html格式     

* [针对求职者自己的简历进行解析](https://github.com/altraman00/hrweb):支持html，word，text，分词器（HanLP）结合正则表达式 已提取的包括：姓名、性别、年龄、家庭住址、手机号、邮箱、毕业院校、学历、专业、工年    




## Benchmark resumes

从网络上收集一些公开获取的简历数据，不适之处请联系删除

- [word格式]()    

- [txt格式]()

- [html格式]()

- [pdf格式]()

- [eml格式]()

- [excel格式]()

- [mdht格式]()

## Todos


- [ ] xxxxx.



Prospective project tree:

      ├── README.md
      ├── resume-samples
      |   ├── pdf
      |   |   └── ca-warn-2013
      |   |       ├── 001.csv
      |   |       ├── 002.csv
      |   |       └── 003.csv
      |   ├── word
      |   |   └── ca-warn-2013
      |   |       ├── 001.csv
      |   |       ├── 002.csv
      |   |       └── 003.csv
      |   ├── html
      |   |   └── ca-warn-2013
      |   |       ├── 001.csv
      |   |       ├── 002.csv
      |   |       └── 003.csv
      |   ├── txt
      |   |   └── ca-warn-2013
      |   |       ├── 001.csv
      |   |       ├── 002.csv
      |   |       └── 003.csv
      |   ├── excel
      |   |   └── ca-warn-2013
      |   |       ├── 001.csv
      |   |       ├── 002.csv
      |   |       └── 003.csv
      |   ├── mdht
      |   |   └── ca-warn-2013
      |   |       ├── 001.csv
      |   |       ├── 002.csv
      |   |       └── 003.csv      
      ├── results
      |   ├── pdf
      |   |   └── 捕鱼
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云解析
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv     
      |   |   └── 有本科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云湾科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv             
      |   ├── html
      |   |   └── 捕鱼
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云解析
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv     
      |   |   └── 有本科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云湾科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv 
      |   ├── txt
      |   |   └── 捕鱼
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云解析
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv     
      |   |   └── 有本科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云湾科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv 
      |   ├── excel
      |   |   └── 捕鱼
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云解析
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv     
      |   |   └── 有本科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云湾科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv 
      |   ├── word
      |   |   └── 捕鱼
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云解析
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv     
      |   |   └── 有本科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云湾科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv 
      |   ├── mdht
      |   |   └── 捕鱼
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云解析
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv     
      |   |   └── 有本科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv
      |   |   └── 云湾科技
      |   |   |   ├── 001.csv
      |   |   |   ├── 002.csv
      |   |   |   └── 003.csv 




## Example test suite and results


~~~sh
java -jar \
    bins/tabula-0.9.1-jar-with-dependencies.jar --pages all \
    pdfs/nypd-weekly-stats.pdf \
    > results/tabula-java/nypd-weekly-stats.csv

java -jar \
    bins/tabula-0.9.1-jar-with-dependencies.jar --pages all \
    pdfs/menlo-park-sunridge-cad-interface.pdf \
    > results/tabula-java/menlo-park-sunridge-cad-interface.csv

~~~
