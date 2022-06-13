package com.example.view1;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import android.widget.ListView;

public class MainActivity extends Activity
{
    // Array of strings...
    GridView simpleList;
    String arlist[] = {"Rakib", "Rakibul", "Rakibul", "Rakibul", "Rakibul", "Rakibul"};

    @Override   protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);      setContentView(R.layout.activity_main);
        simpleList = (GridView)findViewById(R.id.simpleListView);
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this, R.layout.activity_listview, R.id.textView, arlist);
        simpleList.setAdapter(arrayAdapter);
    }
}