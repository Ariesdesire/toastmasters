import 'package:toastmasters/toastmasters.dart';


class Meeting extends ManagedObject<_Meeting> implements _Meeting {}

class _Meeting {
	@primaryKey
	int id;

	@Column(unique: true)
	DateTime date;
	@Column(unique: true)
	String theme;
	@Column(unique: false)
	String  toastmaster;
//pulls from a list of Members
}

