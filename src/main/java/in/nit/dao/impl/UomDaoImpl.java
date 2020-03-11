package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IUomDao;
import in.nit.model.Uom;

@Repository
public class UomDaoImpl implements IUomDao{
	
	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Integer saveUom(Uom uom) {
		return (Integer)ht.save(uom);
	}

	@Override
	public List<Uom> getAllUom() {
		List<Uom> list = ht.loadAll(Uom.class);
		return list;
	}

	@Override
	public void deleteUom(Integer uid) {
		
		ht.delete(new Uom(uid));
	}
	@Override
	public Uom getOneUom(Integer id) {
		return ht.get(Uom.class, id);
	}
	
	@Override
	public void updateUom(Uom uob) {
		ht.update(uob);
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> getUomModeCount() {
		String hql = "select uType, count(uType) from in.nit.model.Uom group by uType";
		return (List<Object[]>)ht.find(hql);
	}
}
	