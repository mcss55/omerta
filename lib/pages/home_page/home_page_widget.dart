import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

/// A Mafia game role assignment app with a dark and mysterious UI theme.
///
/// The main screen should include a title at the top with a Mafia-style logo.
/// Below it, add a section where users can define how many different roles
/// will be in the game. Each role should have an input field to define the
/// number of players assigned to it, displayed in a dynamic list with
/// add/remove buttons. Below the roles section, create a player input area
/// where users can manually enter phone numbers or select contacts from their
/// device. Display selected players in a scrollable list. At the bottom,
/// place a large call-to-action button labeled 'Assign Roles' that randomly
/// distributes roles among players. After assignment, a 'Send via WhatsApp'
/// button should appear to allow sending roles to players via WhatsApp. The
/// design should use a dark Mafia aesthetic with red and black tones, bold
/// fonts, and sleek animations.
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
