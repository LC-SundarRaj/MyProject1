package in.nit.service;

import java.util.List;

import in.nit.model.Uom;

public interface IUomService {
	public Integer saveUom(Uom uom);
	public List<Uom> getAllUom();
	public void deleteUom(Integer id);
	
	public Uom getOneUom(Integer id);
	public void updateUom(Uom uob);
	
	public List<Object[]> getUomModeCount();
}
