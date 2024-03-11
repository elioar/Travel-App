import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'place1_model.dart';
export 'place1_model.dart';

class Place1Widget extends StatefulWidget {
  const Place1Widget({super.key});

  @override
  State<Place1Widget> createState() => _Place1WidgetState();
}

class _Place1WidgetState extends State<Place1Widget>
    with TickerProviderStateMixin {
  late Place1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 3500.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Place1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _model.columnController1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SingleChildScrollView(
                            controller: _model.columnController2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'https://images.unsplash.com/photo-1601281107511-1c9591a974ae?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                      ).image,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 30.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 100.0,
                                            borderWidth: 100.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: Icon(
                                              Icons.arrow_back,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 30.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            borderRadius: 100.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            hoverIconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 25.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Sarande',
                        icon: const Icon(
                          Icons.location_pin,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        options: FFButtonOptions(
                          height: 25.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFBF110),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 0.0, 0.0),
                      child: Text(
                        '15 Best Things to Do in Saranda, Albania, in 2024',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Overpass',
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330.0,
                    child: Divider(
                      height: 40.0,
                      thickness: 0.5,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: 100.0,
                            buttonSize: 35.0,
                            fillColor: FlutterFlowTheme.of(context).accent4,
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primaryText,
                            icon: Icon(
                              Icons.calendar_month,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 18.0,
                            ),
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Not Set Yet'),
                                    content: const Text('Whait Until Next Update :)'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Duration',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  '7 Days',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Overpass',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: 100.0,
                              buttonSize: 35.0,
                              fillColor: FlutterFlowTheme.of(context).accent4,
                              hoverColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              hoverIconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              icon: Icon(
                                Icons.people,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 18.0,
                              ),
                              onPressed: () async {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Not Set Yet'),
                                      content:
                                          const Text('Whait Until Next Update :)'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Package for',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                              Text(
                                '2 Person',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: 100.0,
                              buttonSize: 35.0,
                              fillColor: FlutterFlowTheme.of(context).accent4,
                              hoverColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              hoverIconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              icon: Icon(
                                Icons.attach_money_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 18.0,
                              ),
                              onPressed: () async {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Not Set Yet'),
                                      content:
                                          const Text('Whait Until Next Update :)'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aprx Cost',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                              Text(
                                '400',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 330.0,
                    child: Divider(
                      height: 40.0,
                      thickness: 0.5,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                      child: Text(
                        '1. Take a Stroll Down the Saranda Embankment',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Overpass',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'One of the first things you should do when visiting Saranda is to walk along the Saranda Embankment. The embankment links the neighbourhoods in Saranda, so a leisurely stroll is an excellent way to get your bearings upon arrival. \n\nHere is where you’ll see lots of local businesses offering boat trips, which is one of the most fun things to do in Saranda. It’s a great place to get some activities planned.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://www.goatsontheroad.com/wp-content/uploads/2022/08/things-to-do-in-saranda-albania.jpeg',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'At the port end, you’ll see that there are swimming lanes where you can get your exercise in for the day, followed by a coffee in one of the cosy cafes. Despite being the place where boats set off, the water is incredibly clear and great for a dip.\n\nThe embankment runs parallel to Saranda Beach and has some of the best restaurants, cafes, and restaurants alongside it. I recommend trying New Space for a coffee with a view, or No Name Bar for a cheeky cocktail.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                      child: Text(
                        '2. Visit the Mystical Blue Eye (One of My Favourite Things to Do in Saranda)',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Overpass',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'The Blue Eye is a must see in Saranda. It was one of the highlights of my trip and it shouldn’t be missed. The Blue Eye is around 20 km from Saranda so many people take a tour from Saranda to visit. \n\nThe Blue Eye, or Syri i Kalter in Albanian, is a natural spring and phenomenon. The deep, dark middle and clear blue water surrounding the centre resembles a pupil and iris. It’s at least 50m deep, but the high-pressure water has made it impossible to explore further.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://www.goatsontheroad.com/wp-content/uploads/2023/07/Saranda-Blue-Eye.jpg',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'On this tour, you’ll be picked up from Saranda and a private guide will take you to and around the Blue Eye National Park. Here, you’ll have plenty of time to explore and swim in the pools before heading back to Saranda – beware, the water is a cool 10°C all year round.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                      child: Text(
                        '3. Eat Some Incredible Seafood\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Overpass',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'Saranda’s close proximity to the sea, rivers, and lakes makes it the perfect place for foodies who love seafood. \n\nMussels and trout can be found on most restaurant menus; you should be sure to try these. Both are often from Lake Butrint, which surrounds the Butrint National Park also featured on this list, and fresh and tasty dishes to try.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://www.goatsontheroad.com/wp-content/uploads/2022/08/saranda-tourist-attractions.jpeg',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'On this tour, you’ll be picked up from Saranda and a private guide will take you to and around the Blue Eye National Park. Here, you’ll have plenty of time to explore and swim in the pools before heading back to Saranda – beware, the water is a cool 10°C Saranda’s location on the Mediterranean Sea means that there’s always a vast selection of seafood on offer and many restaurants do it really well. My favourite spots include Haxhi (you have to have their seafood spaghetti) and Fish Filipi for a fresh and local experience.\n\nEat your way around the lovely tavernas and sample the freshest seafood in Saranda. year round.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                      child: Text(
                        '4. Visit Beautiful Ksamil',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Overpass',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: Text(
                      'Ksamil is one of the most beautiful places to visit in Saranda. It’s just a 20-minute drive further south along the coast where you’ll pass a lot of stunning beaches on the way. Ksamil’s coastline attracts thousands of tourists from all over the world for good reason.\n\nThe beaches are home to the clearest, most beautiful turquoise water. Split into bays, the beaches are both pebbly and sandy, and the colours change from bay to bay. Every single one is so clear and serene.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://www.goatsontheroad.com/wp-content/uploads/2023/07/Saranda-Ksamil.jpg',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 80.0),
                    child: Text(
                      'Ksamil can’t be missed as it’s one of the best places to see in Saranda. This tour, led by a local guide, will take you to islands and beaches in Ksami as well as the Butrint Archaeological Park – great Saranda attractions featured on this list.\nEat your way around the lovely tavernas and sample the freshest seafood in Saranda. year round.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 40.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).secondary,
                  borderRadius: 20.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).secondary,
                  icon: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await _model.columnController1?.animateTo(
                      0,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.ease,
                    );
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation']!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
