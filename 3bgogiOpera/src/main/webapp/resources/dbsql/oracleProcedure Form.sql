create or replace procedure deleteReboardProc1 --���ν��� �̸� 
(
--�Ű�����
    p_no number,
    p_groupNo number,
    p_step number
)
is
--���������
    cnt number;
    fcnt number;
begin
--ó���� ����
    /*
        [1] �亯�� �ִ� �������� ��� dlflag�� y�� update
        [2] �亯���̳� �亯�� ���� �������� delete
    */
    if p_step=0 then --�������̸�
        --�亯�� �ִ� ���������� üũ
        select count(*) into cnt from reboard 
        where groupno=p_groupno;
        if cnt>1 then--�亯�ִ� ������
            update reboard
            set delflag = 'Y'
            where no = p_no;
        else--�亯���� ������
            delete from reboard where no=p_no;
        end if;
    else --�亯���̸�
        delete from reboard where no =p_no;
        
        select count(*) into cnt from reboard 
        where groupno=p_groupno;
        
        if cnt=1 then
            --delete from reboard where delflag='Y' and groupno=p_groupno;
            /*select count(*) into cnt from reboard
            where groupno=p_groupno and step=0 and delflag='Y';
            if cnt=1 then
                delete from reboard
                where groupno=p_groupno;
            end if;*/
            delete from reboard a
            where exists(select 1 from reboard b where a.no=b.no and b.groupno=p_groupno and b.step=0 and b.delflag='Y');
        end if;
    end if;
    
    commit;

EXCEPTION
    WHEN OTHERS THEN
	raise_application_error(-20001, '�亯�� �Խ��� �ۻ��� ����!');
    ROLLBACK;
end;

--exec deleteReboardProc(10,10,0);