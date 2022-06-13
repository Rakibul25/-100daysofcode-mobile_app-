package com.example.view1;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import android.widget.ListView;
import android.view.View;
import android.widget.AdapterView;

public class MainActivity extends Activity
{
    // Array of strings...
    GridView simpleList;
    String arrayofmenuname[] = {
            "My Courses",
            "Notifications",
            "Calender"
    };
    int images[] = {
            R.drawable.ic_baseline_settings_24,
            R.drawable.ic_baseline_home_24,
            R.drawable.ic_baseline_android_24,
    };


    @Override   protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        GridView gridinjava;
        gridinjava = (GridView)findViewById(R.id.simpleListView);
        GridAdapter gridAdaptor = new GridAdapter(MainActivity.this,arrayofmenuname,images);
        gridinjava.setAdapter(gridAdaptor);
    }
}