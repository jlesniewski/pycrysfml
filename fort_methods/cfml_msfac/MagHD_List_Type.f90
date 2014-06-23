function getNref(obj_var)
	type (MagHD_List_Type) :: obj_var
	integer :: getNref
	getNref = obj_var%Nref
end function getNref

subroutine setNref(obj_var, new_value)
	type (MagHD_List_Type) :: obj_var
	integer, intent(in) :: new_value
	obj_var%Nref = new_value
end subroutine setNref

function getMh(obj_var)
	type (MagHD_List_Type) :: obj_var
	Type(MagHD_Type),allocatable, dimension(:) :: getMh
	getMh = obj_var%Mh
end function getMh

subroutine setMh(obj_var, new_value)
	type (MagHD_List_Type) :: obj_var
	Type(MagHD_Type),allocatable, dimension(:), intent(in) :: new_value
	obj_var%Mh = new_value
end subroutine setMh

subroutine MagHD_List_Type_ctor(MagHD_List_Type_param, Nref_param, Mh_param)
	type (MagHD_List_Type) :: MagHD_List_Type_param
	integer, intent(in) :: Nref_param
	Type(MagHD_Type),allocatable, dimension(:), intent(in) :: Mh_param
	MagHD_List_Type_param%Nref = Nref_param
	MagHD_List_Type_param%Mh = Mh_param
end subroutine MagHD_List_Type_ctor