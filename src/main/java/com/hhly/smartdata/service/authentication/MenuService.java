package com.hhly.smartdata.service.authentication;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.hhly.smartdata.mapper.authentication.MenuMapper;
import com.hhly.smartdata.mapper.authentication.RoleMapper;
import com.hhly.smartdata.model.authentication.Menu;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

@Service
public class MenuService{

    protected final static Logger LOGGER = LoggerFactory.getLogger(MenuService.class);

    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private RoleMapper roleMapper;

    public List<Menu> getMenuByPerms(List<String> perms) throws Exception{
        return menuMapper.getMenuByPerms(perms);
    }

    public List<Menu> getAll() throws Exception{
        return searchMenus(null);
    }

    public List<Menu> searchMenus(Menu menu) throws Exception{
        return menuMapper.searchMenu(menu);
    }

    public Menu get(Integer id) throws Exception{
        Menu condition = new Menu();
        condition.setId(id);
        List<Menu> menus = menuMapper.searchMenu(condition);
        return menus.isEmpty() ? null : menus.get(0);
    }

    public void update(Menu menu) throws Exception{
        menuMapper.update(menu);
    }

    public Map<String, Integer> updateMenuTree(JSONArray menuTree, Integer parentId) throws Exception{
        Map<String, Integer> ids = Maps.newHashMap();
        for(int i = 0; i < menuTree.size(); i++){
            JSONObject menuJSON = menuTree.getJSONObject(i);
            Menu menu = new Menu();
            menu.setMenuName(menuJSON.getString("name"));
            menu.setIndex(i + 1);
            menu.setParentId(parentId);
            if(menuJSON.containsKey("id")){
                menu.setId(menuJSON.getInteger("id"));
                update(menu);
            }else{
                menuMapper.insert(menu);
            }
            ids.put(menuJSON.getString("tId"), menu.getId());
            if(menuJSON.containsKey("children")){
                //遍历子集
                ids.putAll(updateMenuTree(menuJSON.getJSONArray("children"), menu.getId()));
            }
        }
        return ids;
    }

    public Map<String, Integer> sortAndUpdateMenus(JSONArray menuTree, Integer parentId) throws Exception{
        //1:更新菜单树--树结构的menu
        Map<String, Integer> result = updateMenuTree(menuTree, parentId);

        //2:查询所有的菜单
        List<Menu> allMenu = getAll();

        //3:剔除1中的菜单id，即为不存在菜单id 进行删除
        Collection<Integer> existIds = result.values();
        for(Menu menu : allMenu){
            if(!existIds.contains(menu.getId())){
                menuMapper.delete(menu);
            }
        }
        return result;
    }

    public List<Menu> getMenuListByRole(List<Integer> roleIds) throws Exception{
        List<String> perms = roleMapper.getPerms(roleIds);
        LOGGER.info("" + perms.size());
        List<Menu> menus = this.getMenuByPerms(perms);
        return menus;
    }
}
