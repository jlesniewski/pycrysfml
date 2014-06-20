function getnatoms(obj_var)
	type (mAtom_List_Type) :: obj_var
	integer :: getnatoms
	getnatoms = obj_var%natoms
end function getnatoms

subroutine setnatoms(obj_var, new_value)
	type (mAtom_List_Type) :: obj_var
	integer, intent(in) :: new_value
	obj_var%natoms = new_value
end subroutine setnatoms

function getAtom(obj_var)
	type (mAtom_List_Type) :: obj_var
	type(mAtom_Type),dimension(:),allocatable :: getAtom
	getAtom = obj_var%Atom
end function getAtom

subroutine setAtom(obj_var, new_value)
	type (mAtom_List_Type) :: obj_var
	type(mAtom_Type),dimension(:),allocatable, intent(in) :: new_value
	obj_var%Atom = new_value
end subroutine setAtom

subroutine mAtom_List_Type_ctor(mAtom_List_Type_param, natoms_param, Atom_param)
	type (mAtom_List_Type) :: mAtom_List_Type_param
	integer, intent(in) :: natoms_param
	type(mAtom_Type),dimension(:),allocatable, intent(in) :: Atom_param
	mAtom_List_Type_param%natoms = natoms_param
	mAtom_List_Type_param%Atom = Atom_param
end subroutine mAtom_List_Type_ctor
