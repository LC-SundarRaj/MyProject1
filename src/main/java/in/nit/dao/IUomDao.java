package in.nit.dao;

import java.util.List;

import in.nit.model.Uom;

public interface IUomDao {
	Integer saveUom(Uom uom);
	List<Uom> getAllUom();
	void deleteUom(Integer id);
}
