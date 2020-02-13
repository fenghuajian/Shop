package bean;

import java.util.Set;

public class Roles {

	private String rolesId;
	private String roleName;
	private Set<Permission> permissions;//一个角色有多个权限

	public Set<Permission> getPermissions() {
		return permissions;
	}

	@Override
	public String toString() {
		return "Roles{" +
				"rolesId='" + rolesId + '\'' +
				", roleName='" + roleName + '\'' +
				", permissions=" + permissions +
				'}';
	}

	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}


	//private Set<Permission> permissions;//һ����ɫ�ж��Ȩ��

	public String getRolesId() {
		return rolesId;
	}
	public void setRolesId(String rolesId) {
		this.rolesId = rolesId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	/*public Set<Permission> getPermissions() {
		return permissions;
	}
	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}*/
}
