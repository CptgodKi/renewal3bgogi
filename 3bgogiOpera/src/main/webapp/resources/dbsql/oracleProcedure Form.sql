create or replace procedure deleteReboardProc1 --프로시저 이름 
(
--매개변수
    p_no number,
    p_groupNo number,
    p_step number
)
is
--변수선언부
    cnt number;
    fcnt number;
begin
--처리할 내용
    /*
        [1] 답변이 있는 원본글인 경우 dlflag를 y로 update
        [2] 답변글이나 답변이 없는 원본글은 delete
    */
    if p_step=0 then --원본글이면
        --답변이 있는 원본글인지 체크
        select count(*) into cnt from reboard 
        where groupno=p_groupno;
        if cnt>1 then--답변있는 원본글
            update reboard
            set delflag = 'Y'
            where no = p_no;
        else--답변없는 원본글
            delete from reboard where no=p_no;
        end if;
    else --답변글이면
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
	raise_application_error(-20001, '답변형 게시판 글삭제 실패!');
    ROLLBACK;
end;

--exec deleteReboardProc(10,10,0);