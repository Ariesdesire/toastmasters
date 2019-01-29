import 'package:aqueduct/aqueduct.dart';
import 'package:toastmasters/toastmasters.dart';

class MeetingsController extends Controller {
	final _meetings = [
		{
			'id': 11,
			'date': 'Mr. Nice',
			'theme': 'Lovers Rock',
			'toastmaster': 'Mr. Nice'
		},
		{'id': 12,
			'date': 'Narco',
			'theme': 'Facing Hard Times',
			'toastmaster': 'Mr. Nice'

		},
		{'id': 13,
			'date': 'Bombasto',
			'theme': 'Systems That Work',
			'toastmaster': 'Mr. Nice'

		},
		{'id': 14,
			'date': 'Celeritas',
			'theme': 'Conqquering the Dark',
			'toastmaster': 'Mr. Nice',
		},
		{'id': 15,
			'date': 'Magneta',
			'theme': 'How to Cry',
			'toastmaster': 'Mr. Nice',},
	];

	@override
	Future<RequestOrResponse> handle(Request request) async {
		return Response.ok(_meetings);
	}
}