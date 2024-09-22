## 本项目实现的最终作用是基于SSH学生作业管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 个人信息管理
 - 学生管理
 - 教师管理
 - 管理员登录
 - 课程管理
### 第2个角色为教师角色，实现了如下功能：
 - 作业总览
 - 公告管理
 - 发布作业
 - 发布公告
 - 批阅作业
 - 教师角色登录
 - 统计作业完成情况
### 第3个角色为学生角色，实现了如下功能：
 - 上传作业
 - 作业一览
 - 学生角色登陆
 - 查看作业批阅
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_hw_manage

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [checkwork](#checkwork) |  |
| [clazz](#clazz) |  |
| [course](#course) | 课程信息表 |
| [manager](#manager) |  |
| [notice](#notice) |  |
| [student](#student) | 学生信息表 |
| [teacher](#teacher) | 教师信息表 |
| [work](#work) |  |

**表名：** <a id="checkwork">checkwork</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ch_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | ch_s_account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | ch_c_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | ch_w_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | ch_score |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | ch_mark |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | ch_checkTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  8   | ch_upTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  9   | ch_path |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |
|  10   | wt |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="clazz">clazz</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | c_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | c_count |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="course">course</a>

**说明：** 课程信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | c_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | c_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | c_credit |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="manager">manager</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | m_account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | m_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | m_password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="notice">notice</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | nt_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | nt_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | nt_content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | nt_time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | nt_t_account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | nt_c_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="student">student</a>

**说明：** 学生信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | s_account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | s_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | s_sex |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  5   | s_c_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | s_password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | s_dept |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="teacher">teacher</a>

**说明：** 教师信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | t_account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  4   | t_sex |   varchar   | 2 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | t_dept |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | t_password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="work">work</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | w_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | w_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | w_content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | w_deadline |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | w_course |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | w_t_account |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | w_c_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

