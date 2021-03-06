package dao;

import bean.Roles;

public interface IRoleDao extends IBaseDao<Roles>{
    /**
     * 角色授权
     * @param roleId 被授权的角色ID
     * @param permissionIds 即将赋予角色的权限ID
     */
    void saveGrant(String roleId,String permissionIds[]);
}
