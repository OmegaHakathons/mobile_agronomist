import 'package:flutter/material.dart';

import '../../../models/task/status_step.dart';
import '../../../models/task/step_custom.dart';

class CustomStepper extends StatefulWidget {
  final List<StepCustom> steps;

  final Color? backgroundColor;

  final Color? seperatorColor;
  final Color? completeColor;
  final Color? inProgressColor;
  final Color? upComingColor;
  final bool isExpandable;
  final bool showStepStatusWidget;
  final ScrollPhysics? physics;
  const CustomStepper({
    required this.steps,
    this.seperatorColor,
    this.completeColor,
    this.inProgressColor,
    this.upComingColor,
    this.backgroundColor,
    this.isExpandable = false,
    this.showStepStatusWidget = true,
    this.physics,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  late Color completeColor = widget.completeColor ?? Colors.green;
  late Color inProgressColor = widget.inProgressColor ?? Colors.amber;
  late Color upComingColor = widget.upComingColor ?? Colors.grey;
  List<StepCustom> steps = [];

  late List<GlobalKey> _keys;
  final double iconSize = 12.0;

  @override
  Widget build(BuildContext context) {
    steps.clear();
    for (var step in widget.steps) {
      steps.add(step);
    }
    _keys =
        List<GlobalKey>.generate(widget.steps.length, (int i) => GlobalKey());
    return _buildVertical();
  }

  Widget _buildVertical() {
    return widget.isExpandable
        ? _buildPanel()
        : ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: widget.physics ?? const NeverScrollableScrollPhysics(),
            children: steps
                .map((step) => Column(
                      key: _keys[steps.indexOf(step)],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildVerticalHeader(step),
                        _buildVerticalBody(step),
                      ],
                    ))
                .toList(),
          );
  }

  Widget _buildPanel() {
    return Column(
      children: steps.map<Column>((StepCustom step) {
        const double dividerWidth = 2;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIcon(step),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: iconSize / 2 - dividerWidth / 2),
                  VerticalDivider(
                    width: dividerWidth * iconSize / 2,
                    thickness: dividerWidth,
                    color: widget.seperatorColor ?? _stepColor(step.status),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(step.name),
                          const SizedBox(height: 12),
                          Text(step.description),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Color _stepColor(StatusStep status) {
    if (status == StatusStep.complete) {
      return completeColor;
    } else if (status == StatusStep.inprogress) {
      return inProgressColor;
    } else if (status == StatusStep.upcoming) {
      return upComingColor;
    } else {
      return upComingColor;
    }
  }

  Widget _buildVerticalHeader(StepCustom step) {
    return Row(
      children: <Widget>[
        _buildIcon(step),
        Container(
          margin: const EdgeInsetsDirectional.only(start: 12),
          child: Text(step.name),
        ),
      ],
    );
  }

  Widget _buildVerticalBody(StepCustom step) {
    const kTopMargin = 10.0;
    return Stack(
      children: <Widget>[
        PositionedDirectional(
          start: 0,
          // top: kTopMargin,
          // bottom: _kStepMargin,
          top: 8,
          bottom: 8,
          child: SizedBox(
            width: 28, // ИЗМЕНИТЬ
            child: Center(
              child: SizedBox(
                width: 1,
                child: Container(
                  color: widget.seperatorColor ?? _stepColor(step.status),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.only(
            start: 1.5 * 24 + 28,
            end: 24,
            bottom: 24,
            top: kTopMargin,
          ),
          // child: step.status == StatusStep.fail ? step.failedView : step.view,
          child: Text(step.description),
        ),
      ],
    );
  }

  Widget _buildIcon(StepCustom step) {
    final status = step.status;
    return CircleAvatar(
      radius: iconSize / 2,
      backgroundColor: widget.seperatorColor ?? _stepColor(step.status),
    );

    // switch (status) {
    //   case StatusStep.complete:
    //     return Icon(Icons.check_box, color: completeColor, size: iconSize);

    //   case StatusStep.inprogress:
    //     return Icon(Icons.check_box_outlined,
    //         color: inProgressColor, size: iconSize);

    //   case StatusStep.upcoming:
    //     return Icon(Icons.check_box_outlined,
    //         color: upComingColor, size: iconSize);

    //   case StatusStep.fail:
    //     return Icon(Icons.warning, color: Colors.red, size: iconSize);
    // }
  }
}
