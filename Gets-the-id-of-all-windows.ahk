get_id(title){
    WinGet, var_id, List, %title% ;窗口标题
    idlist := []
    loop, %var_id%{
        idlist.Push(var_id%A_Index%)
        }
    If (!var_id){
        MsgBox, 无匹配窗口
    }
    Return idlist
}

;例1：
MsgBox, % get_id("微信")[1]

;例2：
For k,v In get_id("微信")
    MsgBox % v
