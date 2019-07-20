package cn.gekongfei.flutter_app;

import android.os.Bundle;

import com.baidu.mapapi.map.MapView;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    MapView mapView = new MapView(this);
    ViewRegistrant.registerWith(this, mapView);
  }
}
