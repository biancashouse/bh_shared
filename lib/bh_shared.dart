library bh_shared;

import 'package:bh_shared/src/mq_useful.dart';
import 'package:bh_shared/src/rootcontext_useful.dart';
import 'package:bh_shared/src/system_useful.dart';

import 'bh_shared.dart';

export 'src/base_useful.dart';
export 'src/home_page_provider/home_page_provider.dart';
export 'src/local_storage/local_storage.dart';
export 'src/routing_config_provider/routing_config_provider.dart';
export 'src/widget/blink.dart';
export 'src/widget/color_values.dart';
export 'src/widget/decoration_shape_enum.dart';
export 'src/widget/surround/dotted_decoration.dart';
export 'src/widget/surround/rainbow_surround.dart';
export 'src/widget/widget_helper.dart';

/// this is a global container for the shared APIs
class BaseGlobal with RootContextUseful, MQUseful, SystemUseful, BaseUseful, WidgetHelper, LocalStorage {}
