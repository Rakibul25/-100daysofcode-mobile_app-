package com.example.firebase.option;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.example.firebase.R;

public class Insert extends AppCompatActivity {
    EditText name,id;
    Button insertbutton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_insert);
        name = findViewById(R.id.name);
        id = findViewById(R.id.id);
        insertbutton = findViewById(R.id.btnInsert);

        insertbutton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {

            }

        });

    }
}