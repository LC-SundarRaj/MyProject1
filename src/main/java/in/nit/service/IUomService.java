package in.nit.service;

import java.util.List;

import in.nit.model.Uom;

public interface IUomService {
	Integer saveUom(Uom uom);
	List<Uom> getAllUom();
	void deleteUom(Integer id);
}
