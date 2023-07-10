import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'editable_list_model.dart';
import 'servicies/theme_service_provider.dart';

class EditableListTile extends ConsumerStatefulWidget {
  final EditableListModel model;
  final bool _initIsEditingMode;

  final Function(EditableListModel listModel) onChanged;

  const EditableListTile({super.key, required this.model, required this.onChanged, bool initIsEditingMode = false})
      : _initIsEditingMode = initIsEditingMode,
        super();

  @override
  EditableListTileState createState() => EditableListTileState();
}

class EditableListTileState extends ConsumerState<EditableListTile> {
  late EditableListModel model;

  late bool _isEditingMode;

  late TextEditingController _titleEditingController, _subTitleEditingController;

  @override
  void initState() {
    super.initState();
    model = widget.model;
    _isEditingMode = widget._initIsEditingMode;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingWidget,
      title: titleWidget,
      subtitle: subTitleWidget,
      trailing: tralingButton,
    );
  }

  Widget get leadingWidget {
    return CircleAvatar(backgroundColor: ref.watch(themeServiceProvider).getSecondary(), child: Icon(model.icon));
  }

  Widget get titleWidget {
    if (_isEditingMode) {
      _titleEditingController = TextEditingController(text: model.title);
      return TextField(
        controller: _titleEditingController,
      );
    } else {
      return Text(model.title);
    }
  }

  Widget get subTitleWidget {
    if (_isEditingMode) {
      _subTitleEditingController = TextEditingController(text: model.subTitle);
      return TextField(
        controller: _subTitleEditingController,
      );
    } else {
      return Text(model.subTitle);
    }
  }

  Widget get tralingButton {
    if (_isEditingMode) {
      return IconButton(
        icon: const Icon(Icons.check),
        onPressed: saveChange,
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.edit),
        onPressed: _toggleMode,
      );
    }
  }

  void _toggleMode() {
    setState(() {
      _isEditingMode = !_isEditingMode;
    });
  }

  void saveChange() {
    model.title = _titleEditingController.text;
    model.subTitle = _subTitleEditingController.text;
    _toggleMode();
    widget.onChanged(model);
  }
}
