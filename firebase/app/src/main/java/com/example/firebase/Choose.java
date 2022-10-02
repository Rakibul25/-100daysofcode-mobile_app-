package com.example.firebase;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.example.firebase.option.Insert;
import com.example.firebase.option.Update;

public class Choose extends AppCompatActivity {
    Button btnInsert;
    Button btnDelete;
    Button btnUpdate;
    Button btnDisplay;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_choose);
        btnInsert = findViewById(R.id.btnInsert);
        btnUpdate = findViewById(R.id.btnUpdate);

        btnInsert.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                Intent myIntent = new Intent(view.getContext(), Insert.class);
                startActivity(myIntent);
            }

        });
        btnUpdate.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                Intent myIntent = new Intent(view.getContext(), Update.class);
                startActivity(myIntent);
            }

        });
    }
}