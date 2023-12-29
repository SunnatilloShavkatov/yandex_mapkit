package com.unact.yandexmapkitexample;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    MapKitFactory.setLocale("ru_RU");
    MapKitFactory.setApiKey("01fcd53b-a8c1-4fcd-84dd-f2eafe716b51");
    super.configureFlutterEngine(flutterEngine);
  }
}
