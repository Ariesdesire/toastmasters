import 'package:aqueduct/aqueduct.dart';
import 'package:toastmasters/models/meetings.dart';
import 'package:toastmasters/toastmasters.dart';

class MeetingsController extends ResourceController {
	MeetingsController(this.context);

	final ManagedContext context;



//	@override
//	Future<RequestOrResponse> handle(Request request) async {
//		if (request.path.variables.containsKey('id')) {
//			final id = int.parse(request.path.variables['id']);
//			final hero = _meetings.firstWhere((meeting) => meeting['id'] == id, orElse: () => null);
//			if (hero == null) {
//				return Response.notFound();
//			}
//
//			return Response.ok(hero);
//		}
//		return Response.ok(_meetings);
//	}

	@Operation.get()
	Future<Response> getAllMeetings() async {
		final meetingQuery = Query<Meeting>(context);
		final meetings = await meetingQuery.fetch();

		return Response.ok(meetings);
	}

	@Operation.get('id')
	Future<Response> getMeetingByID(@Bind.path('id') int id) async {
		final meetingQuery = Query<Meeting>(context)
			..where((h) => h.id).equalTo(id);

		final meeting = await meetingQuery.fetchOne();

		if (meeting == null) {
			return Response.notFound();
		}
		return Response.ok(meeting);
	}
}