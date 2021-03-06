-- 创建bi用户
create user bi with password 'bell_ea_password';
-- 创建架构
create schema tm_bi authorization bi;

-- 创建外部表服务器的mapping
create user mapping for bi server zf_print options (user 'zf_print',password 'zf_print_password');
create user mapping for bi server wxgzh options (user 'wxgzh',password 'wxgzh_password');

-- 授权查询
grant usage on schema ea to bi;
grant usage on schema tm to bi;
grant usage on schema tm_wx to bi;
grant usage on schema tm_dual to bi;
grant usage on schema tm_hunt to bi;
--
grant select on tm_bi.user       to bi;    ----用户表
grant select on tm_bi.department to bi;    ----部门表
grant select on tm_bi.user_role  to bi;    ----角色表
grant select on tm_bi.student    to bi;    ----学生表
grant select on tm.observation_form    to bi;    ----督导听课表
grant select on tm.observation_item    to bi;    ----督导评价
grant select on tm.observation_criteria_item  to bi;  ----评分细则
grant select on tm_hunt.project to bi;     ----项目表
grant select on tm_hunt.review  to bi; 	   ----审批表
grant select on tm_hunt.subtype to bi;     ----项目类别
grant select on tm_hunt.type to bi;     ----项目大类别
grant select on tm_hunt.origin to bi;     ----项目来源	
grant select on tm_hunt.fund to bi;     ----经费	
grant select on ea.department to bi;	----部门表
grant select on ea.teacher to bi;         ---教师表
grant select on tm.dv_observation_task to bi;    ---课表
grant select on tm_wx.report to bi;    ---打印文件申请
grant select on tm_wx.user to bi;      ---公众号用户
grant select on tm_wx.et_student to bi;      ---学生外部表
grant select on tm_wx.post_info to bi;  ---邮件信息
grant select on tm.et_dualdegree_student to bi;
grant select on tm_dual.degree_application to bi;
grant select on tm_hunt.teacher_temp to bi;
grant select on tm.dv_observation_view    to bi;    ----督导听课视图
grant select on tm_hunt.teacher_temp to bi;
grant select on tm_wx.cet_teacher to bi;      ---监考用户
grant select on tm_wx.cet_teacher_room to bi;      ---监考场地
grant select on tm_wx.exam_room to bi;      ---考试场地	
grant select on tm_wx.exam to bi;      ---四六级考试
grant select on tm_wx.exam_group to bi;      ---资料组